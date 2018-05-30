package com.docomp.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.docomp.beans.PatientBean;
import com.docomp.daos.PatientDAO;

/**
 * @author rohan Servlet implementation class PatientServlet
 */
@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientBean patient = null;
	private PatientDAO patientDao = null;
	String mastPage = null ;
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response) This method handles different requests according to the
	 *      browser action
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		mastPage = request.getParameter("mastPage");
		
		
		if(mastPage.equals("master")) {
			patientDao= new PatientDAO();
			
			List<PatientBean> patientList=patientDao.getAllPatients();
			request.setAttribute("patients",patientList);
			RequestDispatcher rd = request.getRequestDispatcher("/Pages/MasterPage.jsp");
			rd.forward(request, response);
		}
	
	}
      
}
