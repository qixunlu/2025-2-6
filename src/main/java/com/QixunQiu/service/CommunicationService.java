package com.QixunQiu.service;

import com.QixunQiu.mapper.CommunicationMapper;
import com.QixunQiu.pojo.Communication;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class CommunicationService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Communication> select(String AssessmentID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        CommunicationMapper communicationMapper = sqlSession.getMapper(CommunicationMapper.class);
        List<Communication> communicationList=communicationMapper.select(AssessmentID);
        sqlSession.close();
        return communicationList;
    }

    public void add(Communication communication) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        CommunicationMapper communicationMapper = sqlSession.getMapper(CommunicationMapper.class);
        communicationMapper.addCommunication(communication);
        sqlSession.commit();
        sqlSession.close();
    }
}
