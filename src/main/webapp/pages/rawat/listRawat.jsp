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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
</head>
<body class="news">
  <header>
    <div class="nav">
      <ul>
        <li class="rawat"><a class="active" href="/latihan-1/rawat/">Rawat</a></li>
        <li class="pasien"><a href="/latihan-1/pasien/">Pasien</a></li>
        <li class="dokter"><a href="/latihan-1/dokter/">Dokter</a></li>
        <li class="ruangan"><a href="/latihan-1/ruang/">Ruangan</a></li>
      </ul>
    </div>
  </header>
    <center>
    <h1>List Rawat</h1>
    <table class="yusuf-table yusuf-table-rounded">
        <thead>
            <tr>
                <th>No</th>
                <th>Nama Pasien</th>
                <th>Nama Dokter</th>
                <th>Ruangan Rawat</th>
                <th>Tanggal Registrasi</th>
                <th>Tanggal Checkout</th>
                <th>Aksi</th>
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
                <td>${t.waktuCheckout}</td>
                <td>
                    
                    <c:if test="${t.waktuCheckout == null}">
                        <a href="${pageContext.servletContext.contextPath}/rawat/checkout?kodeRawat=${t.id}&kodeRuang=${t.ruang.id}" ><button class="buttont button3"><b>Checkout</b></button></a>    
                        
                    </c:if>
                    <c:if test="${t.waktuCheckout != null}">
                        <a href="${pageContext.servletContext.contextPath}/rawat/delete?kodeRawat=${t.id}&kodeRuang=${t.ruang.id}" ><button class="buttont button4"><b>Delete</b></button></a>
                    </c:if>
                </td>
            </tr>                    
            </c:forEach>
        </tbody>
    </table><br>
    <a href="${pageContext.request.contextPath}/rawat/masuk"><button class="button"><span>TAMBAH PASIEN RAWAT</span></button></a>
    </center>
</body>
</html>
