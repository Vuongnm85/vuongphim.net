package com.show.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.show.dao.UserDAO;
import com.show.entity.User;



@WebServlet({"/account/change-pass"})
public class ChangePassServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String method = req.getMethod();
		if(method.equalsIgnoreCase("POST")) {
			String id = req.getParameter("username");
			String pw = req.getParameter("matkhau");
			String np = req.getParameter("newpassword");
			String cp = req.getParameter("password");
			// TODO: ĐĂNG NHẬP
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(id);
				if(!user.getPassword().equals(pw)) {
					req.setAttribute("message", "Sai mật khẩu!");
				}
				else {
					if(!np.equals(cp)) {
						req.setAttribute("message","Xác nhận mật khẩu không giống");
					}else {
						BeanUtils.populate(user, req.getParameterMap());
						UserDAO doiMatKhau = new UserDAO();
						doiMatKhau.update(user);
						req.setAttribute("message", "Đổi mật khẩu thành công");
					}
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
			}
		}
		req.getRequestDispatcher("/views/Official/doiMatKhau.jsp").forward(req, resp);
	}
}
