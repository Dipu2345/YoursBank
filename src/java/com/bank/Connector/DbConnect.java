
package com.bank.Connector;
import java.sql.*;

public class DbConnect {
   public static  Connection con;
    
    public static Connection getConnect(){
        if(con==null){
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
            }
            catch(Throwable e){
               e.printStackTrace();
            }
        }
        
        return con;
    }
   
}
