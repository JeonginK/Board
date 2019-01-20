package board.first.util;

import javax.persistence.Entity;

import org.hibernate.validator.constraints.NotEmpty;

 
@Entity
public class LoginCommand {
    
    @NotEmpty(message="���̵� �Է����ּ���.")
    private String id;
 
    @NotEmpty(message="��й�ȣ�� �Է����ּ���.")
    private String pw;
    private boolean rememberId;
    
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getPw() {
        return pw;
    }
    public void setPw(String pw) {
        this.pw = pw;
    }
    public boolean isRememberId() {
        return rememberId;
    }
    public void setRememberId(boolean rememberId) {
        this.rememberId = rememberId;
    }
 
}