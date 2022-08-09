package com.ezen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezen.dao.MemberDAO;

/**
 * Servlet implementation class MemberFindServlet
 */
@WebServlet("/memberfind.do")
public class MemberFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		MemberDAO mDao=MemberDAO.getInstance();
		
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String id=mDao.findMember(name,phone);
		request.setAttribute("id", id);
		
	
	
		
	

		
		// 진행중
		System.out.println(id);
		System.out.println(id);
		System.out.println(id);
		
		
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("member/memberFind.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

}
