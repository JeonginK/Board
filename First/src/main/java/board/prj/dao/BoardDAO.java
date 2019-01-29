package board.prj.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import board.first.common.dao.AbstractDAO;
import board.prj.common.common.CommandMap;
import board.prj.page.Criteria;

@Repository("boardDAO")
public class BoardDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(CommandMap commandMap) {
		return (List<Map<String, Object>>) selectList("board.selectBoardList", commandMap);

	}

	public void insertBoard(CommandMap commandMap) {
		// TODO Auto-generated method stub
		insert("board.insertBoard", commandMap.getMap());

	}

	@SuppressWarnings("unchecked")
	public Map<String, Object> detailBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return (Map<String, Object>) selectOne("board.detailBoard", map);
	}

	public void updateHitBoard(Map<String, Object> map) {
		// TODO Auto-generated method stub
		update("board.updateHitBoard", map);
	}
	
	public void updateBoard(Map<String, Object> map) {
        // TODO Auto-generated method stub
        update("board.updateBoard",map);
    }

	public void deleteBoard(Map<String, Object> map) {
        // TODO Auto-generated method stub
        update("board.deleteBoard", map);
    }

	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> selectBoardList(Criteria cri) {
	    return (List<Map<String,Object>>)selectList("board.selectBoardList", cri);
	}
	
	public int countBoardList(){
	    return (Integer) selectOne("board.countBoardList");
	}



}
