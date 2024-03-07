
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.*;


public class AddBalance extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("""
                        <style>
                        *{
                        margin:0px;
                        padding:0px;
                        }
                        header{
                        width:100%;
                        height:300px;
                        display:flex;
                        align-items:center;
                        justify-content:center;
                        
                        }
                        div{
                        width:20%;
                        height:237px;
                        background:#13a8e1;
                        display: flex;
                            flex-direction: column;
                            align-items: center;
                            justify-content: center;
                        border-radius: 11px;
                        box-shadow:0px 0px 30px gray;
                        }
                        a{
                        margin-top:31px;
//                        border:2px solid black;
                        padding:5px 20px;
                        background:#13a8e1;
                        text-decoration:none;
                        transitionn:0.5s;
                        color:white;
                        border-radius: 7px;
                        }
                       a:hover{
                        color:white;
                        
                        }
                        section{
                        background:#fdc300;
                        width:200px;
                        height:150px;
                             display: flex;
                            flex-direction: column;
                            align-items: center;
                            justify-content: center;    
                        box-shadow:0px 0px 30px gray;
                        
                        }
                        h1{
                        color:black;
                        
                        }
                        p{
                        text-transform: capitalize;
                            color: white;
                            font-size: 28px;
                            position: relative;
                            top: -16px;
                        }
                        
                        
                        }
                        </style>
                        """);
            out.println("</head>");
               out.println("<body>");
              
                try{
          long db_amount=0; 
          String name="";
          long amount= Long.parseLong(request.getParameter("amount"));
          int pin  = Integer.parseInt(request.getParameter("pin"));
         
              
          
          Class.forName("com.mysql.cj.jdbc.Driver");
          Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
          String sql = "select * from account_details where upi_pin =?";
          PreparedStatement psmt = con.prepareStatement(sql);
          psmt.setInt(1,pin);
          ResultSet res = psmt.executeQuery();
          if(res.next()){
             
               name = res.getString("user_name");
              db_amount =res.getLong("account_balance");
              
              
             
          }
           long updated_amount=db_amount+amount;
          String sql1 = "update  account_details  set account_balance=? where upi_pin=?";
          PreparedStatement update   = con.prepareStatement(sql1);
          update.setLong(1,updated_amount);
          update.setInt(2, pin);
          int upOrNot=update.executeUpdate();
          if(upOrNot>0){
              out.println("<script>alert('account balance updated sucessfully')</script>");
              out.println("<header>");
              out.println("<div>");
              out.println("<p>hello "+name+"</p>");
              out.println("<section>");
              out.println("<h1>Amount:" +updated_amount+"</h1>");
              out.println("<a href='./profile.jsp'>GO Back</a>");
              out.println("</section>");
              out.println("</div>");
              out.println("</header>");
          }
          else{
               out.println("<script>alert('some internal error occured')</script>");
          }
         
          }
          catch(Exception e){ 
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
