
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

import com.show.dao.VideoDAO;
import com.show.entity.Video;

@WebServlet({ "/form.php", "/sendemail/submit.php", "/mail/edit/*" })
public class SendMailServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String uri = req.getRequestURI();

		if (uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			System.out.print("edit:" + id);
			video = dao.findById(id);
		}
		req.setAttribute("video", video);
		req.getRequestDispatcher("/views/Official/chiaSe.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String uri = req.getRequestURI();
			VideoDAO dao = new VideoDAO();
			Video video = new Video();
			if (uri.contains("edit")) {
				String id = uri.substring(uri.lastIndexOf("/") + 1);
				System.out.print("edit:" + id);
				video = dao.findById(id);
			}
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
			String to = req.getParameter("to");
			String subject = "Cùng xem phim tại VuongPhim.net";
			String body = "http://localhost:8081/ShowData/chiTiet/edit/" + req.getParameter("subject") + "."
					+ "Cùng xem phim: " + req.getParameter("title") + " tại VuongPhim.net";

			// Tao message
			MimeMessage msg = new MimeMessage(s);
			msg.setFrom(new InternetAddress(from));
			msg.setRecipients(Message.RecipientType.CC, to);
			msg.setSubject(subject, "utf-8");
			msg.setText(body, "utf-8", "html");

			msg.setReplyTo(msg.getFrom());

			Transport.send(msg);

			req.setAttribute("message", "Send mail access !");

		} catch (Exception ex) {
			req.setAttribute("message", "Send mail fail !" + ex);
		}

		this.doGet(req, resp);
	}

}
