package com.show.servlet;

import java.io.IOException;

import javax.persistence.Embeddable;
import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.show.dao.FavoriteDAO;
import com.show.dao.JpaUtils;
import com.show.dao.VideoDAO;
import com.show.entity.Video;





@WebServlet({"/yeuThich/create"})
public class CreateFavoriteServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usserid = req.getParameter("userid");
		String videoid = req.getParameter("videoid");
		FavoriteDAO dao = new FavoriteDAO();
		
		dao.saveLike(usserid, videoid);
		req.setAttribute("message", "Đã thêm vào danh sách yêu thích");

		req.getRequestDispatcher("/views/Official/yeuThich.jsp").forward(req, resp);
	}
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/Official/yeuThich.jsp").forward(req, resp);
	}
	 
}
