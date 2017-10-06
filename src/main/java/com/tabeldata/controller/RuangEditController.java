/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.controller;

import com.tabeldata.dao.RuangDao;
import com.tabeldata.model.Ruang;
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
@WebServlet(urlPatterns={"/ruang/edit"})
public class RuangEditController extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            Integer kodeRuang = Integer.valueOf(req.getParameter("kodeRuang"));
            Ruang sebuahRuang = new RuangDao().findById(kodeRuang);
            req.setAttribute("ruang", sebuahRuang);
            req.getRequestDispatcher("/pages/ruang/editRuang.jsp").forward(req, resp);
        } catch (SQLException ex) {
            Logger.getLogger(RuangEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Ruang ruang = new Ruang();
        ruang.setId(Integer.valueOf(req.getParameter("id")));
        ruang.setNoRuang(req.getParameter("noRuang"));
        ruang.setKosong(Boolean.valueOf(req.getParameter("kosong")));
        
        RuangDao ruangDao = new RuangDao();
        try {
            ruangDao.update(ruang);
        } catch (SQLException ex) {
            Logger.getLogger(RuangEditController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        resp.sendRedirect(req.getServletContext().getContextPath() + "/ruang/");
    }
    
}
