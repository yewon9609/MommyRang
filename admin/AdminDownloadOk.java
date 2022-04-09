package com.mommy.app.admin;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mommy.action.Action;
import com.mommy.action.ActionForward;

public class AdminDownloadOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		String realPath =req.getSession().getServletContext().getRealPath("/") + "profileData";
		String uploadFolder = realPath;
		String fileName = req.getParameter("fileName");
		String fileNameOriginal = req.getParameter("fileNameOriginal");
		InputStream inputStream = null;
		OutputStream outputStream = null;
		File file = null;
		
		System.out.println(realPath);
		
		System.out.println(uploadFolder);
		System.out.println(fileName);
		System.out.println(fileNameOriginal);
		
		try {
			file = new File(uploadFolder, fileName);
			
			//기존 문자열을 뼈속까지 UTF-8로 변경
			String fileNameToSend = new String(fileNameOriginal.getBytes("UTF-8"), "ISO-8859-1");
			inputStream = new FileInputStream(file);
			//응답 데이터의 형식을 byte로 설정
			resp.setContentType("application/octet-stream");
			//응답할 데이터의 설명(선택사항)
			/*resp.setHeader("Content-Description", "동석이짱");*/
			//브라우저에게 전달될 데이터의 타입을 설정
			resp.setHeader("Content-Disposition", "attachment;filename=\"" + fileNameToSend +"\"");
			//응답 데이터의 형식을 byte, charset을 UTF-8로 설정
			resp.setHeader("Content-Type", "application/octet-stream;charset=utf-8");
			//응답 데이터의 총 길이를 설정
			resp.setHeader("Content-Length", file.length() + "");
			
			//파일의 정보를 byte로 저장할 배열
			byte[] b = new byte[(int)file.length()];
			int len = 0;
			outputStream = resp.getOutputStream();
			
			//read에 byte배열을 전달하면 읽어온 byte를 전달한 byte배열에 담아준다.
			//더 이상 읽을 byte가 없을 때 까지 반복한다.
			while((len = inputStream.read(b)) > 0) {
				//매 반복마다 byte배열에 데이터가 담긴다.
				//담기는 족족 출력해주면 된다.
				outputStream.write(b, 0, len);
			}
			
		} catch (FileNotFoundException e) {
			System.out.println("FileDownloadOk.java 오류");
			e.printStackTrace();
		} finally {
			try {
				if(outputStream != null) {
					outputStream.close();
				}
				if(inputStream != null) {
					inputStream.close();
				}
			} catch (Exception e) {
				throw new RuntimeException(e);
			}
		}
		return null;
	}
}
