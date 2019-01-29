package board.prj.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import board.prj.common.common.CommandMap;
import board.prj.dao.BoardDAO;
import board.prj.page.Criteria;
 

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

   @Override
   public Map<String, Object> selectBoardDetail(Map<String, Object> map) {
       // TODO Auto-generated method stub
       return boardDAO.detailBoard(map);
   }

   @Override
   public void updateBoard(Map<String, Object> map) {
       // TODO Auto-generated method stub
       boardDAO.updateBoard(map);
   }

   @Override
   public void deleteBoard(Map<String, Object> map) {
       // TODO Auto-generated method stub
       boardDAO.deleteBoard(map);
   }

   
   @Override
   public List<Map<String, Object>> selectBoardList(Criteria cri) {
       return boardDAO.selectBoardList(cri);
   }

   @Override
   public int countBoardListTotal() {
       return boardDAO.countBoardList();
   }



}

