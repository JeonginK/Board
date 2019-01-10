package board.first.service;

import org.springframework.stereotype.Repository;
import board.first.common.dao.AbstractDAO;
import board.first.util.RegisterRequest;
import board.first.vo.UserVO;

 
@Repository("userDAO")
public class UserDAO extends AbstractDAO {
 
	public UserVO selectByEmail(String email) {
        return (UserVO)selectOne("user.selectByEmail", email);
    }
 
    public UserVO selectById(String id) {
        return (UserVO)selectOne("user.selectById", id);
    }
 
    public void insertUser(RegisterRequest regReq) {
        insert("user.register", regReq);
    }
}



