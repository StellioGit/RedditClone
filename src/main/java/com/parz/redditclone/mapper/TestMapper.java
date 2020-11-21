package com.parz.redditclone.mapper;

import com.parz.redditclone.dto.TestDto;
import com.parz.redditclone.model.Test;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface TestMapper {

    TestDto mapTestToDto(Test test);

    Test mapDtoToTest(TestDto testDto);

}
