package com.yanison.infra.modules.boardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao dao;
	
	@Override
	public List<BoardVo>getList(BoardVo searchVO) throws Exception{
		return dao.getList(searchVO);
	}
	
	@Override
	public int getListCnt(BoardVo searchVO) throws Exception{
		return dao.getListCnt(searchVO);
	}
	

}
