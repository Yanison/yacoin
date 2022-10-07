package com.yanison.infra.modules.boardservice;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class BoardDao {
	
	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.yanison.infra.modules.boardservice.BoardMapper";
	
	public List<BoardVo>getList(BoardVo searchVO){
		return sqlSession.selectList(namespace + ".getList", searchVO);
	}
	public int getListCnt(BoardVo searchVO) {
		return sqlSession.selectOne(namespace + ".getListCnt", searchVO);
	}
}
