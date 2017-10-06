/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.PasienDao;
import com.tabeldata.model.Pasien;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author iyus
 */
@WebServlet(urlPatterns={"/pasien/list","/pasien"})
public class PasienListController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Pasien> listPasien = null;
        try {
            listPasien = new PasienDao().findAll();
        } catch (SQLException ex) {
            Logger.getLogger(PasienListController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        req.setAttribute("listPasien", listPasien);
        req.getRequestDispatcher("/pages/pasien/listPasien.jsp").forward(req, resp);
        
    }
    
}
