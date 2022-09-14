package com.yanison.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	//select
	public List<CodeGroup> selectDeptList() throws Exception;
	public List<CodeGroup> selectAllEmp(CodeGroup dto) throws Exception;
	
	
	public CodeGroup selectDeptOne(CodeGroup dto) throws Exception;
	//update
	public int selectUdpt (CodeGroup dto) throws Exception;
	public int insertDept (CodeGroup dto) throws Exception;
}
