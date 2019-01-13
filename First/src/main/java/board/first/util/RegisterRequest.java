package board.first.util;


import javax.persistence.Column;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class RegisterRequest {

	@Column
	@NotEmpty(message = "�̸����� �Է����ּ���.")
	@Email(message = "�̸��� ���Ŀ� ���� �ùٸ��� �Է����ּ���.")
	private String email;

	@Column
	// @NotEmpty(message="���̵� �Է����ּ���.")
	@Pattern(regexp = "\\w{4,8}", message = "���̵� 4~8�ڷ� �Է����ּ���.")
	private String id;

	@Column
	// @NotEmpty(message="�̸��� �Է����ּ���.")
	@Pattern(regexp = "\\S{2,8}", message = "�̸��� ������� 2~6�ڷ� �Է����ּ���.")
	private String name;

	@Column
	// @NotEmpty(message="��й�ȣ�� �Է����ּ���.")
	@Size(min = 4, max = 12, message = "��й�ȣ�� 4~12�ڷ� �Է����ּ���.")
	private String pw;

	@Column
	// @NotEmpty(message="��й�ȣ�� �Է����ּ���.")
	@Size(min = 4, max = 12, message = "��й�ȣ�� 4~12�ڷ� �Է����ּ���.")
	private String checkPw;

	// ��й�ȣ Ȯ��

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

}