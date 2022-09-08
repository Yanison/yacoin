package com.yanison.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroup vo) throws Exception{
		List<CodeGroup> list =dao.selectList(vo);
		return list;
	}
	
	@Override
	public List<CodeGroup> selectcgCgname(CodeGroup vo) throws Exception{
		List<CodeGroup> cgname =dao.selectcgCgname(vo);
		return cgname;
	}
	
	@Override
	public CodeGroup selectOne(CodeGroup vo) throws Exception{
		CodeGroup item = dao.selectOne(vo);
		return item;
	}
	
	@Override
	public int insert(CodeGroup dto) throws Exception{
		int ccg =dao.insert(dto);
		return ccg;
	}
	
	@Override
	public int insertCg(CodeGroup dto) throws Exception{
		int cgname =dao.insertCg(dto);
		return cgname;
	}
	
	@Override
	public int updateCgname(CodeGroup dto) throws Exception{
		int updateCgname = dao.updateCgname(dto);
		return updateCgname;
	}
	
	@Override
	public int deleteByccgname(CodeGroup dto) throws Exception{
		int deleteByccgname = dao.deleteByccgname(dto);
		return deleteByccgname;
	}
}
