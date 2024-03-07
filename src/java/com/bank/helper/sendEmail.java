package com.bank.helper;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Message.RecipientType;
import javax.mail.Transport;

public class sendEmail {

    public static boolean sendEmailToUser(String Message, String subject, String from, String to) {
        boolean b = false;
        try {
            Properties properties = System.getProperties();

            properties.put("mail.smtp.host", "smtp.gmail.com");
            properties.put("mail.smtp.port", "465");
            properties.put("mail.smtp.ssl.enable", "true");
            properties.put("mail.smtp.auth", true);

            Session session = Session.getInstance(properties, new Authenticator() {

                @Override
                protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                    return new javax.mail.PasswordAuthentication("debashispandadipu@gmail.com", "ceqk vozh uftz gnvh");

                }

            });

            session.setDebug(true);
            MimeMessage m = new MimeMessage(session);
            m.setFrom(new InternetAddress(from));
            m.addRecipient(RecipientType.TO, new InternetAddress(to));
            m.setSubject(subject);
            m.setText(Message);
            Transport.send(m);

            System.out.println("Meaasge send sucessfully ");
            b = true;

        } catch (Throwable e) {
            e.printStackTrace();
        }

        return b;
    }

    

}
