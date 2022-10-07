package com.yanison.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;

	@RequestMapping(value="codeGroupList")
	public String codeGroupList (Model model) throws Exception {
		
		List<CodeGroup> list = service.selectDeptList();
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value="codeGroupMod")
	public String codeGroupOne (@ModelAttribute ("vo") CodeGroup vo,Model model, CodeGroup dto) throws Exception {
		
		CodeGroup listDeptOne = service.selectDeptOne(dto);
		model.addAttribute("listDeptOne", listDeptOne);
		System.out.println("listDeptOne : " + listDeptOne);
		List<CodeGroup> list = service.selectDeptList();
		model.addAttribute("list", list);
		
		List<CodeGroup> listEmp = service.selectAllEmp(vo);
		model.addAttribute("listEmp", listEmp);
		
		
		return "infra/codegroup/xdmin/codeGroupMod";
	}
	
	@RequestMapping(value="codeUpdtMod")
	public String updtMod (Model model, CodeGroup dto) throws Exception {

		int selectUdpt = service.selectUdpt(dto);
		System.out.println("@@@@@@@@"+"selectUdpt" + selectUdpt + "deptId = "+dto.getDeptid());
		
		
		return "infra/codegroup/xdmin/codeGroupMod";
	}
	
	
	
	
	@RequestMapping(value="codeGroupMemeberMod")
	public String codeGroupMemeberMod (Model model,@ModelAttribute ("vo") CodeGroup vo) throws Exception {
		
		CodeGroup selectEmpOne = service.selectEmpOne(vo);
		model.addAttribute("selectEmpOne", selectEmpOne);
		
		
		return "infra/codegroup/xdmin/codeGroupMemeberMod";
	}
	
	@RequestMapping(value="codeGroupCreat")
	public String codeGroupCreat (Model model, CodeGroup dto) throws Exception {
		
		int insertDept = service.insertDept(dto);
		System.out.println("@@@@"+"insertDept" + insertDept);
			
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	
}
