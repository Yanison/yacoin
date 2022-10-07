package com.yanison.infra.modules.ezenboard;

import java.util.List;

public interface EzenBoardService {
	public List<EzenBoardGroup> selectList(EzenBoardGroup vo) throws Exception;
	public int selectOneCount(EzenBoardGroup vo) throws Exception;
}
