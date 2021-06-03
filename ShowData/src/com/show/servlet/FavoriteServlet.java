package com.show.servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.show.dao.VideoDAO;
import com.show.entity.Favorite;
import com.show.entity.User;
import com.show.entity.Video;


@WebServlet({"/yeuThich/index","/yeuThich/edit/*"})
public class FavoriteServlet extends HttpServlet  {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String id = uri.substring(uri.lastIndexOf("/")+1);
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
		EntityManager em = emf.createEntityManager();
		
		try {
			em.getTransaction().begin();
			
			User user = em.find(User.class, id);
			List<Favorite> favorites = user.getFavorites();
			req.setAttribute("yeuThich", favorites);
			
			String jpql = "SELECT o.video FROM Favorite o WHERE o.user.id =:uid";
			TypedQuery<Video> query = em.createQuery(jpql, Video.class);
			query.setParameter("uid", id);
			List<Video> videos = query.getResultList();
			req.setAttribute("form", videos);
			
			
			
			em.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
		em.close();
		emf.close();
		req.getRequestDispatcher("/views/Official/yeuThich.jsp").forward(req, resp);
	}
}
