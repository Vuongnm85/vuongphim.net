package com.show.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.show.entity.User;






@WebFilter({"/account/sign-out","/account/remember-password","/account/edit-profile","/account/change-pass","/yeuThich/edit/*","/yeuThich/create","/user/index","/video/like/*","/video/share/*","/account/change-password","/admin/*","/mail/edit/*","/chiTiet/edit/*","/thongke/luotThich","/nguoiDung/index","/youtube/index"})
public class AuthFilter implements HttpFilter {
	@Override
	public void doFilter(HttpServletRequest req, HttpServletResponse resp, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		String uri = req.getRequestURI();
		User user = (User)req.getSession().getAttribute("user");
		String error="";
		if(user==null) {//chua dang nhap
			error = resp.encodeURL("Vui long dang nhap");
		}else if(!user.getAdmin() && uri.contains("/admin/")){//kg phai admin
			error = resp.encodeURL("Vui long dang nhap voi vai tro admin");
		}
		
		if(!error.isEmpty()) {// truy cap kg hop le
			req.getSession().setAttribute("securi", uri);
			resp.sendRedirect("/ShowData/views/Official/dangNhap.jsp?error="+resp.encodeURL(error));
		}else {//truy cap hop le
			chain.doFilter(req, resp);
		}
				
	}
}
