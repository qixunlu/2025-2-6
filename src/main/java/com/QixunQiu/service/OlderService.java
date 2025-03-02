package com.QixunQiu.service;

import com.QixunQiu.mapper.OlderMapper;
import com.QixunQiu.pojo.Older;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class OlderService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Older> selectOlder(String userID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        OlderMapper olderMapper = sqlSession.getMapper(OlderMapper.class);
        List<Older> olders=olderMapper.select(userID);
        sqlSession.close();
        return olders;
    }

    public void addOlder(Older older) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        OlderMapper olderMapper = sqlSession.getMapper(OlderMapper.class);
        olderMapper.add(older);
        sqlSession.commit();
        sqlSession.close();
    }

    public Older selectOlderById(String userID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        OlderMapper olderMapper = sqlSession.getMapper(OlderMapper.class);
        Older older=olderMapper.selectOlder(userID);
        sqlSession.close();
        return older;
    }
}
