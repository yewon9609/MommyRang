package com.mommy.app.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;
import com.mommy.app.service.dao.ServiceDAO;
import com.mommy.app.service.vo.ServiceDTO;

public class SearchMomOk2 implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HashMap<String, Integer> searchDetailMap = new HashMap<>();
		HashMap<String, Integer> modalInput = new HashMap<>();
		HashMap<String, String> areaMap = new HashMap<>();
		ServiceDAO dao = new ServiceDAO();
		int userStatus=2;

		List<ServiceDTO> momList = new ArrayList<ServiceDTO>();
		
		LocalDate now = LocalDate.now();
		int year = now.getYear();

		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		//사용자가 요청한 페이지가 null이면 1페이지를,
		//null이 아니면 요청한 페이지를 page에 담아준다.
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 10;
		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		System.out.println("page : "  + page);
		System.out.println("startRow : " + startRow);
		
		searchDetailMap.put("startRow", startRow);
		searchDetailMap.put("rowCount", rowCount);
		modalInput.put("startRow", startRow);
		modalInput.put("rowCount", rowCount);
		modalInput.put("userStatus", userStatus);
		
		//화면에 출력되는 페이지 번호 중
		//시작 페이지(1, 11, 21, ....)
	/*	int startPage = ((page - 1) / pageSize) * pageSize + 1;
		//끝 페이지(10, 20, 30, ...)
		int endPage = startPage + pageSize - 1;
		//실제 마지막 게시글이 출력되는 마지막 페이지 번호
		int realEndPage = (int)Math.ceil(total / (double)rowCount);*/
	
		//만약 화면에서의 마지막 페이지가 실제 마지막 페이지보다 크다면,
		//실제 마지막 페이지를 endPage에 담아준다.
		//endPage는 항상 10단위로 끝나기 때문에, 14페이지가 마지막 페이지일 경우
		//14페이지를 endPage에 담아준다. 
		/*endPage = endPage > realEndPage ? realEndPage : endPage;*/
		
		searchDetailMap.put("userStatus", userStatus);
		if( req.getParameter("check")!=null) {
	
		searchDetailMap.put("babyNewborn", Integer.parseInt(req.getParameter("babyNewborn")));
		searchDetailMap.put("babyKinder", Integer.parseInt(req.getParameter("babyKinder")));
		searchDetailMap.put("babyChild", Integer.parseInt(req.getParameter("babyChild")));
		searchDetailMap.put("babyElementary", Integer.parseInt(req.getParameter("babyElementary")));
		searchDetailMap.put("P_mon", Integer.parseInt(req.getParameter("P_mon")));
		searchDetailMap.put("P_tue", Integer.parseInt(req.getParameter("P_tue")));
		searchDetailMap.put("P_wed", Integer.parseInt(req.getParameter("P_wed")));
		searchDetailMap.put("P_thu", Integer.parseInt(req.getParameter("P_thu")));
		searchDetailMap.put("P_fri", Integer.parseInt(req.getParameter("P_fri")));
		searchDetailMap.put("P_sat", Integer.parseInt(req.getParameter("P_sat")));
		searchDetailMap.put("P_sun", Integer.parseInt(req.getParameter("P_sun")));
		searchDetailMap.put("P_morning", Integer.parseInt(req.getParameter("P_morning")));
		searchDetailMap.put("P_lunch", Integer.parseInt(req.getParameter("P_lunch")));
		searchDetailMap.put("P_noon", Integer.parseInt(req.getParameter("P_noon")));
		searchDetailMap.put("careIndoor", Integer.parseInt(req.getParameter("careIndoor")));
		searchDetailMap.put("careCommit", Integer.parseInt(req.getParameter("careCommit")));
		searchDetailMap.put("careFood", Integer.parseInt(req.getParameter("careFood")));
		searchDetailMap.put("careClean", Integer.parseInt(req.getParameter("careClean")));
		searchDetailMap.put("careStudy", Integer.parseInt(req.getParameter("careStudy")));
		searchDetailMap.put("userStatus", userStatus);
		} 

//		돌봄유형 모달 ----------------------------
		if(req.getParameter("careType")!=null) {
			switch (req.getParameter("careType")) {
			
			case "1": momList = dao.careTypeSchool(modalInput);
				break;
			case "2": momList = dao.teach(modalInput);
				break;
			case "3": momList = dao.fullTime(modalInput);
				break;
			case "4": momList = dao.shortTime(modalInput);
				break;
			case "5": momList = dao.careEmergency(modalInput);
				break;
			case "6": momList = dao.searchDetail(searchDetailMap);
				break;
			}
//		돌봄지역모달------------------------------- 
		}else if(req.getParameter("sido")!=null) {
			 areaMap.put("sido", req.getParameter("sido"));
			 areaMap.put("sigugun", req.getParameter("sigugun"));
			 areaMap.put("dong", req.getParameter("dong"));
			 momList = dao.searchArea(areaMap);
//		상세검색모달-------------------------------
		 }else {
			 momList = dao.searchDetail(searchDetailMap);
		 }
				
		JSONArray moms = new JSONArray();
		
		for(ServiceDTO s : momList) {
			JSONObject mom = new JSONObject();
			
			mom.put("userNum", s.getUserNum());
			mom.put("ProfileDescription", s.getProfileDescription());
			mom.put("LocationSido", s.getLocationSido());
			mom.put("LocationSigun", s.getLocationSigun());
			mom.put("age", year - s.getUserBirthYear());
			mom.put("getProfileSalary",s.getProfileSalary());
			mom.put("mon", s.getP_mon());
			mom.put("tue", s.getP_tue());
			mom.put("wed", s.getP_wed());
			mom.put("thu", s.getP_thu());
			mom.put("fri", s.getP_fri());
			mom.put("sat", s.getP_sat());
			mom.put("sun", s.getP_sun());
			
			moms.add(mom);
		}
		
		PrintWriter out = resp.getWriter();
		
		out.print(moms.toJSONString());
		out.close();
		
		return null;
	}

}
