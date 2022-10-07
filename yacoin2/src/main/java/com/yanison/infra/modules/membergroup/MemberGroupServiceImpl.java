package com.yanison.infra.modules.membergroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberGroupServiceImpl implements MemberGroupService {
	@Autowired
	MemberGroupDao dao;
	
	@Override
	public List<MemberGroup> selectMemberList(MemberGroup vo) throws Exception{
		return dao.selectMemberList(vo);
	}
}
