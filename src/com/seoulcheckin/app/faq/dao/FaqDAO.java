package com.seoulcheckin.app.faq.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.faq.vo.FaqVO;
import com.seoulcheckin.app.notice.vo.NoticeVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class FaqDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public FaqDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//	외국인 전체 title 받아오는 메소드 
	public List<FaqVO> selectForTitle(){
		return sqlSession.selectList("Faq.selectForTitle");
	}

	//	내국인 전체 title 받아오는 메소드 
	public List<FaqVO> selectLocTitle(){
		return sqlSession.selectList("Faq.selectLocTitle");
	}
	
	// 외국인 제목 클릭시 상세페이지
	public FaqVO selectForDetail(int faqNumber) {
		return sqlSession.selectOne("Faq.selectForDetail", faqNumber);
	}

	// 내국인 제목 클릭시 상세페이지
	public FaqVO selectLocDetail(int faqNumber) {
		return sqlSession.selectOne("Faq.selectLocDetail", faqNumber);
	}
	
	// 내국인 검색결과
	public List<FaqVO> locSearchSubmitResult(String searchContent) {
		return sqlSession.selectList("Faq.locSearchSubmitResult", searchContent);
	}

	// 외국인 검색결과
	public List<FaqVO> forSearchSubmitResult(String searchContent) {
		return sqlSession.selectList("Faq.forSearchSubmitResult", searchContent);
	}
	
	
}
