package com.docomp.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.docomp.beans.PatientBean;
import com.docomp.daos.PatientDAO;
@WebServlet("/AddPatientServlet")
public class AddPatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	private PatientBean patient = null;
	private PatientDAO patientDao = null;
	String newPage= null;

	
	
	
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
		else {
		patient = new PatientBean();
		patient.setPatientName(request.getParameter("patientName"));
		patient.setPatientLastName(request.getParameter("patientLastName"));
		patient.setPatientAddress(request.getParameter("patientAddress"));
		patient.setPatientAge(request.getParameter("patientAge"));
		patient.setPatientGender(request.getParameter("patientGender"));
		patient.setPatientHeight(request.getParameter("patientHeight"));
		patient.setPatientPhone(request.getParameter("patientPhone"));
		patient.setPatientWeight(request.getParameter("patientWeight"));
	
		patientDao= new PatientDAO();
		List<PatientBean> patientList=patientDao.getAllPatients();
		request.setAttribute("patients",patientList);
		RequestDispatcher rd = request.getRequestDispatcher("/Pages/MasterPage.jsp");
		rd.forward(request, response);
		
		boolean b =new PatientDAO().isPatientAdded(patient);
		if (b)
			System.out.println("Patient Added Successfully .... !");
		else
			System.out.println("Patient adding failed ... ! ");
	    }
	
	}

}
