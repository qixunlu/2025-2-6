package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.Person;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface PersonMapper {
    @Select("select * from tb_person where userID = #{userID} ")
    List<Person> select(@Param("userID") String userID);

    void addPerson(Person person);
}
