package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Communication;
import com.QixunQiu.pojo.Social;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface SocialMapper {
    @Select("select * from tb_social where AssessmentID = #{AssessmentID} ")
    List<Social> select(@Param("AssessmentID") String AssessmentID);

    void addSocial(Social social);
}
