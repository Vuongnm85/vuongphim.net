package com.show.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.hibernate.mapping.PrimaryKey;

import com.show.entity.Favorite;
import com.show.entity.User;
import com.show.entity.Video;



public class FavoriteDAO {
	
	EntityManager em = JpaUtils.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}
	
	public Favorite update(Favorite entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}

	public Favorite findById(int id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}
	public List<Favorite> findAll(){
		String jpql = "SELECT o FROM Favorite o";
		
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		List<Favorite> list =  query.getResultList();				
		return list;
	}
	public Favorite create(Favorite entity) {
		try {
			em.getTransaction().begin();						
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	
	public void saveLike(String userId, String videoId) {
		Favorite fa = new Favorite();
		User u = em.find(User.class, userId);
		Video v = em.find(Video.class, videoId);
		
		fa.setUser(u);
		fa.setVideo(v);
		
		fa.setLikeDate(new Date());
		
		try {
			em.getTransaction().begin();
			em.persist(fa);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Thêm mới thất bại");
		}
	}
	public Favorite remove(int id) {
		try {
			Favorite entity = em.find(Favorite.class, id);
			em.getTransaction().begin();			
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public void unLike(String userId, String videoId) {
		TypedQuery<Favorite> q = em.createQuery("SELECT o FROM Favorite o WHERE o.user.id=:uid AND o.video.id =:vid ",Favorite.class);
		q.setParameter("uid", userId);
		q.setParameter("vid", videoId);
		
		try {
			em.getTransaction().begin();
			em.remove(q.getResultList().get(0));
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			System.out.println("Thêm mới thất bại");
		}
	}


}
