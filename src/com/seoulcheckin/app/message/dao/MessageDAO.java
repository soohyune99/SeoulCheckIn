package com.seoulcheckin.app.message.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.member.vo.MemberDTO;
import com.seoulcheckin.app.member.vo.MemberVO;
import com.seoulcheckin.app.message.vo.MessageDTO;
import com.seoulcheckin.app.message.vo.MessageVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class MessageDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;

	public MessageDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}

	public void insert(MessageVO messageVO) {
		sqlSession.insert("Message.insert", messageVO);
	}

	public List<MessageDTO> selectAll(int messageSendEmail) {
		return sqlSession.selectList("Message.selectAll", messageSendEmail);
	}

	public int checkId(String memberEmail) {
		return sqlSession.selectOne("Member.checkId", memberEmail);
	}

	public void join(MemberVO memberVO) {
		sqlSession.insert("Member.join", memberVO);
	}

	public int login(MemberVO memberVO) {
		return sqlSession.selectOne("Member.login", memberVO);
	}

	public int loginOauth(MemberVO memberVO) {
		return sqlSession.selectOne("Member.loginOauth", memberVO);
	}

	// Mypage start

	public void update(MemberVO memberVO) {
		sqlSession.update("Member.update", memberVO);
	}

	public List<MemberVO> info(int memberNumber) {
		return sqlSession.selectList("Member.info", memberNumber);
	}

	public void delete(int memberNumber) {
		sqlSession.delete("Member.delete", memberNumber);
	}


	public int selectMessageCount(int memberNumber) {
		return sqlSession.selectOne("Message.selectMessageCount", memberNumber);
	}


	public List<MemberDTO> myMessage(Map<String, Integer> pageMap) {
		return sqlSession.selectList("Member.myMessage", pageMap);
	}
	// Mypage end
	

}