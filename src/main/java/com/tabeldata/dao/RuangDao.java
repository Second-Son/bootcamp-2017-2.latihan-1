/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.dao;

import com.tabeldata.configs.KoneksiDatabase;
import com.tabeldata.model.Dokter;
import com.tabeldata.model.Ruang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author iyus
 */
public class RuangDao {

    public List<Ruang> findAll() throws SQLException {
        List<Ruang> listRuang = new ArrayList<>();
        
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource dataSource = koneksiDatabase.getDataSource();
        Connection connection = dataSource.getConnection();
        
        String sql = "SELECT id, no_ruangan, kosong FROM latihan_1.ruang";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        
        while(resultSet.next()){
            Ruang ruang = new Ruang();
            ruang.setId(resultSet.getInt("id"));
            ruang.setNoRuang(resultSet.getString("no_ruangan"));
            ruang.setKosong(resultSet.getBoolean("kosong"));
            
            listRuang.add(ruang);
        }
        
        resultSet.close();
        statement.close();
        connection.close();
        return listRuang;
    }

    public void save(Ruang ruang) throws SQLException {
        KoneksiDatabase koneksiDB = new KoneksiDatabase();
        DataSource datasource = koneksiDB.getDataSource();
        Connection connection = datasource.getConnection();
        
        //language=PostgreSQL
        String sql = "INSERT INTO latihan_1.ruang (no_ruangan, kosong) VALUES (?, ?)";
        PreparedStatement statement = connection.prepareStatement(sql);
        
        statement.setString(1, ruang.getNoRuang());
        statement.setBoolean(2, ruang.getKosong());
        
        statement.executeUpdate();
        statement.close();
        connection.close();
    }
    
}
