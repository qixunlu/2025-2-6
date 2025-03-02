package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Communication;
import com.QixunQiu.pojo.Daily;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommunicationMapper {
    @Select("select * from tb_communication where AssessmentID = #{AssessmentID} ")
    List<Communication> select(@Param("AssessmentID") String AssessmentID);

    void addCommunication(Communication communication);

}
