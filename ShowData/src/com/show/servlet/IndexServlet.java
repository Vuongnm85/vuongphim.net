package com.show.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.show.dao.VideoDAO;
import com.show.entity.Video;

@WebServlet({ "/video/index" })
public class IndexServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> videosList = new ArrayList<Video>();

		VideoDAO dao = new VideoDAO();

		videosList = dao.findAll01();

		req.setAttribute("form", videosList);

		req.getRequestDispatcher("/views/Official/layout.jsp").forward(req, resp);
	}
}
