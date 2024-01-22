
package com.servlet;

import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.*;

@MultipartConfig
public class UpdateImage extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateImage</title>");   
            out.println("""
                        <script>
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
                        
                        </scipt>
                        """);
            out.println("</head>");
            out.println("<body>");
             Part part = request.getPart("user_image");
               String file_name = part.getSubmittedFileName();
               out.print(file_name);
               HttpSession sson  = request.getSession();
               int id = (int)sson.getAttribute("id");
                       out.println(id);
           try{
               Class.forName("com.mysql.cj.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
              out.println("connected");
              String sql="Update users set image=? where user_id=?";
              PreparedStatement psmt  = con.prepareStatement(sql);
              psmt.setString(1, file_name);
              psmt.setInt(2, id);
               int check_upload =  psmt.executeUpdate();
             String path ="C:\\Users\\DEBASHIS\\OneDrive\\Documents\\NetBeansProjects\\Banks\\web\\image\\"+file_name;
             out.println(path);
             InputStream is  = part.getInputStream();
                try (FileOutputStream fos = new FileOutputStream(path)) {
                    byte[]data = new byte[is.available()];
                    is.read(data);
                    fos.write(data);
             if(check_upload>0){
                 out.println("<script>alert('Image Updated Sucessfully')</script>");
                 Thread.sleep(2000);
                 RequestDispatcher rs  = request.getRequestDispatcher("profile.jsp");
                 rs.forward(request, response);
            
             }
             else{ 
                   out.println("<script>alert('Some Internal Error Occured')</script>");
             }
                }
           }
           catch(Throwable e){
               out.println(e);
               out.println("Please Insert image Properly");
               out.println("<a href='profilejsp'>Go Back</a>");
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
