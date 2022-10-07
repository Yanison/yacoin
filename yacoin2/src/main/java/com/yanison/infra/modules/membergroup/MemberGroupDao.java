package com.yanison.infra.modules.membergroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberGroupDao {
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.yanison.infra.modules.membergroup.MemberGroupMapper";
	
	public List<MemberGroup> selectMemberList(MemberGroup vo){
		return sqlSession.selectList(namespace + ".selectMemberList", vo);
	}
}
