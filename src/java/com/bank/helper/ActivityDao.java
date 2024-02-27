
package com.bank.helper;

import com.bank.user.AtmDetails;
import java.sql.*;
public class ActivityDao {
    
    Connection con=null;
    public ActivityDao(Connection con){
       
            this.con=con;
        
    }
    
    
    public long getAccountNumber(int user_id){
        long ac_no=0;
        try {
            String sql = "select * from account_details where user_id = ?";
            PreparedStatement ps  = con.prepareStatement(sql);
            ps.setInt(1,user_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                ac_no = rs.getLong("account_number");
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ac_no;
    }
    
    public boolean applyAtmCard(int user_id,long ac_no,long atm_no,int cvv){
        boolean b=false;
        try {
            String sql = "insert into atm_details(user_id,account_no,atm_no,cvv)values(?,?,?,?)";
            PreparedStatement p = con.prepareStatement(sql);
            p.setInt(1,user_id);
            p.setLong(2, ac_no);
            p.setLong(3, atm_no);
            p.setInt(4, cvv);
            p.executeUpdate();
            b=true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }
    
    public boolean checkAtmAppliedOrNot(int user_id){
        boolean b=false;
        try {
            String sql = "select * from atm_details where user_id =?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                b=true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }
    
    public AtmDetails getAtmDetails(int user_id){
        AtmDetails atm_details=null;
        try {
            String sql ="select * from atm_details where user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                int atm_id = rs.getInt("atm_id");
                long account_no = rs.getLong("account_no");
                long atm_no = rs.getLong("atm_no");
                int cvv = rs.getInt("cvv");
                Timestamp active_time = rs.getTimestamp("date_of_issue");
                int atm_pin = rs.getInt("atm_pin");
                atm_details = new AtmDetails(atm_id, user_id, account_no, atm_no, cvv, active_time, atm_pin);
            }
            
        } catch (Exception e) {
        e.printStackTrace();
        }
        return atm_details;
        
    }
    
    public boolean checkAccountActivated(int user_id){
        boolean b=false;
        try {
            String sql = "select * from users where user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            int active = 0;
            while(rs.next()){
                active = rs.getInt("active_account");
            }
            if(active==1){
                b=true;
            }
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return b;
    }
    
    public boolean setAtmpin(long atm_no,int atm_pin){
        boolean b= false;
        try {
            String sql = "update atm_details set atm_pin=? where atm_no=?";
            PreparedStatement ps  = con.prepareStatement(sql);
            ps.setInt(1, atm_pin);
            ps.setLong(2, atm_no);
           int dat = ps.executeUpdate();
            if(dat>0){
              
                b=true;
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return b;
    }
//    public boolean changeAtmPin(long atm_no , int atm_pin){
//        boolean b = false;
//        try {
//            String s = "update "
//        } catch (Exception e) {
//        }
//        return b;
//    }
}

