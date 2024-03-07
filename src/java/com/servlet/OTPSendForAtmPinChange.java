
package com.servlet;

import com.bank.helper.sendEmail;
import com.bank.user.UserDetails;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Random;

public class OTPSendForAtmPinChange extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
            String type = request.getParameter("type");
           HttpSession sson = request.getSession();
            if(type.equals("sendotp")){
                
              
                UserDetails us = (UserDetails)sson.getAttribute("currentUser");
                String from = "debashispandadipu@gmail.com";
                String subject = "Yours Bank ";
                String to = us.getMail();
                
                
                 String otp = "";
                Random r = new Random();
                for(int i = 1;i<=4;i++){
                    otp +=String.valueOf( r.nextInt(9));
                   
                }
                String final_otp = "Your OTP IS: "+otp;
            
               
                
            if(sendEmail.sendEmailToUser(final_otp, subject, from, to)){
                out.print("send");
                sson.setAttribute("currentOtp",otp);
                
            }
            else{
                out.print("otperror");
            }
            
                
            }
            else if(type.equals("verifyotp")){
                String otp_to_verify = request.getParameter("otpis");
                String oldotp = (String)sson.getAttribute("currentOtp");
                if(otp_to_verify.equals(oldotp)){
                    out.println("otpisVerified");
                    sson.removeAttribute("currentOtp");
                }
                else{
                   
                    
                    out.print("OTPNOTVERIFIED");
                }
                
                
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
