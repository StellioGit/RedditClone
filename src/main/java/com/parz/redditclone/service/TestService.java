package com.parz.redditclone.service;

import com.parz.redditclone.dto.TestDto;
import com.parz.redditclone.exceptions.SpringRedditException;
import com.parz.redditclone.mapper.TestMapper;
import com.parz.redditclone.model.Test;
import com.parz.redditclone.repository.TestRepository;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import static java.util.stream.Collectors.toList;

@Service
@AllArgsConstructor
@Slf4j
public class TestService {

    private final TestRepository testRepository;
    private final TestMapper testMapper;

    @Transactional
    public TestDto save(TestDto testDto) {
        Test test = testRepository.save(testMapper.mapDtoToTest(testDto));
        testDto.setId(test.getId());
        return testDto;
    }

    @Transactional(readOnly = true)
    public List<TestDto> getAll() {
        return testRepository.findAll().stream().map(testMapper::mapTestToDto).collect(toList());
    }

    public TestDto getText(Long id) {
        Test test = testRepository.findById(id).orElseThrow(() -> new SpringRedditException("No Entry Found with ID: " + id));
        return testMapper.mapTestToDto(test);
    }
}