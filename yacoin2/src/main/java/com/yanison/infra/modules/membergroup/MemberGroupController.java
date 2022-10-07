package com.yanison.infra.modules.membergroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/memberGroup/")
public class MemberGroupController {
	
	@Autowired
	MemberGroupServiceImpl service;
	
	@RequestMapping(value="/memberGroupList")
	public String memberGroupList(@ModelAttribute ("vo") MemberGroup vo, Model model) throws Exception {		
		
		List<MemberGroup> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
//		model.addAttribute("vo", vo);
		
		return "infra/member/xdmin/memberGroupList";
	}
	
	
	
	
	
}
