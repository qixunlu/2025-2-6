package com.QixunQiu.mapper;

import com.QixunQiu.pojo.Older;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OlderMapper {
    @Select("select * from tb_older where userID = #{userID} ")
    List<Older> select(@Param("userID") String userID);

    @Select("select * from tb_older where userID = #{userID} ")
    Older selectOlder(@Param("userID") String userID);

    void add(Older older);

}
