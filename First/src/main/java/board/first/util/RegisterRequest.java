package board.first.util;


import javax.persistence.Column;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RegisterRequest {

	
	private String email;
    private String id;
    private String name;
    private String pw;
    private String checkPw;


	 public boolean isPwEqualToCheckPw() {
	        return pw.equals(checkPw);
	    }
	 
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getCheckPw() {
		return checkPw;
	}

	public void setCheckPw(String checkPw) {
		this.checkPw = checkPw;
	}

	/*
	@Column
	@NotEmpty(message ="이메일을 입력해주세요.")
	@Email(message = "이메일 형식에 맞춰 올바르게 입력해주세요.")
	private String email;

	@Column
	// @NotEmpty(message="���̵� �Է����ּ���.")
	@Pattern(regexp = "\\w{4,8}", message = "아이디를 4~8자로 입력해주세요.")
	private String id;

	@Column
	// @NotEmpty(message="�̸��� �Է����ּ���.")
	@Pattern(regexp = "\\S{2,8}", message ="이름을 공백없이 2~6자로 입력해주세요.")
	private String name;

	@Column
	// @NotEmpty(message="��й�ȣ�� �Է����ּ���.")
	@Size(min = 4, max = 12, message = "비밀번호를 4~12자로 입력해주세요.")
	private String pw;

	@Column
	// @NotEmpty(message="��й�ȣ�� �Է����ּ���.")
	@Size(min = 4, max = 12, message = "비밀번호를 4~12자로 입력해주세요.")
	private String checkPw;

*/
	
}
