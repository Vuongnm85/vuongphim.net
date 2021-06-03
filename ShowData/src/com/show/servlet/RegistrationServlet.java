package com.show.servlet;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.show.dao.UserDAO;
import com.show.entity.User;



@WebServlet({"/account/sign-up"})
public class RegistrationServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String method = req.getMethod();
		if(method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG KÝ
			try {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());

				UserDAO dao = new UserDAO();
				dao.create(entity);
				req.setAttribute("message", "Đăng ký thành công!");
				
				
				try {
					req.setCharacterEncoding("utf-8");
					resp.setCharacterEncoding("utf-8");

					// Thong so ket noi SMTP Server
					Properties p = new Properties();
					p.put("mail.smtp.auth", "true");
					p.put("mail.smtp.starttls.enable", "true");
					p.put("mail.smtp.host", "smtp.gmail.com");
					p.put("mail.smtp.port", 587);

					// Ket noi SMTP Server
					Session s = Session.getInstance(p, new javax.mail.Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							String username = "vuongnmps12651@fpt.edu.vn";
							String password = "trewqasd";
							return new PasswordAuthentication(username, password);
						}
					});

					String from = "vuongnmps12651@fpt.edu.vn";
					String to = req.getParameter("email");
					String subject = "Đăng lý tài khoản xem phim thành công tại VuongPhim.net";
					String body = "Username:"+entity.getId()+" Password:"+ entity.getPassword()+" Fullname:"+entity.getFullname()+" Vai trò:"+entity.getAdmin();

					// Tao message
					MimeMessage msg = new MimeMessage(s);
					msg.setFrom(new InternetAddress(from));
					msg.setRecipients(Message.RecipientType.CC, to);
					msg.setSubject(subject, "utf-8");
					msg.setText(body, "utf-8", "html");

//		            JFileChooser fileChooser = new JFileChooser();
//		            File selectFile = fileChooser.getSelectedFile();
//		            String fileChooserString = selectFile.getAbsolutePath();
//		            DataSource source = new FileDataSource(fileChooserString);
//		            msg.setDataHandler(new DataHandler(source));
//		            msg.setFileName(fileChooserString);

					msg.setReplyTo(msg.getFrom());

					Transport.send(msg);

					req.setAttribute("message", "Send mail access !");

				} catch (Exception ex) {
					req.setAttribute("message", "Send mail fail !" + ex);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đăng ký!"+e);
			}
		}
		req.getRequestDispatcher("/views/Official/dangKy.jsp").forward(req, resp);
	}
}
