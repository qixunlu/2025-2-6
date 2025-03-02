package com.QixunQiu.service;

import com.QixunQiu.mapper.SocialMapper;
import com.QixunQiu.pojo.Social;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class SocialService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Social> selectSocial(String AssessmentID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        SocialMapper socialMapper = sqlSession.getMapper(SocialMapper.class);
        List<Social> socialList=socialMapper.select(AssessmentID);
        sqlSession.close();
        return socialList;
    }

    public void add(Social social) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        SocialMapper socialMapper = sqlSession.getMapper(SocialMapper.class);
        socialMapper.addSocial(social);
        sqlSession.commit();
        sqlSession.close();
    }
}