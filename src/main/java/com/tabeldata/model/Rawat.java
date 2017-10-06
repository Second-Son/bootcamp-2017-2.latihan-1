/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tabeldata.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 *
 * @author iyus
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Rawat {
    private Integer id;
    private Pasien pasien;
    private Dokter dokter;
    private Ruang ruang;
    private Integer waktuRegistrasi;
    private Integer waktuCheckout;
    
}
