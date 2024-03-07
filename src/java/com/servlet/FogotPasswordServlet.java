
package com.servlet;

import com.bank.Connector.DbConnect;
import com.bank.helper.ActivityDao;
import com.bank.helper.sendEmail;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Random;

public class FogotPasswordServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         try{
             Thread.sleep(2000);
           String to = request.getParameter("forgot_email");
            ActivityDao acd = new ActivityDao(DbConnect.getConnect());
          if(acd.isEmailPresentForForgotUsername(to)){
              
          
           try{
               
            Random rand = new Random();
             String message ="Your OTP is : ";
            String from ="debashispandadipu@gmail.com";
           
            String subject ="Yours Bank";
             String temp="";
            for(int i=1;i<=4;i++){
               temp += String.valueOf(rand.nextInt(9));
                
            }
            message=temp;
           
         boolean res = sendEmail.sendEmailToUser(message, subject, from, to);
         if(res){
             out.print("sucessful");
             HttpSession sson = request.getSession();
             sson.setAttribute("changeUserEmail",to);
             sson.setAttribute("otp",temp);
         }
         else{
             out.println("error");
         }
         }catch(Throwable e){
            e.printStackTrace();
        }
           
          }else{
              out.println("notpreset");
          }
        
        }catch(Throwable e){
            e.printStackTrace();
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
