/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.DokterDao;
import com.tabeldata.model.Dokter;
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
@WebServlet(urlPatterns={"/dokter/edit"})
public class DokterEditController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Integer kodeDokter = Integer.valueOf(req.getParameter("kodeDokter"));
            Dokter seorangDokter = new DokterDao().findById(kodeDokter);
            req.setAttribute("dokter", seorangDokter);
            req.getRequestDispatcher("/pages/dokter/editDokter.jsp").forward(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(DokterEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Dokter dokter = new Dokter();
        dokter.setId(Integer.valueOf(req.getParameter("id")));
        dokter.setNama(req.getParameter("nama"));
        dokter.setSpesialis(req.getParameter("spesialis"));
        
        DokterDao dokterDao = new DokterDao();
        try {
            dokterDao.update(dokter);
        } catch (SQLException ex) {
            Logger.getLogger(DokterEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
        resp.sendRedirect(req.getServletContext().getContextPath() + "/dokter/");
    }
    
    
}
