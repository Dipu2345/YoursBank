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
import com.bank.Connector.DbConnect;
import com.bank.user.UserDetails;
import com.bank.helper.UserDao;
import com.bank.helper.ActivityDao;
import jakarta.servlet.http.HttpSession;


public class ApplyForAtm extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ApplyForAtm</title>");    
             out.println("  <script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");  
           
            out.println("</head>");
            out.println("<body>");
           HttpSession session = request.getSession();
           UserDetails user = (UserDetails) session.getAttribute("currentUser");
           String name= request.getParameter("name");
           long account_no = Long.parseLong(request.getParameter("account_number"));
           long atm_no = Long.parseLong(request.getParameter("atm_no"));
           int cvv = Integer.parseInt(request.getParameter("cvv"));
//           out.println(name);
//           out.println(account_no);
//           out.println(atm_no);
//           out.println(cvv);
//           out.println(user.getUser_id());
           ActivityDao d = new ActivityDao(DbConnect.getConnect());
           boolean b = d.applyAtmCard(user.getUser_id(),account_no, atm_no, cvv);
            if(b){
//                out.println("success");  
                out.println("""
                            <script>
                            swal(" ATM Applied Successfully .")
                            .then((value) => {
                             window.location="profile.jsp";
                            });
                            
                            </script>
                            """);
              
            }
            else{
//                out.println("error");
                        }
            
            
             out.println("  <script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");
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
