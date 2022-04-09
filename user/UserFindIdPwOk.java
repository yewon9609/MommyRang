package com.mommy.app.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class UserFindIdPwOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		resp.setContentType("text/html; charset=utf-8");
		resp.setCharacterEncoding("utf-8");
		req.setCharacterEncoding("utf-8");
		  HashMap<String, String> findIdPw = new HashMap<>();
	      UserDAO userDao = new UserDAO();
	      ActionForward af = new ActionForward();
	      HttpSession session = req.getSession();
	      PrintWriter out = resp.getWriter();
	      JSONObject obj = new JSONObject();
	      
	      findIdPw.put("userName", req.getParameter("userName"));	      
	      findIdPw.put("userEmail", req.getParameter("userEmail"));
	      String userId = null;
	      
	      
	      userId = userDao.findIdPw(findIdPw);
	    
			if(userId ==null) {
			

				obj.put("status", "not-ok");
			}else {
				//사용 가능한 아이디일 때
//				out.print("ok");
			req.setAttribute("userId", userId);
			session.setAttribute("userId", userId);
				obj.put("status", "ok");
				obj.put("userId", userId);
				
			}
			
		
	      	out.print(obj.toJSONString());
	      	out.close();
	      
	     
	    	  
	    	
	   
	      
	    
	      

	       return null;

	}
}