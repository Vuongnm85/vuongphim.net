package com.show.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.show.dao.VideoDAO;
import com.show.entity.Video;

@WebServlet({ "/chiTiet/edit/*" })
public class DetailServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String uri = req.getRequestURI();

		String id = uri.substring(uri.lastIndexOf("/") + 1);
		System.out.print("edit:" + id);
		video = dao.findById(id);

		req.setAttribute("item", video);
		req.getRequestDispatcher("/views/Official/chiTietPhim.jsp").forward(req, resp);
	}
}
