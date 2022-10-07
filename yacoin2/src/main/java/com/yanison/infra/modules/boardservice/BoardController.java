package com.yanison.infra.modules.boardservice;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.yanison.infra.modules.pagination.Pagination;

@Controller
@RequestMapping(value="/board/")
public class BoardController {
	
	@Autowired
	BoardServiceImpl boardService;
	/*
	 * step_1
	 * pagination에서 만들었던 Pagination 과 PageVo를 가지고 페이징 작업을 하도록 한다.
	 * 
	 * pagination의 현제페이지번호(currentPageNo)에 pageindex값을 넣어준다.
	 * 
	 * pagination 의 한 페이지당 게시되는 게시글 수는
	 * 	-> (recordCountPage)에 pageUnit의 디폴트값 10을 넣어준다. 
	 * 
	 * pagination의 페이지 리스트에 게시되는 페이지 수(pageSize)는
	 *	-> pageSize의 디폴트 값 10을 넣어준다.
	 *
	 * 이렇게 pagination의 변수들에게 값을 넣어준 다음, firstPageNoOnPageList 계산을 한 다음, firstIndex에 넣어준다.
	 *
	 * searchVO(sql Value)의 첫 인덱스 값(firstIndex)은 계산된 firstPageNoOnPageList의 값을 넣어준다. 
	 * 
	 * searchVO (sql Value)한 페이지당 게시되는 게시물 수 (recordCountPerPage)는 recordCountPerPage 값을 넣어준다. 
	 * 
	 * 그리고 getListCnt 를 통해 게시판 총 갯수를 구해주고 
	 * totalREcordCount란 변수에 수를 넣어준다.
	 * 
	 * step_3
	 * 그리고 pagination에서 끝나는 데이터와 시작하는 데이터, 이전버튼, 다음버튼을 전부 계산한 뒤에 PageVO 값들로 넣어준다. 
	 * 
	 * 그리고 아래 model.addattribute로 빼주면 된다. 
	 * 게시판 현황 카운트로 사용될 totalPageCnt는 게시글 전체 값에서 한 페이지의 글 갯수를 나눠준 값을 해준다. 
	 */
	
	@RequestMapping(value="/board")
	public String board( @ModelAttribute("searchVO")
							BoardVo searchVO, 
						HttpServletRequest request,
						Model model) throws Exception 
	{
		
		
		Map<String, ?> inputFlashMap = RequestContextUtils.getInputFlashMap(request);
	    if(null != inputFlashMap) {
	        
	        model.addAttribute("msg",(String) inputFlashMap.get("msg"));
	        
	    }
		
		
		//페이징[s]
		
		//step_1
		 Pagination pagination = new Pagination();
	    pagination.setCurrentPageNo(searchVO.getPageIndex());
	    pagination.setRecordCountPerPage(searchVO.getPageUnit());
	    pagination.setPageSize(searchVO.getPageSize());
	    
	    searchVO.setFirstIndex(pagination.getFirstRecordIndex());
	    searchVO.setRecordCountPerPage(pagination.getRecordCountPerPage());
	    
	    List<BoardVo> boardList = boardService.getList(searchVO);
	    int totCnt = boardService.getListCnt(searchVO);
	    
	    pagination.setTotalRecordCount(totCnt);
	    
	    searchVO.setEndDate(pagination.getLastPageNoOnPageList());
	    searchVO.setStartDate(pagination.getFirstPageNoOnPageList());
	    searchVO.setPrev(pagination.getXprev());
	    searchVO.setNext(pagination.getXnext());
	    
	    model.addAttribute("boardList",boardList);
	    model.addAttribute("totCnt",totCnt);
	    model.addAttribute("totalPageCnt",(int)Math.ceil(totCnt / (double)searchVO.getPageUnit()));
	    model.addAttribute("pagination",pagination);
		//페이징[e]
	    
//	    searchVO.setQustr();
		
		return "infra/board/board";
	}
	
	
}
