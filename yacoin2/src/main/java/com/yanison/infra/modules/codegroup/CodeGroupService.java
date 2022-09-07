package com.yanison.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectList(CodeGroup vo) throws Exception;
	
	public List<CodeGroup> selectcgCgname(CodeGroup vo) throws Exception;
	
	public int insert(CodeGroup dto) throws Exception;
	
	public int insertCg(CodeGroup dto) throws Exception;
	
	public int updateCgname(CodeGroup dto) throws Exception;
}
