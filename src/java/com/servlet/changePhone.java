
package com.servlet;

//import com.sun.jdi.connect.spi.Connection;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;
import jakarta.servlet.http.*;


public class changePhone extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet changePhone</title>"); 
            out.println("<script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@11\"></script>");
            out.println("""
                        <style>
                        a{
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
                        a:hover{
                        transform: scale3d(1.5, 1.5, 1.5);
                        color:black;
                         border:1px solid black;
                        }
                        
                        
                        
                        
                        </style>
                        
                        
                        
                        """);
            out.println("</head>");
            out.println("<body>");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
                 HttpSession session = request.getSession();
                 Integer id =(Integer)session.getAttribute("id");
                 String mob_no= request.getParameter("mob_no");
                 String sql = "update users set  user_mob=? where user_id=?";
                 PreparedStatement psmt = con.prepareStatement(sql);
                 psmt.setString(1, mob_no);
                 psmt.setInt(2,id);
                 int res = psmt.executeUpdate();
                 if(res>0){
                     out.println("""
                                 <script>Swal.fire({
                                   title: "Mobile Number Updated Sucessfully",
                                   showClass: {
                                     popup: `
                                       animate__animated
                                       animate__fadeInUp
                                       animate__faster
                                     `
                                   },
                                   hideClass: {
                                     popup: `
                                       animate__animated
                                       animate__fadeOutDown
                                       animate__faster
                                     `
                                   }
                                 });</script>""");
                     
                 }
                 else{
                     
                 }
                 out.println("<a href='./profile.jsp'>Go Back</a>");
                 
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
