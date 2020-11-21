package com.parz.redditclone.service;

import com.parz.redditclone.dto.VoteDto;
import com.parz.redditclone.exceptions.PostNotFoundException;
import com.parz.redditclone.exceptions.SpringRedditException;
import com.parz.redditclone.model.Post;
import com.parz.redditclone.model.Vote;
import com.parz.redditclone.model.VoteType;
import com.parz.redditclone.repository.PostRepository;
import com.parz.redditclone.repository.VoteRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@AllArgsConstructor
public class VoteService {

    private final PostRepository postRepository;
    private final VoteRepository voteRepository;
    private final AuthService authService;

    @Transactional
    public void vote(VoteDto voteDto) {

        Post post = postRepository.findById(voteDto.getPostId()).orElseThrow(() -> new PostNotFoundException("Post not found with ID: " + voteDto.getPostId()));
        Optional<Vote> voteByPostAndUser = voteRepository.findTopByPostAndUserOrderByVoteIdDesc(post, authService.getCurrentUser());

        if (voteByPostAndUser.isPresent() && voteByPostAndUser.get().getVoteType().equals(voteDto.getVoteType()))   {
            throw new SpringRedditException("You have already " + voteDto.getVoteType() + "'d this post");
        }

        if (VoteType.UPVOTE.equals(voteDto.getVoteType()))  {
            post.setVoteCount(post.getVoteCount() + 1);
        }   else    {
            post.setVoteCount(post.getVoteCount() - 1);
        }

        voteRepository.save(mapToVote(voteDto, post));
        postRepository.save(post);

    }

    private Vote mapToVote(VoteDto voteDto, Post post) {
        return Vote.builder().voteType(voteDto.getVoteType()).post(post).user(authService.getCurrentUser()).build();
    }
}
