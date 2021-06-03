package com.show.admin;

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

import com.show.entity.User;

@WebServlet("/thongke/luotThichSP")
public class luotThich extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String videoId = req.getParameter("videoId");
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();

			String jpql = "SELECT o.user FROM Favorite o WHERE o.video.id=:vid";
			TypedQuery<User> query = em.createQuery(jpql, User.class);
			query.setParameter("vid", videoId);
			List<User> list = query.getResultList();
			req.setAttribute("video", list);

			em.getTransaction().commit();
		} catch (Exception e) {
			System.out.println("Loi : " + e);
		}
		em.close();
		emf.close();
		req.getRequestDispatcher("/views/Admin/Admin_LuotThich.jsp").forward(req, resp);
	}
	
	

}
