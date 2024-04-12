package com.jdbc.ok;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.domain.UserDAO;
import com.jdbc.domain.UserVO;

@WebServlet("/modify_ok")
public class modify_ok extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public modify_ok() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//정보 수정 페이지로 이동하기 위해 db에서 정보를 가져오는 작업
		//id -> 세션을 통해 얻어옴
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		UserDAO dao = UserDAO.getInstance();
		
		UserVO vo = dao.getInfo(id);
		
		//vo를 request에 통째로 강제 저장하고 포워드 처리
		//임의로 지정해서 집어넣기 때문에 강제 저장
		request.setAttribute("vo", vo);
		request.getRequestDispatcher("update.jsp").forward(request, response);

	}


}
