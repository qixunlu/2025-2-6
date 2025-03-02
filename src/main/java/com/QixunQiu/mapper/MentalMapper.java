package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Daily;
import com.QixunQiu.pojo.Mental;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface MentalMapper {
    @Select("select * from tb_mental where AssessmentID = #{AssessmentID} ")
    List<Mental> select(@Param("AssessmentID") String AssessmentID);

    void addMental(Mental mental);
}
