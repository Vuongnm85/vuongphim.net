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

import com.show.entity.Report;



@WebServlet("/thongke/luotThich")
public class thongKe extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("PolyOE");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			String jpql = "SELECT new Report(o.video.title, count(o), max(o.likeDate), min(o.likeDate))"
					+ " FROM Favorite o GROUP BY o.video.title";
			TypedQuery<Report> query = em.createQuery(jpql, Report.class);
			List<Report> list = query.getResultList();
			for (Report rp : list) {
				System.out.print(
						"\n" + rp.getGroup() + " - " + rp.getLikes() + " - " + rp.getNewest() + " - " + rp.getOldest());
			}
			req.setAttribute("favorites", list);
			em.getTransaction().commit();
		} catch (Exception e) {
			// TODO: handle exception
		}
		em.close();
		emf.close();
		req.getRequestDispatcher("/views/Admin/Admin_BaoCao.jsp").forward(req, resp);
	}
}
