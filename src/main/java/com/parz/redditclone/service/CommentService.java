package com.parz.redditclone.service;

import com.parz.redditclone.dto.CommentsDto;
import com.parz.redditclone.exceptions.PostNotFoundException;
import com.parz.redditclone.mapper.CommentMapper;
import com.parz.redditclone.model.Comment;
import com.parz.redditclone.model.NotificationEmail;
import com.parz.redditclone.model.Post;
import com.parz.redditclone.model.User;
import com.parz.redditclone.repository.CommentRepository;
import com.parz.redditclone.repository.PostRepository;
import com.parz.redditclone.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

import static java.util.stream.Collectors.toList;

@Service
@AllArgsConstructor
public class CommentService {

    private static String POST_URL = "";
    private final PostRepository postRepository;
    private final UserRepository userRepository;
    private final AuthService authService;
    private final CommentMapper commentMapper;
    private final CommentRepository commentRepository;
    private final MailContentBuilder mailContentBuilder;
    private final MailService mailService;

    public void save(CommentsDto commentsDto) {
        Post post = postRepository.findById(commentsDto.getPostId()).orElseThrow(() -> new PostNotFoundException(commentsDto.getPostId().toString()));
        Comment comment = commentMapper.map(commentsDto, post, authService.getCurrentUser());
        commentRepository.save(comment);

        POST_URL = post.getUrl();

        String message = mailContentBuilder.build(post.getUser().getUsername() + " posted a comment on your post. See at: " + POST_URL);
        sendCommentNotification(message, post.getUser());
    }

    private void sendCommentNotification(String message, User user) {
        mailService.sendMail(new NotificationEmail(user.getUsername() + " commented on your post", user.getEmail(), message));
    }

    public List<CommentsDto> getAllCommentsForPost(Long postId) {
        Post post = postRepository.findById(postId).orElseThrow(() -> new PostNotFoundException(postId.toString()));
        return commentRepository.findByPost(post).stream().map(commentMapper::mapToDto).collect(toList());
    }

    public List<CommentsDto> getAllCommentsByUser(String username) {
        User user = userRepository.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException(username));
        System.out.print("USER::" + user);
        return commentRepository.findAllByUser(user).stream().map(commentMapper::mapToDto).collect(toList());
    }
}
