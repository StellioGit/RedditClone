package com.parz.redditclone.repository;

import java.util.List;

import com.parz.redditclone.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.parz.redditclone.model.Comment;
import com.parz.redditclone.model.Post;

@Repository
public interface CommentRepository extends JpaRepository<Comment, Long> {

    List<Comment> findByPost(Post post);

    List<Comment> findAllByUser(User user);
}
