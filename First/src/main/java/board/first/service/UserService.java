package board.first.service;

import board.first.util.AuthInfo;
import board.first.util.LoginCommand;
import board.first.util.RegisterRequest;

public interface UserService {
	 void register(RegisterRequest regReq) throws Exception;
	 AuthInfo loginAuth(LoginCommand loginCommand) throws Exception;

}

