package com.parz.redditclone.controller;

import com.parz.redditclone.dto.VoteDto;
import com.parz.redditclone.service.VoteService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(value = "/api/votes/")
@AllArgsConstructor
public class VoteController {

    private final VoteService voteService;

    @PostMapping
    public ResponseEntity<Object> vote(@RequestBody VoteDto voteDto)  {
        voteService.vote(voteDto);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
