package com.parz.redditclone.repository;

import com.parz.redditclone.model.Test;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface TestRepository extends JpaRepository<Test, Long> {

    Optional<Test> findByText(String text);

}
