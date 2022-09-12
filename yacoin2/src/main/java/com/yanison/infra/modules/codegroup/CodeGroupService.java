package com.yanison.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	public List<CodeGroup> selectDeptList() throws Exception;
	public CodeGroup selectDeptOne() throws Exception;
	
}
