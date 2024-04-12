package com.jdbc.ok;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jdbc.domain.UserDAO;
import com.jdbc.domain.UserVO;

@WebServlet("/update_ok")
public class update_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public update_ok() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//form에서 들어오는 값 처리
		
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String gender = request.getParameter("gender");
		
		//DAO 객체 생성 -> 싱글톤 작업을 할 것임! 딱 하나의 dao 객체를 만듦 -> db와 작업함!
		
		UserDAO dao = UserDAO.getInstance();
		
		//VO 객체 생성
		UserVO vo = new UserVO(id, null, name, phone1, phone2, gender);
		
		//회원가입 처리
		int result = dao.update(vo);
		
		if(result ==1) {//성공시 처리
			response.sendRedirect("update_success.jsp");
		}else { //실패 시 처리
			response.sendRedirect("mypage.jsp");
		}
	
	}

}
