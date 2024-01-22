
package com.bank.helper;
import com.bank.user.UserDetails;
import java.sql.*;
public class UserDao {
        public Connection con;
        public UserDao(Connection con){
            this.con=con;
        }
    
        public boolean setData(UserDetails user){
            boolean b=false;
            try{
                String sql = "insert into users(user_name,user_fname,user_mob,gender,email,addhar,pan,active_account)values(?,?,?,?,?,?,?,?)";
                PreparedStatement psmt = con.prepareStatement(sql);
                psmt.setString(1, user.getUser_name());
                psmt.setString(2, user.getUser_fname());
                psmt.setLong(3, user.getUser_mobile());
                psmt.setString(4,user.getGender());
                psmt.setString(5, user.getMail());
                psmt.setLong(6, user.getAddhar());
                 psmt.setString(7, user.getPan());
                  psmt.setInt(8, user.getActive());
                psmt.executeUpdate();
                b=true;
                
                
            }
            catch(Throwable e){
                e.printStackTrace();
            }
            
            return b;
        }
}
