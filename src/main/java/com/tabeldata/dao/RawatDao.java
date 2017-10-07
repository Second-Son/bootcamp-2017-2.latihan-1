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
import com.tabeldata.model.Ruang;
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
public class RawatDao {

    public List<Rawat> daftarRawat() throws SQLException {
        String sql = "select p.id as pasien_id, p.nama as nama_pasien, p.alamat as alamat_pasien, p.tanggal_lahir as tanggal_lahir, d.id as dokter_id, d.nama as nama_dokter, d.spesialis as spesialis_dokter, ru.id as ruang_id, ru.no_ruangan as no_ruangan, ru.kosong as kosong, ra.id as rawat_id, ra.waktu_registrasi as waktu_registrasi, ra.waktu_checkout as waktu_checkout from latihan_1.pasien p join latihan_1.rawat t ON p.id = ra.pasien_id join latihan_1.dokter d ON ra.dokter_id = d.id join latihan_1.ruang ru ON ra.ruang_id = ru.id";
        
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
    
}
