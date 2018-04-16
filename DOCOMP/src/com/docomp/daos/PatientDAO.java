package com.docomp.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.docomp.beans.PatientBean;
import com.docomp.commons.DB;

/**
 * 
 * @author rohan The Data Access Object class for patient.
 */
public class PatientDAO {
	private Connection conn = null;
	private ResultSet rs = null;
	private PreparedStatement stmt = null;

	/**
	 * This method is used to add the patient based on the patient details.
	 * 
	 * @param patient
	 * @return true if the patient is added.
	 */
	public boolean isPatientAdded(PatientBean patient) {
		conn = DB.connect();
		if (conn != null) {
			try {
				stmt = conn.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?)");
				stmt.setInt(1, patient.getPatientId());
				stmt.setString(2, patient.getPatientName());
				stmt.setString(3, patient.getPatientLastName());
				stmt.setString(4, patient.getPatientAddress());
				stmt.setString(5, patient.getPatientAge());
				stmt.setString(6, patient.getPatientGender());
				stmt.setString(7, patient.getPatientHeight());
				stmt.setString(8, patient.getPatientWeight());
				stmt.setString(9, patient.getPatientPhone());

				int result = stmt.executeUpdate();
				if (result > 0)
					return true;

			} catch (SQLException e) {
				System.out.println("Error while inserting record");
				e.printStackTrace();
			}
		} else {
			System.out.println("Problem while connecting database .. ! Please check your database provider");
		}
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("Error while closing connection to Database.!");
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * This method is used to get all the patients from the database
	 * 
	 * @return the list of all the patients
	 */
	public List<PatientBean> getAllPatients() {
		conn = DB.connect();
		List<PatientBean> patients = new ArrayList<PatientBean>();
		try {
			stmt = conn.prepareStatement("select * from patient");
			rs = stmt.executeQuery();
			while (rs.next()) {
				PatientBean patient = new PatientBean();
				patient.setPatientId(rs.getInt(1));
				patient.setPatientName(rs.getString(2));
				patient.setPatientLastName(rs.getString(3));
				patient.setPatientAddress(rs.getString(4));
				patient.setPatientAge(rs.getString(5));
				patient.setPatientGender(rs.getString(6));
				patient.setPatientHeight(rs.getString(7));
				patient.setPatientWeight(rs.getString(8));
				patient.setPatientPhone(rs.getString(9));

				patients.add(patient);
			}

		} catch (SQLException e) {
			System.out.println("Error while selecting the records ... !");
			e.printStackTrace();
		}
		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("Error while closing connection to Database.!");
			e.printStackTrace();
		}

		return patients;
	}

	/**
	 * 
	 * @param patient
	 * @return true if the patient is deleted
	 */
	public boolean isPatientDeleted(int patientId) {
		conn = DB.connect();
		try {
			stmt = conn.prepareStatement("delete patient where patient_id = ?");
			stmt.setInt(1, patientId);

			int result = stmt.executeUpdate();
			if (result > 0)
				return true;
		} catch (SQLException e1) {
			System.out.println("Error while deleting the patient from Database ... ! ");
			e1.printStackTrace();
		}

		try {
			conn.close();
		} catch (SQLException e) {
			System.out.println("Error while closing connection to Database.!");
			e.printStackTrace();
		}
		return false;
	}
}
