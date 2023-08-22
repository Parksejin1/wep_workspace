package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDao;
import vo.MemberVo;

public class UpdateController implements Controller {
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		MemberDao dao = MemberDao.getMemberDao();
		MemberVo vo = null;
		int custno =0;
		try {
			custno = Integer.parseInt(request.getParameter("custno"));
			vo = dao.selectOne(custno);
		}catch (SQLException | NumberFormatException e) {
			// custno 가 숫자가 아닌 문자가 포함되면 parseInt() Exception 발생하므로 처리하기
			// 2개 이상의 Exception 처리 할때 or 는 | 연산자
		}
		request.setAttribute("vo", vo);
		RequestDispatcher dispather = request.getRequestDispatcher("updateView.jsp");
		dispather.forward(request, response);
}
}
