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
 * Servlet implementation class SearchCakesSeller
 */
@WebServlet("/SearchCakesSeller")
public class SearchCakesSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private ServletConfig config;
	  //Setting JSP page
	  String page="CakesResultsforSeller.jsp";
	  public void init(ServletConfig config)
	  throws ServletException{
	 this.config=config;
	  }   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchCakesSeller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		//  static ResultSet rs1 = null;
	  PrintWriter out = response.getWriter();

	  
	  Connection currentCon = null;
	  ResultSet rs = null;
	 // ResultSet rs;
	  response.setContentType("text/html");
	  List dataList= new ArrayList(); 
	  try {
	 // Load the database driver
	  Class.forName("com.mysql.jdbc.Driver");
	  currentCon = ConnectionManager.getConnection();
	  // Get a Connection to the database
	  //connection = DriverManager.getConnection(connectionURL, "root", "root"); //DO NOT CHANGE THIS LINE
	  String sellerName = request.getParameter("sellerName");
	  String searchBy = null;
		 if(request.getParameter("searchBy")!=null){
			 searchBy = request.getParameter("searchBy");
		 }
		// String dept = null;
		 	String sql = "select * from cakes where "+ searchBy + " like '%"+ sellerName + "%'  ";

		  
		  Statement s = currentCon.createStatement();

		  s.executeQuery (sql);
          System.out.println("executed the query!");
		  rs = s.getResultSet();

		  while (rs.next ()){

		  //Add records into data list

		  dataList.add(rs.getString("image"));
		  dataList.add(rs.getString("cakeName"));
		  dataList.add(rs.getString("cakeId"));
		  dataList.add(rs.getString("seller"));
		  dataList.add(rs.getString("cost"));

		 }
	  
	  

	   
	 
	  }catch(Exception e){
	  System.out.println("Exception is ;"+e);
	  }
	  
	  request.setAttribute("result",dataList);

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
