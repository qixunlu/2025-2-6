package com.QixunQiu.mapper;

import com.QixunQiu.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {

    @Select("select * from tb_user where UserID = #{UserID} and Password = #{Password}")
    User select(@Param("UserID") String UserID, @Param("Password")  String Password);

    void addUser(User user);
}
