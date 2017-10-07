<%-- 
    Document   : listDokter
    Created on : Oct 6, 2017, 8:37:04 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Dokter</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="news">
      <header>
        <div class="nav">
          <ul>
            <li class="rawat"><a href="/latihan-1/rawat/">Rawat</a></li>
            <li class="pasien"><a href="/latihan-1/pasien/">Pasien</a></li>
            <li class="dokter"><a class="active" href="/latihan-1/dokter/">Dokter</a></li>
            <li class="ruangan"><a href="/latihan-1/ruang/">Ruangan</a></li>
          </ul>
        </div>
      </header>
        <center>
        <h1>List Dokter</h1>
        <table class="yusuf-table yusuf-table-rounded" cellpadding="10">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Nama Dokter</th>
                    <th>Spesialis</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listDokter}" var="seorangDokter" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${seorangDokter.id}</td>
                        <td>${seorangDokter.nama}</td>
                        <td>${seorangDokter.spesialis}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/dokter/edit?kodeDokter=${seorangDokter.id}" ><button class="buttont button2"><span>Edit</span></button></a>
                            <a href="${pageContext.servletContext.contextPath}/dokter/delete?kodeDokter=${seorangDokter.id}" ><button class="buttont button3">Delete</button></a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        <br>
        <a href="${pageContext.request.contextPath}/dokter/new"><button class="button"><span>TAMBAH DOKTER</span></button></a>
        </center>
    </body>
</html>
