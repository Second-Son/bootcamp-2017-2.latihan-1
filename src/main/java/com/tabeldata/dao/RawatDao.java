/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.dao;

import com.tabeldata.configs.KoneksiDatabase;
import com.tabeldata.model.Dokter;
import com.tabeldata.model.Pasien;
import com.tabeldata.model.Rawat;
import static com.tabeldata.model.Rawat.rawat;
import com.tabeldata.model.Ruang;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import static java.time.Instant.now;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;

/**
 *
 * @author iyus
 */
public class RawatDao {

    public List<Rawat> daftarRawat() throws SQLException {
        String sql = "select p.id as pasien_id, p.nama as nama_pasien, p.alamat as alamat_pasien, p.tanggal_lahir as tanggal_lahir, d.id as dokter_id, d.nama as nama_dokter, d.spesialis as spesialis_dokter, ru.id as ruang_id, ru.no_ruangan as no_ruangan, ru.kosong as kosong, t.id as rawat_id, t.waktu_registrasi as waktu_registrasi, t.waktu_checkout as waktu_checkout from latihan_1.pasien p join latihan_1.rawat t ON p.id = t.pasien_id join latihan_1.dokter d ON t.dokter_id = d.id join latihan_1.ruang ru ON t.ruang_id = ru.id";
        
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource dataSource = koneksiDatabase.getDataSource();
        Connection connection = dataSource.getConnection();
        List<Rawat> listRawat = new ArrayList<>();
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        while (resultSet.next()){
            Rawat rawat = new Rawat();
            
            rawat.setPasien(new Pasien(
                    resultSet.getInt("pasien_id"),
                    resultSet.getString("nama_pasien"),
                    resultSet.getString("alamat_pasien"),
                    resultSet.getDate("tanggal_lahir")
                    
            ));
            
            rawat.setDokter(new Dokter(
                    resultSet.getInt("dokter_id"),
                    resultSet.getString("nama_dokter"),
                    resultSet.getString("spesialis_dokter")
            ));
            
            rawat.setRuang(new Ruang(
                    resultSet.getInt("ruang_id"),
                    resultSet.getString("no_ruangan"),
                    resultSet.getBoolean("kosong")
            ));
            
            rawat.setId(resultSet.getInt("rawat_id"));
            rawat.setWaktuRegistrasi(resultSet.getTimestamp("waktu_registrasi"));
            rawat.setWaktuCheckout(resultSet.getTimestamp("waktu_checkout"));
            
            listRawat.add(rawat);
        }
            return listRawat;
    }

    public void rawatPasien(Rawat rawat) throws SQLException {
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource dataSource = koneksiDatabase.getDataSource();
        Connection connection = dataSource.getConnection();
        
        String sql = "insert into latihan_1.rawat (pasien_id, dokter_id, ruang_id, waktu_registrasi) values (?, ?, ?, now())";
        
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, rawat.getPasien().getId());
        preparedStatement.setInt(2, rawat.getDokter().getId());
        preparedStatement.setInt(3, rawat.getRuang().getId());
        preparedStatement.executeUpdate();
        preparedStatement.close();
        
        sql = "update latihan_1.ruang set kosong = ? where id = ?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setBoolean(1, rawat.getRuang().getKosong() == false);
        preparedStatement.setInt(2, rawat.getRuang().getId());
        preparedStatement.executeUpdate();
        preparedStatement.close();
        
        connection.close();
    }

    public void delete(Integer idRawat) throws SQLException {
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource datasource = koneksiDatabase.getDataSource();
        Connection connection = datasource.getConnection();
        
//        String sql = "delete from latihan_1.rawat where id = ?";
//        
//        PreparedStatement statement = connection.prepareStatement(sql);
//
//        statement.setInt(1, idRawat);
//        
//        statement.executeUpdate();
//        statement.close();
//        connection.close();
        
        String sql = "update latihan_1.rawat set waktu_checkout = now() where id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, idRawat);
        preparedStatement.executeUpdate();
        preparedStatement.close();
        
        connection.close();
    }

    public void checkout(Rawat kodeRuang) throws SQLException {
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource dataSource = koneksiDatabase.getDataSource();
        Connection connection = dataSource.getConnection();
        
        String sql = "update latihan_1.ruang set kosong = true where id = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1, kodeRuang.getRuang().getId());
        preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
    }

    public void deletes(Integer kodeRawat) throws SQLException {
        KoneksiDatabase koneksiDatabase = new KoneksiDatabase();
        DataSource datasource = koneksiDatabase.getDataSource();
        Connection connection = datasource.getConnection();
        
        String sql = "delete from latihan_1.rawat where id = ?";
        
        PreparedStatement statement = connection.prepareStatement(sql);

        statement.setInt(1, kodeRawat);
        
        statement.executeUpdate();
        statement.close();
        connection.close();
    }
    
}
