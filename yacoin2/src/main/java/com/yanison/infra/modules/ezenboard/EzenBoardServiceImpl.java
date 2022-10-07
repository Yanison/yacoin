package com.yanison.infra.modules.ezenboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EzenBoardServiceImpl implements  EzenBoardService{

	@Autowired
	EzenBoardDao dao;
	
	@Override
	public List<EzenBoardGroup> selectList(EzenBoardGroup vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public int selectOneCount(EzenBoardGroup vo) throws Exception{
		return dao.selectOneCount(vo);
	}
	
}
