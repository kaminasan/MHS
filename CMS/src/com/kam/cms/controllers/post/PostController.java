/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.kam.cms.controllers.post;

import com.kam.SQL.DAO.PostDAO;
import com.kam.cms.PostBean;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Blacksteath
 */
public class PostController extends HttpServlet {
   
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PostDAO dao = new PostDAO();
        PostBean attachPost = null;
        String postId = request.getParameter("post");
        ServletContext sc = request.getServletContext();
        RequestDispatcher view = sc.getRequestDispatcher("/WEB-INF/post.jsp");
        
        if(postId == null || postId.equals("")){
            attachPost = dao.getSpecificPost("1");
            
            request.setAttribute("post", attachPost);
        view.forward(request, response);
    }
        else{
            attachPost = dao.getSpecificPost(postId);
            if(attachPost == null) attachPost = dao.getSpecificPost("1");
            request.getSession().setAttribute("post", attachPost);
            view.forward(request, response);
        }
    } 

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
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
