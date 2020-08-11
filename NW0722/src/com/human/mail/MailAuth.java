package com.human.mail;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

public class MailAuth extends Authenticator{
	
	
	PasswordAuthentication pa;

    public MailAuth() {			//생성자 
    							//메일 보낼 아이디 및 패스워드 (구글 설정도 바뀌어 있어야함. imap,pop설정 변경)
        String mail_id = "mincj93@gmail.com";
        String mail_pw = "AlsCkd!23";

        pa = new PasswordAuthentication(mail_id, mail_pw);

    }

    public PasswordAuthentication getPasswordAuthentication() {

        return pa;
    }
}
