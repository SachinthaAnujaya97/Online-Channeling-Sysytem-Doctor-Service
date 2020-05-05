package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import com.sun.jersey.core.spi.scanning.Scanner;

import model.Doctor;

/**
 * Servlet implementation class DoctorAPI
 */
@WebServlet("/DoctorAPI")
public class DoctorAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Doctor doctor = new Doctor();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoctorAPI() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String output = doctor.AddDoctor(
				request.getParameter("D_fname"), 
				request.getParameter("D_lname"),
				request.getParameter("D_gender"), 
				request.getParameter("D_age"), 
				request.getParameter("D_docNIC"),
				request.getParameter("D_docEmail"), 
				request.getParameter("D_password"),
				request.getParameter("D_phonenumber"));

		response.getWriter().write(output);

	}

	// Convert request parameters to a Map
	private static Map getParasMap(HttpServletRequest request) {
		Map<String, String> map = new HashMap<String, String>();
		try {
			Scanner scanner = new Scanner(request.getInputStream(), "UTF-8");
			String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : "";
			scanner.close();
			String[] params = queryString.split("&");
			for (String param : params) {

				String[] p = param.split("=");
				map.put(p[0], p[1]);
			}
		} catch (Exception e) {
		}
		return map;
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
System.out.println(paras);
		String output = doctor.updateDoctor(paras.get("hidDoctorIDSave").toString(), 
				paras.get("D_fname").toString(),
				paras.get("D_lname").toString(), 
				paras.get("D_gender").toString(), 
				paras.get("D_age").toString(),
				paras.get("D_docNIC").toString(), 
				paras.get("D_docEmail").toString(),
				paras.get("D_password").toString(), 
				paras.get("D_phonenumber").toString());

		response.getWriter().write(output);

	
	/*
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);

		String output = doctor.updateDoctor(paras.get("hidItemIDSave").toString(), paras.get("fName").toString(),
				paras.get("lNmae").toString(), paras.get("rdoGenderMale").toString(), paras.get("age").toString(),
				paras.get("docNIC").toString(), paras.get("docEmail").toString(),
				paras.get("passwod").toString(), paras.get("phoneNumber").toString());

		response.getWriter().write(output);*/

	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Map paras = getParasMap(request);
		String output = doctor.deleteDoctor(paras.get("D_Id").toString());
		response.getWriter().write(output);
		
	}
}
