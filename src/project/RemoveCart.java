package project;

import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;



public class RemoveCart extends HttpServlet{



  private ServletConfig config;

  //Setting JSP page

  String page="RemoveFromCart.jsp";



  public void init(ServletConfig config)

  throws ServletException{

 this.config=config;

 }

  public void doGet(HttpServletRequest request, HttpServletResponse response)

    throws ServletException,IOException
{

 

  PrintWriter out = response.getWriter();

  //Establish connection to MySQL database

 //String connectionURL = "jdbc:mysql://localhost:3306/";
//  String connectionURL = "jdbc:mysql://127.12.221.2:3306/ualbanycakeshop";

  Connection currentConn= null;

  ResultSet rs;

  response.setContentType("text/html");

  List dataList= new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("com.mysql.jdbc.Driver");
  currentConn = ConnectionManager.getConnection();
  // Get a Connection to the database

  //connection = DriverManager.getConnection(connectionURL, "root", "root"); 
  //connection = DriverManager.getConnection(connectionURL, "adminesB9t5b", "HW8tjW5hhy_B");
  String cakeName = request.getParameter("cakeName");

 //String sql = "delete from ualbcake.shoppingcart where cakeName ='"+cakeName+"'";
 String sql = "delete from shoppingcart where cakeName ='"+cakeName+"'";

  
  Statement s = currentConn.createStatement();

  s.executeUpdate(sql);



  s.close ();

  }catch(Exception e){

  System.out.println("Exception is ;"+e);

  }


 


  //Disptching request

  RequestDispatcher dispatcher = request.getRequestDispatcher(page);

  if (dispatcher != null){

  dispatcher.forward(request, response);

  } 

  }



}