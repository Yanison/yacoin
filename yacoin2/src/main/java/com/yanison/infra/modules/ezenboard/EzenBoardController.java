package com.yanison.infra.modules.ezenboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/ezenGroup/")
public class EzenBoardController {
	
	
	@Autowired
	EzenBoardServiceImpl service;
	
	@RequestMapping(value="ezenBoard")
	public String ezenBoard (@ModelAttribute ("vo") EzenBoardGroup vo, Model model) throws Exception {
		
		System.out.println("@@@@@@@@@@@@vo가 넘어오나? :" + vo.getThisPage());
		System.out.println("@@@@@ vo.getStartRnumForMysql() :"+vo.getStartRnumForMysql());
		System.out.println("@@@@@ vo.getTotalPages()"+ vo.getTotalPages());
		
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<EzenBoardGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
//		int selectOneCount = service.selectOneCount(vo);
		
//		vo.setParamsPaging(service.selectOneCount(vo));
		
		
		System.out.println("@@@@@@" + "selectOneCount = " + service.selectOneCount(vo));
		
		return "infra/board/ezenBoard";
	}

}
