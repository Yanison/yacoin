package com.yanison.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value="codeGroupList")
	public String codeGroupList (Model model) throws Exception {
		
		List<CodeGroup> list = service.selectDeptList();
		CodeGroup listDeptOne = service.selectDeptOne();
		model.addAttribute("list", list);
		model.addAttribute("listDeptOne", listDeptOne);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
}
