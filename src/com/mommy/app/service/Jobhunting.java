package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.user.dao.UserDAO;

public class Jobhunting implements Action {
	
	

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//System.out.println("/service/Jobhunting.ser 들어옴");
		HttpSession session = req.getSession();
		UserDAO userDao = new UserDAO(); 
		ActionForward af = new ActionForward();
		int userNum = (int) session.getAttribute("userNum");
		//받아온 유저번호
		
		
		int userStatus  = userDao.selectStatus(userNum); // 현재 사용자의 상태값
		int statusParent = 1; // 부모의 상태값
		int statusSitter = 2; // 부모의 상태값
		
		// 넘겨줄 상태값
		int resultStatus = 0;
		
		// 프로필이 있을때 없을때 
		

		System.out.println("세션 상태 값:"+userNum);
		System.out.println("현재 상태 값:"+userStatus);
		System.out.println(userDao.myPageProfileCk(userNum));
		
		req.setAttribute("userNum", userNum);
	// 부모 프로필이라면
		if( userStatus == statusParent) {
//			resultStatus = statusParent;
			
			// 프로필이 있다면 부모의 프로필페이지로 
			if(userDao.myPageProfileCk(userNum)) {
				//af.setPath("/app/serviceProfile/lookMomProfile2.jsp"); // 부모님
				System.out.println("부모 게시글 있을때 ==들어옴");
				af.setPath("/service/LookMomProfileOk.ser?userNum="+userNum); // 부모님
				// 컨트롤러 요청으로 변경
				
			}else {
			// 프로필이 없다면 부모 게시글 작성으로
				System.out.println("부모 게시글 없을때 ==들어옴");
				af.setPath("/service/WriteMom.ser"); // 부모님이 게시글 없을때
			}
			
			// 없다면 부모 글 작성 페이지로 
			// 시터 프로필이라면
		}else if (userStatus == statusSitter){
			
			// 프로필이 있다면 시터의 프로필페이지로
			if(userDao.myPageProfileCk(userNum)) {
				System.out.println("시터 게시글 있을때 ==들어옴");
				af.setPath("/service/LookSitterProfileOk.ser?userNum="+userNum); // 시터 게시글이 있을때 
				//af.setPath("/app/serviceProfile/lookSitterProfile2.jsp"); // 시터 게시글이 있을때 
				// 컨트롤러 요청으로 변경
			}else {
				System.out.println("시터 게시글 없을때 ==들어옴");
			// 프로필이 없다면 시터의 글 작성 페이지로 
				af.setPath("/service/WriteSitter.ser"); // 시터가 게시글 없을때
				// 현재 프론트컨트롤러에 주석처리 되어있어서 500에러 발생
			}
			// 없다면 부모 글 작성 페이지로 
		}
		
		/*req.setAttribute("userStatus",resultStatus);*/
		
		af.setRedirect(false);
		return af;

	}
	
	

}
