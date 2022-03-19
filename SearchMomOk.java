package com.mommy.app.service;

import java.io.IOException; 
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.ServiceDTO;

public class SearchMomOk  implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HashMap<String, Integer> boardMap = new HashMap<>();
		HashMap<String, Integer> searchDetailMap = new HashMap<>();
		ActionForward af = new ActionForward();
		ServiceDAO dao = new ServiceDAO();
		
		
		//전체 게시글 개수
		int total = dao.sitterTotal();
		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 10;
		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		//화면에 출력되는 페이지 번호 중
		//시작 페이지(1, 11, 21, ....)
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		//끝 페이지(10, 20, 30, ...)
		int endPage = startPage + pageSize - 1;
		//실제 마지막 게시글이 출력되는 마지막 페이지 번호
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		//만약 화면에서의 마지막 페이지가 실제 마지막 페이지보다 크다면,
		//실제 마지막 페이지를 endPage에 담아준다.
		//endPage는 항상 10단위로 끝나기 때문에, 14페이지가 마지막 페이지일 경우
		//14페이지를 endPage에 담아준다. 
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//DB에서 필요한 데이터를 Map에 담는다.
/*		searchDetailMap.put("startRow", startRow);
		searchDetailMap.put("rowCount", rowCount);*/
  
		System.out.println(req.getParameter("check") + "체크");

		if( req.getParameter("check")!=null) {
	
		searchDetailMap.put("babyNewborn", Integer.parseInt(req.getParameter("babyNewborn")));
		searchDetailMap.put("babyKinder", Integer.parseInt(req.getParameter("babyKinder")));
		searchDetailMap.put("babyChild", Integer.parseInt(req.getParameter("babyChild")));
		searchDetailMap.put("babyElementary ", Integer.parseInt(req.getParameter("babyElementary")));
		searchDetailMap.put("P_mon", Integer.parseInt(req.getParameter("P_mon")));
		searchDetailMap.put("P_tue ", Integer.parseInt(req.getParameter("P_tue")));
		searchDetailMap.put("P_wed ", Integer.parseInt(req.getParameter("P_wed")));
		searchDetailMap.put("P_thu ", Integer.parseInt(req.getParameter("P_thu")));
		searchDetailMap.put("P_fri ", Integer.parseInt(req.getParameter("P_fri")));
		searchDetailMap.put("P_sat", Integer.parseInt(req.getParameter("P_sat")));
		searchDetailMap.put("P_sun ", Integer.parseInt(req.getParameter("P_sun")));
		searchDetailMap.put("P_morning", Integer.parseInt(req.getParameter("P_morning")));
		searchDetailMap.put("P_lunch ", Integer.parseInt(req.getParameter("P_lunch")));
		searchDetailMap.put("P_noon ", Integer.parseInt(req.getParameter("P_noon")));
		searchDetailMap.put("careCommit", Integer.parseInt(req.getParameter("careIndoor")));
		searchDetailMap.put("goingSchool", Integer.parseInt(req.getParameter("careCommit")));
		searchDetailMap.put("careFood", Integer.parseInt(req.getParameter("careFood")));
		searchDetailMap.put("careClean", Integer.parseInt(req.getParameter("careClean")));
		searchDetailMap.put("careStudy", Integer.parseInt(req.getParameter("careStudy")));
		}
		
		//시작 인덱스와, 개수를 전달하여 게시글 목록을 가져온 뒤 requestScope에 담아준다.
		req.setAttribute("momList", dao.searchDetail(searchDetailMap));
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		af.setRedirect(false);
		af.setPath("/app/serviceSearch/searchMom.jsp");
		return af;
	} 

}
