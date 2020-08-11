package com.human.mail;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSend {

	public void PWmailSend(String address, String pwForSend) {

		System.out.println("PWmailSend 메소드 진입.");
//	    	System.out.println("보낼 주소 : " + address);
//	    	System.out.println("비밀번호 : " + pwForSend);
		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");

		Authenticator auth = new MailAuth();

		Session session = Session.getDefaultInstance(prop, auth);

		MimeMessage msg = new MimeMessage(session);

		try {
			msg.setSentDate(new Date());
			// 발송자 지정 ("mincj93@gmail.com", "NorthWind_MailService")
			// 좌항(메일 주소)은 보내는 사람의 실제 메일 , 우항(northwind)은 보내는 사람의 이름을 설정.
			msg.setFrom(new InternetAddress("mincj93@gmail.com", "NorthWind_MailService"));
			// 메일을 받을 사람
			InternetAddress to = new InternetAddress(address);
			msg.setRecipient(Message.RecipientType.TO, to);
			// 메일 제목
			msg.setSubject("NorthWind에서 고객님의 비밀번호를 전송해드립니다. ", "UTF-8");
			// 메일 내용
			msg.setText("안녕하세요 NorthWind입니다. 회원님의 비밀번호는 : " + pwForSend + " 입니다", "UTF-8");

			Transport.send(msg);

		} catch (AddressException ae) {
			System.out.println("AddressException : " + ae.getMessage());
		} catch (MessagingException me) {
			System.out.println("MessagingException : " + me.getMessage());
		} catch (UnsupportedEncodingException e) {
			System.out.println("UnsupportedEncodingException : " + e.getMessage());

		}

	}

	public void IDmailSend(String address, String IDForSend) {

		System.out.println("IDmailSend 메소드 진입.");
//	    	System.out.println("보낼 주소 : " + address);
//	    	System.out.println("비밀번호 : " + pwForSend);
		Properties prop = System.getProperties();
		prop.put("mail.smtp.starttls.enable", "true");
		prop.put("mail.smtp.host", "smtp.gmail.com");
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.port", "587");

		Authenticator auth = new MailAuth();

		Session session = Session.getDefaultInstance(prop, auth);

		MimeMessage msg = new MimeMessage(session);

		try {
			msg.setSentDate(new Date());
			// 발송자 지정 ("mincj93@gmail.com", "NorthWind_MailService")
			// 메일 주소는 보내는 사람의 실제 메일 , 이름은 보내는 사람의 이름을 설정.
			msg.setFrom(new InternetAddress("mincj93@gmail.com", "NorthWind_MailService"));
			// 메일을 받을 사람
			InternetAddress to = new InternetAddress(address);
			msg.setRecipient(Message.RecipientType.TO, to);
			// 메일 제목
			msg.setSubject("NorthWind에서 고객님의 아이디를 전송해드립니다. ", "UTF-8");
			// 메일 내용
			msg.setText("안녕하세요 NorthWind입니다. 회원님이 가입하신 아이디는 : " + IDForSend + " 입니다", "UTF-8");

			Transport.send(msg);

		} catch (AddressException ae) {
			System.out.println("AddressException : " + ae.getMessage());
		} catch (MessagingException me) {
			System.out.println("MessagingException : " + me.getMessage());
		} catch (UnsupportedEncodingException e) {
			System.out.println("UnsupportedEncodingException : " + e.getMessage());

		}

	}

}
