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
import jakarta.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author DEBASHIS
 */
public class UserActiveAccount extends HttpServlet {

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
            out.println("<title>Servlet UserActiveAccount</title>");
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11\"></script>");
            out.println("""
                        <style>
                                    #set_img{
                                        width: 50%;
                                        height: 550px;
                                    }
                                    #sec{
                                        width: 100%;
                                        height:550px;
                                        display: flex;
                                        align-items: center;
                                        justify-content: center;
                                        
                                    }
                                    .BackBtn{
                                        text-decoration: none;
                                        border: 1px solid black;
                                            position: absolute;
                                         top: 447px;
                                         left: 600px;
                                         padding: 6px 20px;
                                         background-color: #007dfe;
                                         color: white;
                                         transition: 0.7s;
                                    }
                                    .BackBtn:hover{
                                        border: 1px solid #007dfe;
                                        box-shadow: 0px 0px 10px black;
                                    }
                                    .goBtn{
                                        position: absolute !important;
                                            top: 355px !important;
                                            left: 400px !important;
                                            width: 34% !important;
                                            text-align: center;
                                        
                        
                                        
                                            }
                        
                        </style>
                        """);
            out.println("</head>");
            out.println("<body>");
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank", "root", "root");
                HttpSession sson = request.getSession();
                int id = (int) sson.getAttribute("id");
                String name = (String) sson.getAttribute("name");
                long account_no = Long.parseLong(request.getParameter("account"));
                int pin = Integer.parseInt(request.getParameter("pin"));
//                out.print(id);
//                out.println(name);
//                out.println(account_no);
//                out.print(pin);
                int balance = 0;
                String sql = "INSERT INTO account_details(user_id,user_name,account_number,upi_pin,account_balance)values(?,?,?,?,?)";
                PreparedStatement psmt = con.prepareStatement(sql);
                psmt.setInt(1, id);
                psmt.setString(2, name);
                psmt.setLong(3, account_no);
                psmt.setInt(4, pin);
                psmt.setInt(5, balance);
                int res = psmt.executeUpdate();

                String sql1 = "update users set active_account=? where user_id=?";
                PreparedStatement psmt1 = con.prepareStatement(sql1);
                int active = 1;
                psmt1.setInt(1, active);
                psmt1.setInt(2, id);
                int check = psmt1.executeUpdate();

//                if (check > 0) {
//                    HttpSession sson1 = request.getSession();
//                    sson1.setAttribute("active_account", id);
//                }
                if (res > 0) {
                    out.println("""
                                <script>
                                Swal.fire({
                                  title: "Good job!",
                                  text: "Account Activated Sucessfully!",
                                  icon: "success"
                                });
                                
                                </script>
                                """);
                    out.println("""
                           <section id='sec'>
                                     <div id="set_img">
                                     <img src="./image/account_activatedsucess.png" alt="alt" width="100%" height="347px"/>
                                     <a class="BackBtn goBtn" href="./profile.jsp" >GO Back</a>
                                     </div>
                                     </section>
                                
                                
                                """);
                    out.println("<script>window.open('profile.jsp',_)</script>");
                }
//           out.println("servlet ");
            } catch (Throwable e) {
                out.println("""
                    <script>Swal.fire({
                                                    icon: "error",
                                                    title: "Oops...",
                                                    text: "Session Timeout ! Please Login",
                                                    footer: '<a href="./login.jsp"> Click Here To Login Again</a>'
                                                  });</script>
                            
                            
                            """);
                out.println("""
                              <section id='sec'>
                                      <div id="set_img">
                                      <img src="./image/session_timeout.jpg" alt="alt" width="100%" height="100%"/>
                                      <a class="BackBtn" href="./login.jsp">Login</a>
                                      </div>
                                      </section>    
                            """);
//    e.printStackTrace();

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
