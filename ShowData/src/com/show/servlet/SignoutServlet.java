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



@WebServlet({"/account/sign-out"})
public class SignoutServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		req.getSession().setAttribute("user", null);
		req.getRequestDispatcher("/video/index").forward(req, resp);
	}
}
