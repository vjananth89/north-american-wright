package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ViewReviews
 */
@WebServlet("/ViewReviews")
public class ViewReviews extends HttpServlet {
	private static final long serialVersionUID = 1L;

	  private ServletConfig config;

	  //Setting JSP page

	  String page="ViewReviews.jsp";

	  public void init(ServletConfig config)

	  throws ServletException{

	 this.config=config;

	 }

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewReviews() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		  PrintWriter out = response.getWriter();
		  Connection currentConn = null;
		  ResultSet rs = null;
	

		  response.setContentType("text/html");

		  List dataList= new ArrayList(); 

		  try {

		 // Load the database driver

		  Class.forName("com.mysql.jdbc.Driver");

		  // Get a Connection to the database

		  currentConn = ConnectionManager.getConnection();
		 // connection = DriverManager.getConnection(connectionURL, "adminesB9t5b", "HW8tjW5hhy_B"); 
		  
		  HttpSession session = request.getSession(true);
		  String sessionUser = session.getAttribute("currentSessionUser").toString();
		  String sql = "select image,cakeName,cakeId,seller,conf_id,comment from reviews where username='"+sessionUser+"'";
		  
		  Statement s = currentConn.createStatement();


		  s.executeQuery (sql);
		 

		  rs = s.getResultSet();



		  while (rs.next ()){

		  //Add records into data list
		  dataList.add(rs.getString("image"));
		  dataList.add(rs.getString("cakeName"));
		  dataList.add(rs.getString("cakeId"));
		  dataList.add(rs.getString("seller"));
		  dataList.add(rs.getString("conf_id"));
		  dataList.add(rs.getString("comment"));
		  
		  
		  }
		 

		  rs.close ();

		  
		  s.close ();

		  }catch(Exception e){

		  System.out.println("Exception is ;"+e);

		  }

		  request.setAttribute("data1",dataList);
		  
		  

		  //Disptching request

		  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		  if (dispatcher != null){

		  dispatcher.forward(request, response);

		  } 

		  }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
