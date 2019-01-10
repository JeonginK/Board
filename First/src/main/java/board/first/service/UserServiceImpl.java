package board.first.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import board.first.exception.AlreadyExistingEmailException;
import board.first.exception.AlreadyExistingIdException;
import board.first.util.RegisterRequest;
import board.first.vo.UserVO;

import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService {
 
	 @Resource(name="userDAO")
	    private UserDAO userDAO;
	 
	    @Override
	    public void register(RegisterRequest regReq) throws Exception {
	        UserVO email = userDAO.selectByEmail(regReq.getEmail());
	        if(email!=null) {
	            throw new AlreadyExistingEmailException(regReq.getEmail()+" is duplicate email.");
	        }
	        UserVO id = userDAO.selectById(regReq.getId());
	        if(id!=null) {
	            throw new AlreadyExistingIdException(regReq.getId()+" is duplicate id.");
	        }
	        userDAO.insertUser(regReq);
	    }


	
}
