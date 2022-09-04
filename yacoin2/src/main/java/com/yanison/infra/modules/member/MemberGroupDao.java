package com.yanison.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberGroupDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.yanison.infra.modules.member.MemberGroupMapper";
	
	public List<MemberGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
}
