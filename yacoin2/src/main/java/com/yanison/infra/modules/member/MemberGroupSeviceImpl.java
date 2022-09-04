package com.yanison.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class MemberGroupSeviceImpl implements MemberGroupService {
	@Autowired
	MemberGroupDao dao;
	
	@Override
	public List<MemberGroup> selectList() throws Exception{
			return dao.selectList();
	}
}
