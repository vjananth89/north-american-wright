package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
* Servlet implementation class AuthServlet
*/
@WebServlet("/AuthServ")
public class AuthServ extends HttpServlet {
private static final long serialVersionUID = 1L;
 
/**
* @see HttpServlet#HttpServlet()
*/
public AuthServ() {
super();
}
 
/**
* @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
* response)
*/
@Override
protected void doGet(HttpServletRequest request,
HttpServletResponse response) throws ServletException, IOException {
}
 
/**
* @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
* response)
*/
@Override
protected void doPost(HttpServletRequest request,
HttpServletResponse response) throws ServletException, IOException {
String username = request.getParameter("username");
PrintWriter out = response.getWriter();
 
if (username != null && username.trim().length() > 0) {
 
String sql = "SELECT * FROM users WHERE username='"
+ username.trim() + "' LIMIT 1";
Connection connection = null;
ResultSet resultSet = null;
 
try {
connection = DB.getDBConnection();
resultSet = DB.getDBResultSet(connection, sql);
if (resultSet != null) {
if (resultSet.next()) {
out.print("<span style=\"color:red;\">Bad luck! This is username is already taken!</span>");
} else {
out.print("<span style=\"color:green;\">Wonderful! Username is available</span>");
}
}
} catch (SQLException e) {
e.printStackTrace();
} finally {
if (resultSet != null) {
try {
DB.closeResultSet(resultSet);
} catch (SQLException e) {
e.printStackTrace();
}
}
if (connection != null) {
try {
DB.closeDBConnection(connection);
} catch (SQLException e) {
e.printStackTrace();
}
}
}
} else {
out.print("<span style=\"color:red;\">Username is required field.</span>");
}
}
 
}