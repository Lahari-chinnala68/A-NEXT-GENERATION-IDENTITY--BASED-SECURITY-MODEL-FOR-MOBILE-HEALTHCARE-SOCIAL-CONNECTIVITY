/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.upload;

import com.database.Queries;
import com.oreilly.servlet.MultipartRequest;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author KishanVenky
 */
@MultipartConfig(maxFileSize=1024*1024*50)
public class FileUplaod extends HttpServlet {

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
           HttpSession session=request.getSession();
        PrintWriter out = response.getWriter();
        final String filepath ="E:\\";
        try{
       MultipartRequest m = new MultipartRequest(request, filepath);
            File f=m.getFile("file");
       String filename=f.getName();
            String username=(String)session.getAttribute("username");
              String id=(String)session.getAttribute("id");
            
         String type=m.getParameter("type");  
         String symptoms=m.getParameter("symptoms");
         BufferedReader br=new BufferedReader(new FileReader(f));
             StringBuffer sb = new StringBuffer();
            String temp = null;

            while ((temp = br.readLine()) != null) {
                sb.append(temp);
                
            }
           String data=sb.toString();
          System.out.println("++++++"+data);
          
           KeyGenerator keygen=KeyGenerator.getInstance("AES");
           keygen.init(128);
           SecretKey s=keygen.generateKey();
           //converting secret keyto string
           byte[] b=s.getEncoded();//encoding secret key
           String skey=Base64.encode(b);
          System.out.println("secret key:"+skey);   
          String cipher=new encryption().encrypt(data,s);
         
          
         String query="insert into files values(null,'"+username+"','"+id+"','"+type+"','"+symptoms+"','"+filename+"','"+data+"','"+cipher+"','"+skey+"')";
         int i=Queries.getExecuteUpdate(query);
                 if(i>0){
                 response.sendRedirect("UploadData.jsp?msg=success");      
                 }else{
                  response.sendRedirect("UploadData.jsp?msg=failed");       
                 }
         
    }catch(Exception e){
     System.out.println(e);   
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
