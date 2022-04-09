package com.mommy.app.service;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.ActionForward;
import com.mommy.app.community.CommunityCommentWriteOk;

public class ServiceFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = new ActionForward();
		
	System.out.println("찜하기 확인 FC 들어옴.프론트컨트롤");
	System.out.println(command);
		
		if(command.equals("/service/SearchJob.ser")) {
			af=new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/serviceSearch/searchJob.jsp");
		}else if(command.equals("/service/SearchMom.ser")) {
			af=new ActionForward();
			af.setRedirect(false);
			af.setPath("/app/serviceSearch/searchMom.jsp");
		}else if(command.equals("/service/SearchMomOk2.ser")) {
			af=new SearchMomOk2().execute(req, resp);

		}else if(command.equals("/service/SearchJobOk2.ser")) {
			System.out.println("여기냐..??");

			af=new SearchJobOk2().execute(req, resp);
		}else if(command.equals("/service/SearchMomOk.ser")) {
			af=new SearchMomOk().execute(req, resp);
			
		}else if(command.equals("/service/SearchJobOk.ser")) {
			
			af=new SearchJobOk().execute(req, resp);

		}else if(command.equals("/service/FavoriteInsertOk.ser")) {
			af =new FavoriteInsertOk().execute(req, resp);
			
		}else if(command.equals("/service/FavoriteDeleteOk.ser")) {
			af =new FavoriteDeleteOk().execute(req, resp);

		}
		else if(command.equals("/service/WriteMom.ser")) {
			af = new WriteMom().execute(req, resp);
		}else if(command.equals("/service/WriteMomOk.ser")) {
			af = new WriteMomOk().execute(req, resp);
		}else if(command.equals("/service/MomDetailModalOk.ser")) {
			af = new MomDetailModalOk().execute(req, resp);
		}else if(command.equals("/service/Jobhunting.ser")) {
			af = new Jobhunting().execute(req, resp);
		}else if(command.equals("/service/LookMomProfile2.ser")) {
			af = new LookMomProfile2().execute(req, resp);
		}else if(command.equals("/service/lookSitterProfile2.ser")) {
			af = new LookSitterProfile2().execute(req, resp);
		}else if(command.equals("/service/LookSitterProfileOk.ser")) {
			af = new LookSitterProfileOk().execute(req, resp);
		}
		
		
		else if(command.equals("/service/WriteSitter.ser")) {
			af = new WriteSitter().execute(req, resp);
		}else if(command.equals("/service/WriteSitterOk.ser")) {
			af = new WriteSitterOk().execute(req, resp);
		}else if(command.equals("/service/SitterProfileDeleteOk.ser")) {
			af = new SitterProfileDeleteOk().execute(req, resp);
		}else if(command.equals("/service/LookMomProfileOk.ser")) {
			af = new LookMomProfileOk().execute(req, resp);
		}
		
		
		
		
		
		 else if(command.equals("/service/FavoriteListOk.ser")) {
			af = new FavoriteListOk().execute(req, resp);
		}
		
		
		
		
		
		
		/*else if(command.equals("/service/WriteSitter.ser")) {
			af = new WriteSitter().execute(req, resp);
		}else if(command.equals("/service/WriteSitterOk.ser")) {
			af = new WriteSitterOk().execute(req, resp);
		}
		*/

		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
		

	}
}
