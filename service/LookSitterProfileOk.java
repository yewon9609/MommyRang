package com.mommy.app.service;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.FavoriteDAO;
import com.mommy.app.service.dao.ProfileFilesDAO;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.FavoriteVO;
import com.mommy.app.service.vo.LookProfileDTO;
import com.mommy.app.user.dao.UserDAO;
import com.mommy.app.user.vo.UserVO;

public class LookSitterProfileOk implements Action  {

   @Override
   public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
      ActionForward af = new ActionForward();
      ServiceDAO dao = new ServiceDAO();
      FavoriteDAO fdao = new FavoriteDAO();
  	ProfileFilesDAO profileFilesDao = new ProfileFilesDAO();
      FavoriteVO favorite = new FavoriteVO();
      UserDAO userDao = new UserDAO();
      UserVO userVo = new UserVO();      
      int check = 0;
      
      LookProfileDTO dto = new LookProfileDTO();
      HttpSession session= req.getSession();
      int userNum = (Integer)session.getAttribute("userNum");
      System.out.println("프로파일유저넘버"+req.getParameter("profileUserNum"));
      //int profileUserNum = Integer.parseInt(req.getParameter("profileUserNum")); 
      int profileUserNum = 0;
      

		if(req.getParameter("userNum") != null) {
			profileUserNum = Integer.parseInt(req.getParameter("userNum")); 
		}else {
			profileUserNum = userNum;
		}
		
	      userVo = userDao.getInfo(profileUserNum);
      
      //나이(만나이)
            int birthYear = userVo.getUserBirthYear();
          
              Calendar current = Calendar.getInstance();
              int currentYear  = current.get(Calendar.YEAR);
            
            
              int age = currentYear - birthYear;
              
             
              
      req.setAttribute("userAge", age);
      req.setAttribute("user", userVo);
  	String fileName = profileFilesDao.selectUserImg(profileUserNum);
      dto=dao.lookSitterProfile(profileUserNum);
      System.out.println("들어옴1");
      
   // 여기 추가
      
      //(Integer)session.getAttribute("userNum"))
      //Integer.parseInt(req.getParameter("userNum"))
      
      favorite.setUserNum(userNum);
      System.out.println(favorite.getUserNum() + ": 로그인한 사람 유저넘");
   
      
      favorite.setProfileUserNum(profileUserNum);
      //System.out.println(favorite.getProfileUserNum() + ": 이거 글 쓴 유저넘이다");
      System.out.println(profileUserNum + ": 이거 글 쓴 유저넘이다");
      
      check = fdao.check(favorite);
      System.out.println(check + ": my check");
      req.setAttribute("sitterInfo", dto);
      req.setAttribute("userNum2", session.getAttribute("userNum"));
      req.setAttribute("check", check);
      req.setAttribute("fileName", fileName);
      req.setAttribute("profile", req.getParameter("profile"));
      
      System.out.println(req.getParameter("profile"));
      af.setRedirect(false);
      af.setPath("/app/serviceProfile/lookSitterProfile2.jsp");
      return af;
   }

}