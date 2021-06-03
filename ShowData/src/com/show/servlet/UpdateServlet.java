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



@WebServlet({"/account/edit-profile"})
public class UpdateServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		String method = req.getMethod();
		if(method.equalsIgnoreCase("POST")) {
			String id = req.getParameter("id");
			String pw = req.getParameter("password");
			// TODO: ĐĂNG NHẬP
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(id);
				
				BeanUtils.populate(user, req.getParameterMap());

				UserDAO capNhat = new UserDAO();
				capNhat.update(user);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi cập nhật!"+e);
			}
		}
		req.getRequestDispatcher("/views/Official/capNhatTaiKhoan.jsp").forward(req, resp);
	}
}
