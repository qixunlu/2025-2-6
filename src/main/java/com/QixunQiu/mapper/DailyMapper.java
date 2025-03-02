package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Daily;
import com.QixunQiu.pojo.Older;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface DailyMapper {
    @Select("select * from tb_daily where AssessmentID = #{AssessmentID} ")
    List<Daily> select(@Param("AssessmentID") String AssessmentID);

    void add(Daily daily);
}
