package com.show.entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@NamedQueries({
		@NamedQuery(name = "Video.findByKeyword", query = "SELECT DISTINCT o.video FROM Favorite o WHERE o.video.title LIKE :keyword"),
		@NamedQuery(name = "Video.findByUser", query = "SELECT o.video FROM Favorite o" + " WHERE o.user.id=:id"),
		@NamedQuery(name = "Video.findInRange", query = "SELECT DISTINCT o.video FROM Favorite o WHERE o.likeDate BETWEEN :min and :max"),
		@NamedQuery(name = "Video.findInMonths", query = "SELECT  o.video FROM Favorite o WHERE month(o.likeDate) IN (:months)") })

@NamedNativeQueries({
@NamedNativeQuery(name = "Report.random10",
query = "SELECT TOP 10 * FROM Videos ORDER BY newid()",
resultClass = Video.class)
})

@Entity
@Table(name = "Videos")
public class Video {

	@Id
	String id;
	String title;
	String poster;
	String description;
	Integer views = 0;
	Boolean active = true;
	String link;
	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;
	
	public Video() {
		
	}
	public Video(String id, String title,String poster,String description,Integer views, Boolean active,String link) {
		this.id = id;
		this.title = title;
		this.poster=poster;
		this.description=description;
		this.views=views;
		this.active=active;
		this.link = link;
	}

	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getViews() {
		return views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public List<Favorite> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

}
