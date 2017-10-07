/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.RawatDao;
import com.tabeldata.dao.RuangDao;
import com.tabeldata.model.Rawat;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author iyus
 */
@WebServlet(urlPatterns="/rawat/checkout")
public class RawatCheckoutController extends HttpServlet{
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Rawat rawat = new Rawat();
        
        try {
            Integer kodeRawat = Integer.valueOf(req.getParameter("kodeRawat"));
            new RawatDao().delete(kodeRawat);
            
            Integer kodeRuang = Integer.valueOf(req.getParameter("kodeRuang"));
            rawat.setRuang(new RuangDao().fingById(kodeRuang));
            new RawatDao().checkout(rawat);
            
        } catch (SQLException ex) {
            Logger.getLogger(RawatCheckoutController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //resp.sendRedirect(req.getServletContext().getContextPath() + "/rawat/");
        
        
    }
}
