
package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpSession;
import java.sql.*;
import com.bank.user.UserDetails;



public class Login extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        
            String user_name  = request.getParameter("name");
            long user_mob = Long.parseLong(request.getParameter("mob"));
            
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
                //out.println("table connected");
              String sql = "select * from users where user_name=? and user_mob = ?"; 
              PreparedStatement psmt = con.prepareStatement(sql);
              psmt.setString(1, user_name);
              psmt.setLong(2, user_mob);
              ResultSet res = psmt.executeQuery();
              if(res.next()){
                  int user_id = res.getInt("user_id");
                  String name  = res.getString("user_name");
                  String fname = res.getString("user_fname");
                  long mob_no = res.getLong("user_mob");
                  String gender = res.getString("gender");
                  String email = res.getString("email");
                  long addhar = res.getLong("addhar");
                  String pan = res.getString("pan");
                  String image = res.getString("image");
                  int active_account = res.getInt("active_account");
                  System.out.println(user_id+" "+name);
                  HttpSession session = request.getSession();
                  session.setAttribute("id", user_id);
                  session.setAttribute("name", name);
                 UserDetails u = new UserDetails(user_id,name, fname, mob_no, gender, email, addhar, pan,image,active_account);
                  session.setAttribute("currentUser", u);
              
             String type = "user";
             HttpSession sson = request.getSession();
             sson.setAttribute("type",type);
             out.println("success");
              }
              else{
                  out.println("error");
              }
              
            }
            catch(Exception e){
                out.println("error ");
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
