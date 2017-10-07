/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.RawatDao;
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
@WebServlet(urlPatterns="/rawat/delete")
public class RawatDeleteController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Integer kodeRawat = Integer.valueOf(req.getParameter("kodeRawat"));
            new RawatDao().deletes(kodeRawat);
        } catch (SQLException ex) {
            Logger.getLogger(RawatDeleteController.class.getName()).log(Level.SEVERE, null, ex);
        }
        resp.sendRedirect(req.getServletContext().getContextPath() + "/rawat/");
    }
        
        
}
