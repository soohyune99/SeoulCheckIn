package com.seoulcheckin.app.board.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.board.vo.EBoardDTO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class EBoardDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public EBoardDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public int myBoardCount(int memberNumber){
		return sqlSession.selectOne("Board.myBoardCount", memberNumber);
	}
	
	public List<EBoardDTO> selectAdmin(HashMap<String, Integer> pageMap){
		return sqlSession.selectList("EBoard.selectAdmin", pageMap);
	}
	
	public int selectCount() {
		return sqlSession.selectOne("EBoard.selectCount");
	}
	
	public void delete(int boardNumber) {
		sqlSession.delete("EBoard.delete", boardNumber);
	}
}
