package com.QixunQiu.service;

import com.QixunQiu.mapper.DailyMapper;
import com.QixunQiu.pojo.Daily;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class DailyService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Daily> selectDaily(String AssessmentID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        DailyMapper dailyMapper = sqlSession.getMapper(DailyMapper.class);
        List<Daily> dailyList=dailyMapper.select(AssessmentID);
        sqlSession.close();
        return dailyList;
    }

    public void addDaily(Daily daily) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        DailyMapper dailyMapper = sqlSession.getMapper(DailyMapper.class);
        dailyMapper.add(daily);
        sqlSession.commit();
        sqlSession.close();
    }
}
