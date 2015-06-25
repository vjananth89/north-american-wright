package project;


import java.io.*;
import java.util.*;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.http.*;

public class ConfirmOrder extends HttpServlet{

  private ServletConfig config;
  //Setting JSP page
  String page="OrderPlaced.jsp";
  public void init(ServletConfig config)
  throws ServletException{
 this.config=config;
 }
  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException,IOException
{
  PrintWriter out = response.getWriter();
  //Establish connection to MySQL databasesome words
 // String connectionURL = "jdbc:mysql://127.12.221.2:3306/ualbanycakeshop"; //DO NOT CHANGE THE URL
 // String connectionURL = "jdbc:mysql://localhost:3306/ualbcake"; //DO NOT CHANGE THE URL
  Connection currentConn= null;
  ResultSet rs;
  response.setContentType("text/html");
  try {
 // Load the database driver
  Class.forName("com.mysql.jdbc.Driver");
  currentConn = ConnectionManager.getConnection();
  // Get a Connection to the database

  
  
  
 //connection = DriverManager.getConnection(connectionURL, "root", "root"); //DO NOT CHANGE THIS LINE
  //connection = DriverManager.getConnection(connectionURL, "adminesB9t5b", "HW8tjW5hhy_B"); //DO NOT CHANGE THIS LINE
 String image = request.getParameter("image");
 String cakeName = request.getParameter("cakeName");
 String cakeId = request.getParameter("cakeId");
 String seller = request.getParameter("seller");
 String cost = request.getParameter("cost");
 String quantity = request.getParameter("quantity");
 String conf_id = request.getParameter("conf_id");
 String orderstatus = request.getParameter("orderstatus");
 HttpSession session = request.getSession(true);
 String user1 = session.getAttribute("currentSessionUser").toString();
 
 String sql = "insert into orderhistory(image,cakeName,cakeId,seller,cost,quantity,conf_id,username,orderstatus) values ('"+image+"','"+cakeName+"','"+cakeId+"','"+seller+"','"+cost+"','"+quantity+"','"+conf_id+"','"+user1+"','"+orderstatus+"') ";
 String sql2 = "delete from shoppingcart where cakeName='"+cakeName+"' and username='"+user1+"'";
  Statement s = currentConn.createStatement();
  Statement s1 = currentConn.createStatement();
  s.executeUpdate (sql);
  s1.executeUpdate (sql2);
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
