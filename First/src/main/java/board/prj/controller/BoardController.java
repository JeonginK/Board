package board.prj.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import board.prj.common.common.CommandMap;
import board.prj.service.BoardService;

@Controller
public class BoardController {

	Logger log = Logger.getLogger(this.getClass());

	@Resource(name = "boardService")
	private BoardService boardServcie;

	@RequestMapping(value = "/board/boardList")
	public ModelAndView openBoardList(CommandMap commandMap) throws Exception {

		ModelAndView mav = new ModelAndView("board/boardList");

		List<Map<String, Object>> list = boardServcie.selectBoardList(commandMap);
		mav.addObject("list", list);

		return mav;

	}

	@RequestMapping(value = "/board/boardWrite")
	public String boardWrite() throws Exception {
		return "/board/boardWrite";
	}

	
    @RequestMapping(value="/board/boardInsert")
    public ModelAndView boardInsert(CommandMap commandMap) throws Exception {
        ModelAndView mav = new ModelAndView("redirect:/board/boardList");
        boardServcie.insertBoard(commandMap);
        return mav;
    }

    @RequestMapping(value="/board/boardDetail")
    public ModelAndView boardDetail(CommandMap commandMap) throws Exception {
        
        ModelAndView mv = new ModelAndView("/board/boardDetail");
        Map<String, Object> detail = boardServcie.viewBoardDetail(commandMap.getMap());
        mv.addObject("detail",detail);
        
        return mv;
    }

    @RequestMapping(value="/board/boardUpdate")
    public ModelAndView boardUpdate(CommandMap commandMap) throws Exception {
        
        ModelAndView mv = new ModelAndView("/board/boardUpdate");
        Map<String, Object> detail = boardServcie.selectBoardDetail(commandMap.getMap());
        mv.addObject("detail",detail);
        return mv;
    }
    
    @RequestMapping(value="/board/boardUpdate", method=RequestMethod.POST)
    public ModelAndView boardUpdatePOST(CommandMap commandMap) throws Exception {
        
        ModelAndView mv = new ModelAndView("redirect:/board/boardDetail");
        mv.addObject("idx", commandMap.get("IDX"));
        boardServcie.updateBoard(commandMap.getMap());
        return mv;
    }

    @RequestMapping(value="/board/boardDelete")
    public ModelAndView boardDelete(CommandMap commandMap) throws Exception {
        ModelAndView mv = new ModelAndView("redirect:/board/boardList");
        log.debug(commandMap.getMap());
        boardServcie.deleteBoard(commandMap.getMap());
        return mv;
    }


    
}
