package board.prj.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import board.first.common.dao.AbstractDAO;
import board.prj.common.common.CommandMap;
 
@Repository("boardDAO")
public class BoardDAO extends AbstractDAO{
   
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(CommandMap commandMap) {
		 return (List<Map<String,Object>>)selectList("board.selectBoardList", commandMap);

	}

	public void insertBoard(CommandMap commandMap) {
		// TODO Auto-generated method stub
		insert("board.insertBoard", commandMap.getMap());    

	}
 
}
