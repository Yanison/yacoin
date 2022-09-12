package com.yanison.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectDeptList() throws Exception{
		return dao.selectDeptList();
	}
	
	@Override
	public CodeGroup selectDeptOne() throws Exception{
		return dao.selectDeptOne();
	}
}
