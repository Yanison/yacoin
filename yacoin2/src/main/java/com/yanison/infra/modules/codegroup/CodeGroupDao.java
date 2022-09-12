package com.yanison.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource (name = "sqlSession")
	private SqlSession sqlSession;
	
	public static String namespace = "com.yanison.infra.modules.codegroup.CodeGroupMapper";
	public List<CodeGroup> selectDeptList(){
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public CodeGroup selectDeptOne(){
		return sqlSession.selectOne(namespace+".selectDeptOne", "");
	}
	
}
