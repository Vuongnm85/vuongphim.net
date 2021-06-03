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



@WebServlet({"/yeuThich/remove"})
public class UnlikeFavoriteServlet extends HttpServlet  {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String usserid = req.getParameter("userid");
		String videoid = req.getParameter("videoid");
		FavoriteDAO dao = new FavoriteDAO();
		dao.unLike(usserid, videoid);
		req.setAttribute("message","Xóa thành công");
		
		req.getRequestDispatcher("/yeuThich/index").forward(req, resp);
	}
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/yeuThich/index").forward(req, resp);
	}
	 
}
