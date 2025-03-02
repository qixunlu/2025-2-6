package com.QixunQiu.service;

import com.QixunQiu.mapper.MentalMapper;
import com.QixunQiu.pojo.Mental;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class MentalService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Mental> selectAllMental(String AssessmentID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        MentalMapper mentalMapper = sqlSession.getMapper(MentalMapper.class);
        List<Mental> mentals = mentalMapper.select(AssessmentID);
        sqlSession.commit();
        sqlSession.close();
        return mentals;
    }

    public void add(Mental mental) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        MentalMapper mentalMapper = sqlSession.getMapper(MentalMapper.class);
        mentalMapper.addMental(mental);
        sqlSession.commit();
        sqlSession.close();
    }
}
