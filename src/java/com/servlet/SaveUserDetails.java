
package com.servlet;

import com.bank.user.UserDetails;
import com.bank.Connector.DbConnect;
import com.bank.helper.ActivityDao;
import com.bank.helper.UserDao;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@MultipartConfig
public class SaveUserDetails extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            try{
                Thread.sleep(2000);
            }
            catch(Throwable r){
                r.printStackTrace();
            }
            String email = request.getParameter("user_mail");
            ActivityDao ad = new ActivityDao(DbConnect.getConnect());
            boolean b1 = ad.isEmailPresentForForgotUsername(email);
            if(b1){
                out.println("Email Already Present");
            }
            else{
                String name = request.getParameter("user_name");
                String father_name = request.getParameter("user_fname");
                long user_mob = Long.parseLong(request.getParameter("user_mobnumber"));
                String gender = request.getParameter("user_gender");
                
                long user_addhar = Long.parseLong(request.getParameter("user_addhar"));
                String user_pan = request.getParameter("user_pan");
                int active = 0;
                
                UserDetails details = new UserDetails(name, father_name, user_mob, gender, email, user_addhar, user_pan, active);

                UserDao use_ref = new UserDao(DbConnect.getConnect());
                if (use_ref.setData(details)) {
                    out.print("done");
                } else {
                    out.println("error");
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
