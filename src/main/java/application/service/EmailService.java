package application.service;

import application.Config;
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.Context;
import org.thymeleaf.templateresolver.FileTemplateResolver;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.StringWriter;
import java.util.Map;
import java.util.Properties;

public class EmailService {

    private static final String PATH = "src/main/resources/templates/";

    public void send(String sendTo, String emailBody, String subject) {

        Properties props = new Properties();
        props.put("mail.smtp.host", Config.SMTP_HOST);
        props.put("mail.smtp.socketFactory.port", Config.SMTP_PORT);
        props.put("mail.smtp.socketFactory.class",
                "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", Config.SMTP_PORT);

        Session session = Session.getDefaultInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(Config.SMTP_USER, Config.SMTP_PASS);
                    }
                });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(Config.EMAIL_FROM));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(sendTo));
            message.setSubject(subject);
            message.setContent(emailBody, "text/html; charset=UTF-8");

            Transport.send(message);
            System.out.println("E-mail message was sent successfully.");
        } catch (MessagingException e) {
            e.printStackTrace();
        }

    }

    public String renderEmailTemplate(String template, Map<String, Object> model) {
        TemplateEngine templateEngine = new TemplateEngine();
        FileTemplateResolver templateResolver = new FileTemplateResolver();
        templateResolver.setTemplateMode("HTML");
        templateResolver.setSuffix(".html");
        templateResolver.setCacheable(false);
        templateEngine.setTemplateResolver(templateResolver);
        Context context = new Context();
        context.setVariable("model", model);
        StringWriter stringWriter = new StringWriter();
        templateEngine.process(PATH + template, context, stringWriter);
        return stringWriter.toString();
    }

}
