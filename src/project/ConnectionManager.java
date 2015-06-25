
package project;
 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class ConnectionManager
{
    static Connection conn;
 
    public static Connection getConnection()
    {
        try
        {
        //   String url = "jdbc:mysql://127.12.221.2:3306/"; //vijay's host machine url: PLS DON'T CHANGE THIS
        //   String dbName ="ualbanycakeshop"; //host machine database name: DO NOT CHANGE 
        //   String uname = "adminesB9t5b"; //host machine database name :DO NOT CHANGE
        //   String pwd = "HW8tjW5hhy_B"; //host machine password name: DO NOT CHANGE
            
        String url = "jdbc:mysql://localhost:3306/ualbcake"; //vijay's host machine url: PLS DON'T CHANGE THIS
       //host machine database name: DO NOT CHANGE 
        String uname = "root"; //host machine database name :DO NOT CHANGE
        String pwd = "root"; //host machine password name: DO NOT CHANGE
 
            Class.forName("com.mysql.jdbc.Driver");
            try
            {
                conn = DriverManager.getConnection(url,uname,pwd);
            }
            catch (SQLException ex)
            {
                ex.printStackTrace();
            }
        }
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        return conn;
    }
 
}