package com.seoulcheckin.app.map.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.map.vo.MapVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class MapDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public MapDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	
	public List<MapVO> selectAll(String mapClassification){
		return sqlSession.selectList("Map.selectAll", mapClassification);
	}
	
	public List<MapVO> selectAll(MapVO mapVO){
		return sqlSession.selectList("Map.selectAll", mapVO);
	}
	
	public List<MapVO> selectOne(int mapNumber){
		return sqlSession.selectList("Map.selectOne",mapNumber);
	}
	
	public List<MapVO> selectTotalMap(){
		return sqlSession.selectList("Map.selectTotalMap");
	}
	
	public int selectCount() {
		return sqlSession.selectOne("Map.selectCount");
	}
	
	public List<MapVO> selectPage(HashMap<String, Integer> pageMap){
		return sqlSession.selectList("Map.selectPage", pageMap);
	}
	
	public void delete(int mapNumber) {
		sqlSession.delete("Map.delete", mapNumber);
	}
	
	public void insert(MapVO mapVO) {
		sqlSession.insert("Map.insert", mapVO);
	}
}