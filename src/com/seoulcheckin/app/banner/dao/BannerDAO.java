package com.seoulcheckin.app.banner.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.banner.vo.BannerVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class BannerDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public List<BannerVO> selectAll() {
		return sqlSession.selectList("Banner.selectAll");
	}
	
	public List<BannerVO> selectList(){
		return sqlSession.selectList("Banner.selectList");
	}
	
	public void delete(int bannerNumber) {
		sqlSession.delete("Banner.delete", bannerNumber);
	}
	
	public void insert(String bannerName) {
		sqlSession.insert("Banner.insert", bannerName);
	}
}