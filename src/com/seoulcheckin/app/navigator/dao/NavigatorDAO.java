package com.seoulcheckin.app.navigator.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.navigator.vo.NavigatorVO;
import com.seoulcheckin.app.visa.vo.VisaVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class NavigatorDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public NavigatorDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	/*
	 * 4개의 네비게이터를 입력했을 때 경우의 수 1개 리턴
	 * 대륙 국가.지역 입국목적 체류기간 일치시 해당 네비게이터넘버 리턴
	 */
	
	public int selectNaviNumber(NavigatorVO navigatorVO) {
		return sqlSession.selectOne("Navigator.selectNaviNumber", navigatorVO);
	}
	
	public List<VisaVO> selectVisaNameCon(int navigatorNumber) {
		return sqlSession.selectList("Visa.selectVisaNameCon", navigatorNumber);
	}
	

}
