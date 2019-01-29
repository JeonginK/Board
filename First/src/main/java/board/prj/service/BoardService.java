package board.prj.service;

import java.util.List;
import java.util.Map;

import board.prj.common.common.CommandMap;
import board.prj.page.Criteria;

public interface BoardService {
	 
    List<Map<String, Object>> selectBoardList(CommandMap commandMap);

	void insertBoard(CommandMap commandMap);

	Map<String, Object> viewBoardDetail(Map<String, Object> map);

	Map<String, Object> selectBoardDetail(Map<String, Object> map);

	void updateBoard(Map<String, Object> map);

	void deleteBoard(Map<String, Object> map);
	
	List<Map<String, Object>> selectBoardList(Criteria cri);

	int countBoardListTotal();
}
