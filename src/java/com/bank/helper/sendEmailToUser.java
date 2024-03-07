
package com.bank.helper;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;

import java.net.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class sendEmailToUser {
    
    public static void main( String[] args )
    {
        System.out.println("sec");
        String message = "Hii amruth fuck you";
        String subject ="yours bank ";
        String from = "debashispandadipu@gmail.com";
        String to = "tajvivanta2580@gmail.com";
        
        Properties  prop = new Properties();
        sendEmail(message,subject,to,from);
        
        
    }
    public  static void  sendEmail(String message,String subject,String to,String from) {
    	
    	//variable for gmail host
    	String host = "smtp.gmail.com";
    	
    	//getsystemproperties
    	
    Properties properties = 	System.getProperties();
   
    
    //setting important information 
    
    properties.put("mail.smtp.host",host);
    properties.put("mail.smtp.port","465");
    properties.put("mail.smtp.ssl.enable","true");
    properties.put("mail.smtp.auth", true);
    properties.put("mail.smtp.host","smtp.gmail.com" );
    
    //to get session object
   Session session =  Session.getInstance(properties,new Authenticator() {

		@Override
		protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
			// TODO Auto-generated method stub
			return new javax.mail.PasswordAuthentication("debashispandadipu@gmail.com","ceqk vozh uftz gnvh");
		}

		
		
    	
	});
   session.setDebug(true);
    
    //compose the message [text,attachment,muultimedia]
  MimeMessage m=  new MimeMessage(session);
  try {
	m.setFrom(new InternetAddress(from));
	
	// adding recipient 
	
	m.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
	
	//adding subject to message
	
	m.setSubject(subject);
	
	//adding text to message 
	
	m.setText(message);
	
	//send the messsage using Transport class
	
	Transport.send(m);
	
	System.out.println("sent sucessfully/.....................");
	
} catch (MessagingException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
    
 
    
    
    }
}
