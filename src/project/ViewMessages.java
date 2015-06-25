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

/**
 * Servlet implementation class ViewMessages
 */
@WebServlet("/ViewMessages")
public class ViewMessages extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	  private ServletConfig config;

	  //Setting JSP page

	  String page="ViewMessages.jsp";

	  public void init(ServletConfig config)

	  throws ServletException{

	 this.config=config;

	 }
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewMessages() {
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
		 

		  //Establish connection to MySQL database

		// String connectionURL = "jdbc:mysql://localhost:3306/";
		 // String connectionURL = "jdbc:mysql://127.12.221.2:3306/ualbanycakeshop";
		  

		  response.setContentType("text/html");

		  List dataList= new ArrayList(); 

		  try {

		 // Load the database driver

		  Class.forName("com.mysql.jdbc.Driver");

		  // Get a Connection to the database

		  currentConn = ConnectionManager.getConnection();
		 // connection = DriverManager.getConnection(connectionURL, "adminesB9t5b", "HW8tjW5hhy_B"); 
		  
		 // HttpSession session = request.getSession(true);
		 // String sessionUser = session.getAttribute("currentSessionUser").toString();
		  String sql = "select * from messages";
		  
		  Statement s = currentConn.createStatement();


		  s.executeQuery (sql);
		 

		  rs = s.getResultSet();



		  while (rs.next ()){

		  //Add records into data list
		  dataList.add(rs.getString("name"));
		  dataList.add(rs.getString("phone"));
		  dataList.add(rs.getString("message"));
		  dataList.add(rs.getString("reason"));
		  
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
