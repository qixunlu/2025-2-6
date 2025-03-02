package com.QixunQiu.service;

import com.QixunQiu.mapper.OlderMapper;
import com.QixunQiu.mapper.PersonMapper;
import com.QixunQiu.pojo.Older;
import com.QixunQiu.pojo.Person;
import com.QixunQiu.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class PersonService {
    SqlSessionFactory sqlSessionFactory = SqlSessionFactoryUtils.getSqlSessionFactory();
    public List<Person> selectPerson(String userID) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        PersonMapper personMapper = sqlSession.getMapper(PersonMapper.class);
        List<Person> Persons=personMapper.select(userID);
        sqlSession.close();
        return Persons;
    }

    public void addPerson(Person person) {
        SqlSession sqlSession = sqlSessionFactory.openSession();
        PersonMapper personMapper = sqlSession.getMapper(PersonMapper.class);
        personMapper.addPerson(person);
        sqlSession.commit();
        sqlSession.close();
    }
}
