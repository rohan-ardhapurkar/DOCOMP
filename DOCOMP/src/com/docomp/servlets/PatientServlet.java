package com.docomp.servlets;

import java.io.IOException;

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
	String newPage = null;
	String delpage = null;
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response) This method handles different requests according to the
	 *      browser action
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		newPage =request.getParameter("newPage");
		if(newPage == null) {
			newPage = "false";
		}
		if(newPage.equals("true")) {
			RequestDispatcher rd = request.getRequestDispatcher("/Pages/addpatient.jsp");
			rd.forward(request, response);
		}
		if(newPage.equals("master")) {
			RequestDispatcher rd = request.getRequestDispatcher("/Pages/MasterPage.jsp");
			rd.forward(request, response);
		}
		
		else{
			patient = new PatientBean();
			patient.setPatientName(request.getParameter("patientName"));
			patient.setPatientLastName(request.getParameter("patientLastName"));
			patient.setPatientAddress(request.getParameter("patientAddress"));
			patient.setPatientAge(request.getParameter("patientAge"));
			patient.setPatientGender(request.getParameter("patientGender"));
			patient.setPatientHeight(request.getParameter("patientHeight"));
			patient.setPatientPhone(request.getParameter("patientPhone"));
			patient.setPatientWeight(request.getParameter("patientWeight"));
			
			boolean b =new PatientDAO().isPatientAdded(patient);
			if (b)
				System.out.println("Patient Added Successfully .... !");
			else
				System.out.println("Patient adding failed ... ! ");
		}
		
	}
       	delpage =request.getParameter("delpage");
 
	   boolean c =new PatientDAO().isPatientDeleted(patientId)
	if (c)
		System.out.println("Patient deleted Successfully .... !");
	else
		System.out.println("Patient deleting failed ... ! ");
}

    }

