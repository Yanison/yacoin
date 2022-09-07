package com.yanison.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	//	=====select======
	//	=================
	private static String namespace = "com.yanison.infra.modules.codegroup.CodeGroupMapper";
	public List<CodeGroup> selectList(CodeGroup vo){ 
		return sqlSession.selectList(namespace + ".selectList", vo); 
	}
	
	private static String namespaceCgname = "com.yanison.infra.modules.codegroup.CodeGroupMapper";
	public List<CodeGroup> selectcgCgname(CodeGroup vo){ 
		return sqlSession.selectList(namespaceCgname + ".selectcgCgname", vo); 
	}
	
	//	=====insert======
	//	=================
	public int insert(CodeGroup dto) {
		int result = sqlSession.insert(namespace + ".insert", dto);
		System.out.println("dao result:" + result );
		return result;
	}
	
	public int insertCg(CodeGroup dto) {
		int resultCg = sqlSession.insert(namespace + ".insertCg", dto);
		System.out.println("dao result: " + resultCg );
		return resultCg;
	}
	
	public int updateCgname(CodeGroup dto) {
		int updateCgname = sqlSession.update(namespace + ".updateCgname", dto);
		System.out.println("dao result:" + updateCgname );
		return updateCgname;
	}
	
}
