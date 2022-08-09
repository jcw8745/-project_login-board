package com.ezen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezen.dao.MemberDAO;
import com.ezen.dto.MemberVO;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join.do")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher=request.getRequestDispatcher("member/join.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String admin=request.getParameter("admin");
		
		MemberVO mVo=new MemberVO();
		
		mVo.setId(id);
		mVo.setPwd(pwd);
		mVo.setName(name);
		mVo.setPhone(phone);
		mVo.setEmail(email);
		
		mVo.setGender(Integer.parseInt(gender));
		mVo.setAge(age);
		mVo.setAdmin(Integer.parseInt(admin));
		
		MemberDAO mDao=MemberDAO.getInstance();
		int result=mDao.insertMember(mVo);
		
		HttpSession session=request.getSession();
		
		if(result==1) {
			session.setAttribute("id",mVo.getId());
			request.setAttribute("message", "회원가입에 성공했습니다.");
			
		}else {
			request.setAttribute("message", "회원가입에 실패했습니다.");
		}
		RequestDispatcher dispatcher=request.getRequestDispatcher("member/login.jsp");
		dispatcher.forward(request, response);
	}

}
