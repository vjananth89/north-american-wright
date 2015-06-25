package project;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterUser extends HttpServlet{

  private ServletConfig config;
  //Setting JSP page
  String page="Registered.jsp";
  public void init(ServletConfig config)
  throws ServletException{
 this.config=config;
 }
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException
{
	 
	//  static ResultSet rs1 = null;
  PrintWriter out = response.getWriter();
  //Establish connection to MySQL databasesome words
   //String connectionURL = "jdbc:mysql:localhost:3306/ualbcake"; //DO NOT CHANGE THE URL
  
  Connection currentCon = null;
  ResultSet rs = null;
 // ResultSet rs;
  response.setContentType("text/html");
  try {
 // Load the database driver
  Class.forName("com.mysql.jdbc.Driver");
  currentCon = ConnectionManager.getConnection();
  // Get a Connection to the database
  //connection = DriverManager.getConnection(connectionURL, "root", "root"); //DO NOT CHANGE THIS LINE
 String name = request.getParameter("name");
 String phone = request.getParameter("phone");
 String username = request.getParameter("username");
 String password = request.getParameter("password");
 String address = request.getParameter("address");
 String zipcode = request.getParameter("zip");
 String city = request.getParameter("city");
 String state = request.getParameter("state");
 String type = request.getParameter("userType");
 
 String sql = "insert into users(name,phone,username,password,address,zipcode,city,state,userType) values ('"+name+"','"+phone+"','"+username+"','"+password+"','"+address+"','"+zipcode+"','"+city+"','"+state+"','"+type+"') ";
 
  Statement s = currentCon.createStatement();
  s.executeUpdate (sql);
  rs = s.getResultSet();
  rs.close ();
  s.close ();
  }catch(Exception e){
  System.out.println("Exception is ;"+e);
  }

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);
  if (dispatcher != null){
dispatcher.forward(request, response);
  } 
  }
}