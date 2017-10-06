/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.dao;

import com.tabeldata.configs.KoneksiDatabase;
import com.tabeldata.model.Dokter;
import java.sql.Connection;
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
public class DokterDao {

    public List<Dokter> findAll() throws SQLException {
        List<Dokter> listDokter = new ArrayList<>();
        
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource dataSource = koneksiDatabase.getDataSource();
        Connection connection = dataSource.getConnection();
        
        String sql = "SELECT id, nama, spesialis FROM latihan_1.dokter";
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        
        while(resultSet.next()){
            Dokter dokter = new Dokter();
            dokter.setId(resultSet.getInt("id"));
            dokter.setNama(resultSet.getString("nama"));
            dokter.setSpesialis(resultSet.getString("spesialis"));
            
            listDokter.add(dokter);
        }
        
        resultSet.close();
        statement.close();
        connection.close();
        return listDokter;
    }
    
}
