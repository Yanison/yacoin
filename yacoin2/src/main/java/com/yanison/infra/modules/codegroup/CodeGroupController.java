package com.yanison.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value="/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value="codeGroupList")
	public String codeGroupList(Model model,CodeGroup vo, CodeGroup dto) throws Exception{
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		List<CodeGroup> cgname = service.selectcgCgname(vo);
		model.addAttribute("cgname", cgname);
		int deleteByccgname = service.deleteByccgname(dto);
		System.out.println("deleted OBJ : " + deleteByccgname);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value="codeGroupListDlt")
	public String codeGroupListDlt
			(CodeGroup dto, @RequestParam("checkedLegnth") 
							int checkedLegnth
			) throws Exception
		{
		for(int i = 0; i < checkedLegnth; i++) {
			int deleteByccgname = service.deleteByccgname(dto);
			System.out.println("deleted OBJ : " + deleteByccgname);
		}
		return "redirect:codeGroupList";
	}
	
	
	
	@RequestMapping(value="codeGroupForm")
	public String codeGroupForm(Model model,CodeGroup vo) throws Exception{
		
		List<CodeGroup> cgname = service.selectcgCgname(vo);
		model.addAttribute("cgname", cgname);
		
		CodeGroup item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value="codeGroupInst")
	public String codeGroupInst(Model model,CodeGroup dto) throws Exception{
		
		int result = service.insert(dto);
		System.out.println("controller result" + result);
		
		return "redirect:codeGroupList";
	}
	
	@RequestMapping(value="codeGroupInstCg")
	public String codeGroupInstCg(Model model,CodeGroup dto) throws Exception{
		
		int resultCg = service.insertCg(dto);
		System.out.println("controller result" + resultCg);
		
		return "redirect:codeGroupList";
	}
	
	//update
	@RequestMapping(value="codeGroupUpdt")
	public String codeGroupUpdt(Model model,CodeGroup dto) throws Exception{
		int updateCgname = service.updateCgname(dto);
		System.out.println("controller result" + updateCgname);
		
		return "redirect:codeGroupList";
	}
}
