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
	public CodeGroup selectEmpOne(CodeGroup vo) throws Exception{
		return dao.selectEmpOne(vo);
	}
	
	@Override
	public CodeGroup selectDeptOne(CodeGroup dto) throws Exception{
		return dao.selectDeptOne(dto);
	}
	@Override
	public List<CodeGroup> selectAllEmp(CodeGroup vo) throws Exception{
		return dao.selectAllEmp(vo);
	}
	
	@Override
	public int selectUdpt (CodeGroup dto) throws Exception{
		return dao.selectUdpt(dto);
	}
	
	@Override
	public int insertDept (CodeGroup dto) throws Exception{
		return dao.insertDept(dto);
	}
}
