package com.show.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.show.dao.UserDAO;
import com.show.entity.User;



@WebServlet({"/user/index","/user/delete","/user/create","/user/update","/user/edit/*"})
public class UserServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		User user = new User();
				
		req.setAttribute("form", user);
		req.setAttribute("items", dao.findAll());		
		req.getRequestDispatcher("/views/Official/layout.jsp").forward(req, resp);
	}
}
