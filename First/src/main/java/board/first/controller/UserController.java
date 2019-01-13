package board.first.controller;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.first.exception.AlreadyExistingEmailException;
import board.first.exception.AlreadyExistingIdException;
import board.first.service.UserService;
import board.first.util.RegisterRequest;
import board.first.util.RegisterRequestValidator;

@Controller
public class UserController {

	@RequestMapping("/register/step1")
	public String step1() throws Exception {
		return "user/register/step1";
	}

	@RequestMapping("/register/step2")
	public ModelAndView step2(@RequestParam(value = "agree", defaultValue = "false") Boolean agree) throws Exception {
		if (!agree) {
			ModelAndView mv = new ModelAndView("user/register/step1");
			return mv;
		}

		ModelAndView mv = new ModelAndView("user/register/step2");
		mv.addObject("registerRequest", new RegisterRequest());
		return mv;
	}

	@Resource(name = "userService")
	private UserService userSer;

	@RequestMapping("/register/step3")
	ModelAndView step3(@Valid RegisterRequest regReq, BindingResult bindingResult) throws Exception {

		// @Valid 검증
		if (bindingResult.hasErrors()) {
			ModelAndView mv = new ModelAndView("user/register/step2");
			return mv;
		}

		// 비밀번호 확인
		boolean check = regReq.isPwEqualToCheckPw();
		if (!check) {
			bindingResult.rejectValue("checkPw", "noMatch", "비밀번호를 확인해주세요.");
			ModelAndView mv = new ModelAndView("user/register/step2");
			return mv;
		}

		try {
			userSer.register(regReq);
		} catch (AlreadyExistingEmailException e) {
			bindingResult.rejectValue("email", "duplicate", "이미 가입된 이메일입니다.");
			ModelAndView mv = new ModelAndView("user/register/step2");
			return mv;
		} catch (AlreadyExistingIdException e) {
			bindingResult.rejectValue("id", "duplicate", "이미 가입된 아이디입니다.");
			ModelAndView mv = new ModelAndView("user/register/step2");
			return mv;
		}

		ModelAndView mv = new ModelAndView("user/register/step3");
		return mv;
	}
}
