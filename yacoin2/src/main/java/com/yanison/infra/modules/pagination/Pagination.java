package com.yanison.infra.modules.pagination;

public class Pagination {
	//1.페이지네이션 로직을 담당할 변수 생성
	private int currentPageNo; 			// 현재 페이지 번호
	private int recordCountPerPage; 	// 한 페이지당 게시되는 게시물 수
	private int pageSize; 				// 페이지 리스트에 게시되는 페이지 수
	private int totalRecordCount; 		// 전체 게시물 
	private int realEnd; 				// 페이징 마지막 숫자
	
	
	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public int getRecordCountPerPage() {
		return recordCountPerPage;
	}

	public void setRecordCountPerPage(int recordCountPerPage) {
		this.recordCountPerPage = recordCountPerPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecordCount() {
		return totalRecordCount;
	}

	public void setTotalRecordCount(int totalRecordCount) {
		this.totalRecordCount = totalRecordCount;
	}

	public int getRealEnd() {
	    
	    realEnd = (int)(Math.ceil((getTotalRecordCount() * 1.0) / getRecordCountPerPage()));
	    
	    return realEnd;
	}

	public void setRealEnd(int realEnd) {
		this.realEnd = realEnd;
	}
	
	
	
	
	/*
	 * ===========================================
	 * ==================구분선=====================
	 * ===========================================
	 */
	
	
	

	private int firstPageNoOnPageList;	// 페이지 리스트의 첫 번호
	private int lastPageNoOnPageList;   // 패이지 리스트의 마지막 번호
	private int firstRecordIndex; 		// 페이지 sql 조건절에 사용되는 시작 rownum
	
	
	/* firstPageNoOnPageList 페이지 리스트의 첫 페이지 번호
	 * 1. 마지막 페이지 번호를 선언한 후에
	 * 2. 현재 페이지 번호에서 10.0 을 나눈뒤에 10을 곱해준다. 
	 */
	public int getFirstPageNoOnPageList() {
		
		//1.마지막페이지번호 변수에 = 현재 페이지 번호에서 10.0 을 나눈뒤에 10을 곱한것을 할당. 
		lastPageNoOnPageList = (int) (Math.ceil(currentPageNo/10.0))*10;
		
		//2.그리고 마지막 페이지에서 -9를 해주면 페이지 번호가 나온다. 
		firstPageNoOnPageList = lastPageNoOnPageList - 9;
		
		//ex) ((10/10.0)*10) = 1
		return firstPageNoOnPageList;
	};
	public void setFirstPageNoOnPageList(int firstPageNoOnPageList) {
		this.firstPageNoOnPageList = firstPageNoOnPageList;
	}

	
	/*
	 * lastPageNoOnPageList 페이지 리스트의 마지막 페이지 번호
	 * 
	 * 마지막 페이지 번호도 위에와 같으 현재 페이지 번호에서 10.0 나눈 뒤;에 10을 곱해준다.
	 * 다만 현재 페이지 번호가 10 이하일 경우가 있기 때문에 realEnd라는 변수에 다시한번 계산을 해줘야한다.
	 * 
	 * realEnd 라는 변수는 전체게시물수 * 1.0 나누기 한 페이지당 게시되는 게시물 수이다.
	 * 그리고 realEnd 변수가 마지막 페이지 번호보다 작을 경우 마지막 페이지번호와 같도록 한다.
	 */
	
	public int getLastPageNoOnPageList() {
		
		// 1.마지막 페이지 번호도 위에와 같으 현재 페이지 번호에서 10.0 나눈 뒤;에 10을 곱해준다.
		lastPageNoOnPageList = (int) (Math.ceil(currentPageNo/10.0))*10;
		
		// 2. realEnd 라는 변수는 전체게시물수 * 1.0 나누기 한 페이지당 게시되는 게시물 수이다.
		int realEnd = (int)(Math.ceil((getTotalRecordCount() * 1.0) / getRecordCountPerPage()));
		
		//3.현재 페이지 번호가 10 이하일 경우가 있기 때문에 realEnd라는 변수에 다시한번 계산을 해줘야한다.
		if(realEnd < lastPageNoOnPageList) {
			lastPageNoOnPageList = realEnd;
		}
		return lastPageNoOnPageList;
	}
	public void setLastPageNoOnPageList(int lastPageNoOnPageList) {
		this.lastPageNoOnPageList = lastPageNoOnPageList;
	}

	
	/*
	 * firstRecordIndex = (페이지 sql의 조건절에 사용되는 시작 rownumber)
	 * sql에 사용될 firstRecordIndex는 '(현제페이지 - 1)*한 페이지당 게시되는 게시물' 수 이다.
	 * 
	 * ex) (5-1)20 = 80
	 */
	
	public int getFirstRecordIndex() {
		firstRecordIndex = (getCurrentPageNo() - 1) * getRecordCountPerPage();
		return firstRecordIndex;
	}
	public void setFirstRecordIndex(int firstRecordIndex) {
		this.firstRecordIndex = firstRecordIndex;
	}

	
	
	
	/*
	 * ===========================================
	 * ==================구분선=====================
	 * ===========================================
	 */
	
	
	
	
	private boolean xprev; 				// 이전버튼
	private boolean xnext; 				// 다음버튼
	
	// xprev 이전 버튼
		public boolean getXprev() {
			// 이전 버튼은 리스트의 첫 페이지 번호가 1보다 크면 보이도록 한다. 
			xprev = getFirstPageNoOnPageList() > 1;
			return xprev;
		}
	public void setXprev(boolean xprev) {
		this.xprev = xprev;
	}
	
	/*
	 *  xnext 다음버튼
	 *  realEnd 변수를 구해서 리스트의 마지막 페이지 번호보다 크면 다음 버튼이 보이도록 한다.
	 *  
	 *  ex) realEnd = (5 * 1.0)*20 = 100
	 */
	
	public boolean getXnext() {
		
		int realEnd = (int)(Math.ceil((getTotalRecordCount() * 1.0) / getRecordCountPerPage()));	
		xnext = getLastPageNoOnPageList() < realEnd;
		return xnext;
	}

	public void setXnext(boolean xnext) {
		this.xnext = xnext;
	}
	

	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
