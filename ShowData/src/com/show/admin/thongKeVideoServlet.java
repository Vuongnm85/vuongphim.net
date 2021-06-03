package com.show.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.show.dao.VideoDAO;
import com.show.entity.Video;

@WebServlet({ "/youtube/index", "/youtube/delete", "/youtube/create", "/youtube/update", "/youtube/edit/*" })
public class thongKeVideoServlet extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		String uri = req.getRequestURI();
		
		if(uri.contains("edit")) {
			String id = uri.substring(uri.lastIndexOf("/")+1);
			System.out.print("edit:"+ id);
			video = dao.findById(id);
			
		}else if(uri.contains("create")) {
			try {
				BeanUtils.populate(video, req.getParameterMap());				
				dao.create(video);
				req.setAttribute("message", "Thêm vide thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Thêm video thất bại");
			}
		}else if(uri.contains("update")) {
			try {
				BeanUtils.populate(video, req.getParameterMap());
				dao.update(video);
				req.setAttribute("message", "Cập nhật video thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Cập nhật video thất bại");
			}
		}else if(uri.contains("delete")) {
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa video thành công");
			}catch (Exception e) {
				req.setAttribute("message", "Xóa video thất bại");
			}
		}
		
		req.setAttribute("form", video);
		req.setAttribute("videos", dao.findAll01());		
		req.getRequestDispatcher("/views/Admin/Admin_Video.jsp").forward(req, resp);
	}
}

