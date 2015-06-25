package project;

import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;



public class OrderHistory extends HttpServlet{



  private ServletConfig config;

  //Setting JSP page

  String page="OrderHistory.jsp";



  public void init(ServletConfig config)

  throws ServletException{

 this.config=config;

 }

  public void doGet(HttpServletRequest request, HttpServletResponse response)

    throws ServletException,IOException
{

 

  PrintWriter out = response.getWriter();

  //Establish connection to MySQL database

  Connection currentConn = null;
  ResultSet rs = null;
  //String connectionURL = "jdbc:mysql://127.12.221.2:3306/ualbanycakeshop";


  

  response.setContentType("text/html");

  List dataList= new ArrayList(); 

  try {

 // Load the database driver

  Class.forName("com.mysql.jdbc.Driver");
  currentConn = ConnectionManager.getConnection();
  // Get a Connection to the database

 // connection = DriverManager.getConnection(connectionURL, "root", "root"); 
  //connection = DriverManager.getConnection(connectionURL, "adminesB9t5b", "HW8tjW5hhy_B"); 
  
  HttpSession session = request.getSession(true);
  String sessionUser = session.getAttribute("currentSessionUser").toString();

  String sql = "select * from orderhistory where username='"+sessionUser+"'";
//  String sql = "select * from orderhistory";


 

 

  
  Statement s = currentConn.createStatement();


  s.executeQuery (sql);
 

  rs = s.getResultSet();



  while (rs.next ()){

  //Add records into data list
  dataList.add(rs.getString("image"));
  dataList.add(rs.getString("cakeName"));
  dataList.add(rs.getString("cakeId"));
  dataList.add(rs.getString("seller"));
  dataList.add(rs.getString("cost"));
  dataList.add(rs.getString("quantity"));
  dataList.add(rs.getString("conf_id"));
  dataList.add(rs.getString("orderstatus"));
  
  
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

}

