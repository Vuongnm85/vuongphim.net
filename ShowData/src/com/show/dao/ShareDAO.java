package com.show.dao;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import org.hibernate.mapping.PrimaryKey;

import com.show.entity.Share;
import com.show.entity.User;
import com.show.entity.Video;



public class ShareDAO {
	
	EntityManager em = JpaUtils.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}
	
	public Share update(Share entity) {
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

	public Share findById(int id) {
		Share entity = em.find(Share.class, id);
		return entity;
	}
	public List<Share> findAll(){
		String jpql = "SELECT o FROM Favorite o";
		
		TypedQuery<Share> query = em.createQuery(jpql, Share.class);
		List<Share> list =  query.getResultList();				
		return list;
	}
	public Share create(Share entity) {
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
	
	public void saveShare(String userId, String videoId) {
		Share fa = new Share();
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
	public Share remove(int id) {
		try {
			Share entity = em.find(Share.class, id);
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
		TypedQuery<Share> q = em.createQuery("SELECT o FROM Share o WHERE o.user.id=:uid AND o.video.id =:vid ",Share.class);
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
