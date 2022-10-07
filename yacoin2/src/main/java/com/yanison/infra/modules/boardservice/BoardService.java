package com.yanison.infra.modules.boardservice;

import java.util.List;

public interface BoardService {

	public List<BoardVo>getList(BoardVo searchVO) throws Exception;
	public int getListCnt(BoardVo searchVO) throws Exception;
	
}
