package com.yanison.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@RequestMapping(value="/member/")
public class MemberGroupController {
	@Autowired
	MemberGroupSeviceImpl service;
	
	@RequestMapping(value="MemberGroup")
	public String codeGroupList(Model model) throws Exception{
		
		List<MemberGroup> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/main";
	}

}
