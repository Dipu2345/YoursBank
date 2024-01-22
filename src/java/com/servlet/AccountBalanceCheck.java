/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import jakarta.servlet.*;
import java.sql.*;

/**
 *
 * @author DEBASHIS
 */
public class AccountBalanceCheck extends HttpServlet {

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
            out.println("<title>Servlet AccountBalanceCheck</title>"); 
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11\"></script>");
           out.println("<link rel=\'stylesheet\' href=\'./../../../../web/accountBalance.css\'>");
           out.println("""
                       <style>
                       
                         #a{
                          text-decoration:none;
                          color:white;
                          padding:5px 10px;
                          margin-top:30px;
                          position:relative;
                          top:20px;
                          left:40%;
                          transition:0.3s;
                          background:#068bed;
                          border:1px solid black;
                                               
                         }
                        #a:hover{
                          transform: scale3d(1.5, 1.5, 1.5);
                          color:black;
                          border:1px solid black;
                        }
                                               
                       #aaa{
                       text-decoration:none;
                       color:white;
                       padding:5px 10px;
                       margin-top:30px;
                       position:relative;
                       top:20px;
                       transition:0.3s;
                       
                       }
                       #aaa:hover{
                       transform: scale3d(1.5, 1.5, 1.5);
                       color:black;
                       border:1px solid #03bbff;
                       
                       }
                       h1{
                       color:white;
                       }
                       #sa{
                       background:blue;
                       color:white; 
                         padding:5px 10px;
                         text-decoration:none;
                        margin-top:30px;
                       position:relative;
                       top:20px;
                       left:40%;
                        transition:0.3s;
                       }
                       #sa:hover{
                        transform: scale3d(1.5, 1.5, 1.5);
                                              color:black;
                                              border:1px solid #03bbff;
                       }
                       
                       </style>
                       """);
            out.println("</head>");
            out.println("<body>");
           
            try{
              Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root"); 
               
                String upi = request.getParameter("password");
                String sql = "select account_balance from account_details where upi_pin=?";
                PreparedStatement psmt = con.prepareStatement(sql);
                psmt.setString(1, upi);
                ResultSet res = psmt.executeQuery();
                if(res.next()){
                    int balance = res.getInt(1);
                    out.println("<div style='display:flex;justify-content:center;width:100%;height:250px;align-item:center'>");
                    out.println("<div style='height:200px;width:400px;background:#9b9ba6;text-align:center'>");
                   
                    out.println("<h1>Account balance is"+balance+"</h1>");
                    out.println("<a id='aaa' style='border:1px solid black; background:#03bbff;' href='profile.jsp' class='back'>click to go back</a>");
                   out.println("</div>");
                   out.println("</div>");
                }
                else{
                    out.println("<script>alert('Sorry !.Wrong Pin entered')</script>");
                    out.println("<a id='a'  href='./profile.jsp'>click to go back</a>");
//                    Thread.sleep(4000);
//                    RequestDispatcher rsp = request.getRequestDispatcher("./profile.jsp");
//                   rsp.forward(request, response);
//                    
                }
            }catch(Exception e){
                out.println(e);
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
