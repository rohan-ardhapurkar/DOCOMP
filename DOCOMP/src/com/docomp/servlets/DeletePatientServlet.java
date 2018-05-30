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
@WebServlet("/DeletePatientServlet")
public class DeletePatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PatientBean patient = null;
	private PatientDAO patientDao = null;
	String delPage = null ;
	String patientId = null ;

	/*
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response) This method handles different requests according to the
	 *      browser action
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		

        delPage = request.getParameter("delPage");
		patientId = request.getParameter("pid");
		if(delPage.equals("true")) {
			
		    int p = Integer.parseInt(patientId);  
		    patientDao = new PatientDAO();
			boolean b = patientDao.isPatientDeleted(p);
			if (b) {
				System.out.println("Patient Deleted Successfully .... !");
				RequestDispatcher rd = request.getRequestDispatcher("/Pages/MasterPage.jsp");
				rd.forward(request, response);
			}else
				System.out.println("Patient deleting failed ... ! ");
		}
		
	}
}
		
		
	
	
      
	 
	 