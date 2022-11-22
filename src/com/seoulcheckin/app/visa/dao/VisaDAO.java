package com.seoulcheckin.app.visa.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.navigator.vo.NavigatorVO;
import com.seoulcheckin.app.visa.vo.VisaVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;


public class VisaDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public VisaDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//
	public List<VisaVO> select(NavigatorVO navigatorVO) {
		return sqlSession.selectList("Visa.select", navigatorVO);
	}
}
