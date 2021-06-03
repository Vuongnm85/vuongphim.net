package com.show.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.show.dao.UserDAO;
import com.show.entity.User;



@WebServlet({ "/nguoiDung/index", "/nguoiDung/delete", "/nguoiDung/create", "/nguoiDung/update", "/nguoiDung/edit/*" })
public class thongKeUserServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		User user = new User();
		String uri = req.getRequestURI();
		
		if(uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("/")+1);
			System.out.print("edit:"+ id);
			user = dao.findById(id);
			
		}else if(uri.contains("create")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());				
				dao.create(user);
				req.setAttribute("message", "Thêm người dùng thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Thêm người dùng thất bại");
			}
		}else if(uri.contains("update")) {
			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Cập nhật thông tin người dùng thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Cập nhật thông tin người dùng thất bại");
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa người dùng thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Xóa người dùng thất bại");
			}
		}
		
		req.setAttribute("form", user);
		req.setAttribute("videos", dao.findAll());		
		req.getRequestDispatcher("/views/Admin/Admin_User.jsp").forward(req, resp);
		}
}

