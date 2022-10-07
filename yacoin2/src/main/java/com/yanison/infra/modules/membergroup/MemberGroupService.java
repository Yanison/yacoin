package com.yanison.infra.modules.membergroup;

import java.util.List;

public interface MemberGroupService {
	public List<MemberGroup> selectMemberList(MemberGroup vo) throws Exception;
}
