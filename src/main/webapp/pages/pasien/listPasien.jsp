<%-- 
    Document   : listPasien
    Created on : Oct 6, 2017, 1:39:05 PM
    Author     : iyus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Pasien</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="news">
      <header>
        <div class="nav">
          <ul>
            <li class="rawat"><a href="/latihan-1/rawat/">Rawat</a></li>
            <li class="pasien"><a class="active" href="/latihan-1/pasien/">pasien</a></li>
            <li class="dokter"><a href="/latihan-1/dokter/">Dokter</a></li>
            <li class="ruangan"><a href="/latihan-1/ruang/">Ruangan</a></li>
          </ul>
        </div>
      </header>
        <center>
        <h1>LIST PASIEN</h1>
        <table class="yusuf-table yusuf-table-rounded" cellpadding="10">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Nama Pasien</th>
                    <th>Alamat Pasien</th>
                    <th>Tanggal Lahir</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listPasien}" var="seorangPasien" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${seorangPasien.id}</td>
                        <td>${seorangPasien.nama}</td>
                        <td>${seorangPasien.alamat}</td>
                        <td>${seorangPasien.tanggalLahir}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/pasien/edit?kodePasien=${seorangPasien.id}" >Edit</a>
                            <a href="${pageContext.servletContext.contextPath}/pasien/delete?kodePasien=${seorangPasien.id}" >Delete</a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        <br>
        <a href="${pageContext.request.contextPath}/pasien/new"><button class="button"><span>TAMBAH DATA PASIEN</span></button></a>
        </center>
    </body>
</html>
