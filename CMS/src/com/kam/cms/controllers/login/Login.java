/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.kam.cms.controllers.login;





import com.kam.SQL.DAO.UserDAO;
import com.kam.cms.UserBean;
import java.io.IOException;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Blacksteath
 */
public class Login extends HttpServlet {
   
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
         System.out.println("We are gonna send the user back to : " + request.getRequestURL());
        RequestDispatcher view = request.getRequestDispatcher("/loguserin");
        if(request.getSession().getAttribute("user") == null){
         view.forward(request, response);
    }
       
    } 

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("/userlogin");
        UserDAO dao = new UserDAO();
        String userPass = request.getParameter("userPass");
        String userName = request.getParameter("userName");
        System.out.println("Now attempting to call getSpecificUser with username: " + userName + "and password: " + userPass);
        boolean userExists = dao.userInDatabase(userName, userPass);
        
        if(!userExists){
            
            request.setAttribute("errorMessage", "Error, username or password INCORRECT");
            view.forward(request, response);
        }
        else{
         
        UserBean returnUser = dao.getSpecificUser(userName,userPass);
        request.getSession().setAttribute("user", returnUser);
        response.sendRedirect("/");
    }
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
