package com.seoulcheckin.app.school.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.seoulcheckin.app.school.vo.SchoolDTO;
import com.seoulcheckin.app.school.vo.SchoolVO;
import com.seoulcheckin.mybatis.config.MyBatisConfig;

public class SchoolDAO {
   SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
   SqlSession sqlSession;
   
   public SchoolDAO() {
      sqlSession = sqlSessionFactory.openSession(true);
   }
   
   public List<SchoolVO> selectAll(){
      return sqlSession.selectList("School.selectAll");
   }
   
   public List<SchoolVO> selectPage(HashMap<String, Integer> pageMap){
      return sqlSession.selectList("School.selectPage", pageMap);
   }
   
   public int selectCount() {
      return sqlSession.selectOne("School.selectCount");
   }
   
   public SchoolVO selectDetail(int schoolNumber) {
      return sqlSession.selectOne("School.selectDetail", schoolNumber);
   }
   
   public void insert(SchoolDTO schoolDTO) {
      sqlSession.insert("School.insert", schoolDTO);
   }
   
   public void insert(SchoolVO schoolVO) {
      sqlSession.insert("School.insert", schoolVO);
   }
   
   public void update(SchoolVO schoolVO) {
      sqlSession.update("School.update", schoolVO);
   }
   
   public void deleteProgram(int schoolNumber) {
      sqlSession.delete("School.deleteProgram", schoolNumber);
   }
}