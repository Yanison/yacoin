package com.yanison.infra.modules.ezenboard;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class EzenBoardDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace="com.yanison.infra.modules.ezenboard.EzenBoardMapper";
	
	public List<EzenBoardGroup> selectList(EzenBoardGroup vo){
		return sqlSession.selectList(namespace + ".selectList",vo);
	}
	
	public int selectOneCount (EzenBoardGroup vo) {
		return sqlSession.selectOne(namespace +".selectOneCount", vo);
	}

}
