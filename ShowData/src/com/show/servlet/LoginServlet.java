package com.show.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.show.dao.UserDAO;
import com.show.entity.User;

@WebServlet({ "/account/sign-in" })
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);

		req.setAttribute("username", username);
		req.setAttribute("password", password);
		req.getRequestDispatcher("/views/Official/dangNhap.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			String remember = req.getParameter("remember");
			// TODO: ĐĂNG NHẬP
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(username);
				if (!user.getPassword().equals(password)) {
					req.setAttribute("message", "Sai mật khẩu!");
				} else {
					if (user.getAdmin() == false) {

						req.getRequestDispatcher("/youtube/index").forward(req, resp);
						req.getSession().setAttribute("user", user);
					} else {
						req.setAttribute("message", "Đăng nhập thành công!");
						// nhớ cookie
						int hours = (remember == null) ? 0 : 30*24;
						CookieUtils.add("username", username, hours, resp);
						CookieUtils.add("password", password, hours, resp);

						req.getSession().setAttribute("user", user);
					}
					req.getRequestDispatcher("/views/Official/dangNhap.jsp").forward(req, resp);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
			}
		
	}
}
