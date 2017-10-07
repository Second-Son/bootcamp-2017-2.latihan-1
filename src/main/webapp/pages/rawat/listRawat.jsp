<%-- 
Document   : listTransaksi
Created on : Oct 5, 2017, 5:10:41 PM
Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>List Rawat</title>
</head>
<body>
    <center>
    <h1>List Rawat</h1>
    <table border="5">
        <thead>
            <tr>
                <td>No</td>
                <td>Nama Pasien</td>
                <td>Nama Dokter</td>
                <td>Ruangan Rawat</td>
                <td>Tanggal Registrasi</td>
                <td>Aksi</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listRawat}" var="t" varStatus="idx">
            <tr>
                <td>${idx.count}</td>
                <td>${t.pasien.nama}</td>
                <td>${t.dokter.nama}</td>
                <td>${t.ruang.noRuang}</td>
                <td>${t.waktuRegistrasi}</td>
                <td>
                    
                </td>
            </tr>                    
            </c:forEach>
        </tbody>
    </table>
    </center>
</body>
</html>
