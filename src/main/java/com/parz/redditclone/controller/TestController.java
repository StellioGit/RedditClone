package com.parz.redditclone.controller;

import com.parz.redditclone.dto.TestDto;
import com.parz.redditclone.service.TestService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
//@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping(value = "/api/test")
@AllArgsConstructor
@Slf4j
public class TestController {

    private final TestService testService;

    @PostMapping
    public ResponseEntity<TestDto> createTest(@RequestBody TestDto testDto) {
        return ResponseEntity.status(HttpStatus.OK).body(testService.save(testDto));
    }

    @GetMapping
    public ResponseEntity<List<TestDto>> getAllTest() {
        return ResponseEntity.status(HttpStatus.OK).body(testService.getAll());
    }

    @GetMapping(value = "/{id}")
    public ResponseEntity<TestDto> getText(@PathVariable Long id) {
        return ResponseEntity.status(HttpStatus.OK).body(testService.getText(id));
    }
}