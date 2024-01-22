/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.*;
import java.sql.*;
import static javax.management.Query.div;



/**
 *
 * @author DEBASHIS
 */
public class CreateAccount extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CreateAccount</title>");            
            out.println("</head>");
            out.println("<body style='margin:0px;padding:0px;'>");
//           try{
//               
//              Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","dipu");
//               out.println("<h1>connected</h1>");
//           }
//           catch(ClassNotFoundException | SQLException e){
//               e.printStackTrace();
//               out.println("eerror");
//           }
            try{
                   String name = request.getParameter("user_name");
                String father_name  = request.getParameter("user_fname");
                long user_mob = Long.parseLong(request.getParameter("user_mobnumber"));
//                long user_mob = Long.parseLong(mob);
                String gender = request.getParameter("user_gender");
                String email = request.getParameter("user_mail");
                long user_addhar =Long.parseLong(request.getParameter("user_addhar"));
                String user_pan = request.getParameter("user_pan");
               Class.forName("com.mysql.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
              
               String sql = "INSERT INTO users(user_name,user_fname,user_mob,gender,email,addhar,pan,active_account) VALUES(?,?,?,?,?,?,?,?)";
               PreparedStatement psmt = con.prepareStatement(sql);
               psmt.setString(1,name );
               psmt.setString(2,father_name );
                psmt.setLong(3,user_mob );
               
                psmt.setString(4,gender );
                psmt.setString(5,email );
                psmt.setLong(6,user_addhar );
                psmt.setString(7,user_pan );
                int actv = 0;
                psmt.setInt(8, actv);
             int inssrted = psmt.executeUpdate();
             if(inssrted>0){
                 out.println("<div style='background:#565676c4; height:100px;text-align:center;border-top-right-radius: 361px;border-bottom-left-radius:357px;padding:71px;margin-top:30px'>");
               out.println("<h2 style='color:#e0e0e0;padding-top:20px;'>Account Created Sucessfully<h2>");
               out.println("<a href='./login.jsp  'style='color:#002089; text-decoration:none' >Click to Login</a>");
               out.println("<script>window.alert('acccoutn created sucessfully please login')</script>");
//               RequestDispatcher rsp = request.getRequestDispatcher("login.jsp");
//               rsp.forward(request, response);
               out.println("</div>");

             }    
           }
           catch(ClassNotFoundException | SQLException e){
               e.printStackTrace();
               out.println("eerror in mysql");
           }
            out.println("</body>");
            out.println("</html>");
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
