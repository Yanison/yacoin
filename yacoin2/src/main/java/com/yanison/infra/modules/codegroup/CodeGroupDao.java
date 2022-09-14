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
		return sqlSession.selectList(namespace + ".selectDeptList", "");
	}
	public List<CodeGroup> selectAllEmp(CodeGroup dto){
		return sqlSession.selectList(namespace + ".selectAllEmp", dto);
	}
	public CodeGroup selectDeptOne(CodeGroup dto){
		return sqlSession.selectOne(namespace+".selectDeptOne", dto);
	}
	
	public int insertDept(CodeGroup dto) {
		return sqlSession.insert(namespace + ".insertDept", dto);
	}
	
	public int selectUdpt(CodeGroup dto) {
		return sqlSession.update(namespace + ".selectUdpt", dto);
	}
	
}
