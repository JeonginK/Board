package board.prj.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import board.prj.common.common.CommandMap;
import board.prj.dao.BoardDAO;
 

@Service("boardService")
public class BoardServiceImpl implements BoardService {
   
   Logger log = Logger.getLogger(this.getClass());
   
   @Resource(name="boardDAO")
   private BoardDAO boardDAO;

   @Override
   public List<Map<String, Object>> selectBoardList(CommandMap commandMap) {
       // TODO Auto-generated method stub
       return boardDAO.selectBoardList(commandMap);
   }
   
   public void insertBoard(CommandMap commandMap) {
       // TODO Auto-generated method stub
       boardDAO.insertBoard(commandMap);
   }

   @Override
   public Map<String, Object> viewBoardDetail(Map<String, Object> map) {
       // TODO Auto-generated method stub
       boardDAO.updateHitBoard(map);
       Map<String, Object> detail = boardDAO.detailBoard(map);
       return detail;
   }



}

