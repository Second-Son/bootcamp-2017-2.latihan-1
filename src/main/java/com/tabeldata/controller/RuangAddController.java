/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.RuangDao;
import com.tabeldata.model.Ruang;
import static com.tabeldata.model.Ruang.ruang;
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
@WebServlet(urlPatterns={"/ruang/new"})
public class RuangAddController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/pages/ruang/addRuang.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ruang ruang = new Ruang();
        ruang.setNoRuang(req.getParameter("noRuang"));
        ruang.setKosong(Boolean.valueOf(req.getParameter("kosong")));
        
        RuangDao ruangDao = new RuangDao();
        try {
            ruangDao.save(ruang);
        } catch (SQLException ex) {
            Logger.getLogger(DokterAddController.class.getName()).log(Level.SEVERE, null, ex);
        }
        resp.sendRedirect(req.getServletContext().getContextPath()+ "/ruang/");
    }
    
}
