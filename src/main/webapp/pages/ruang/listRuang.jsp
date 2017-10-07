<%-- 
    Document   : listRuang
    Created on : Oct 6, 2017, 9:55:15 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Ruang</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="news">
      <header>
        <div class="nav">
          <ul>
            <li class="rawat"><a href="/latihan-1/rawat/">Rawat</a></li>
            <li class="pasien"><a href="/latihan-1/pasien/">pasien</a></li>
            <li class="dokter"><a href="/latihan-1/dokter/">Dokter</a></li>
            <li class="ruangan"><a class="active" href="/latihan-1/ruang/">Ruangan</a></li>
          </ul>
        </div>
      </header>
        <center>
        <h1>List Ruang</h1>
        <table class="yusuf-table yusuf-table-rounded" cellpadding="10">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Id</th>
                    <th>Nomer Ruangan</th>
                    <th>Status Kosong/Isi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listRuang}" var="sebuahRuang" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${sebuahRuang.id}</td>
                        <td>${sebuahRuang.noRuang}</td>
                        <td>${sebuahRuang.kosong}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/ruang/edit?kodeRuang=${sebuahRuang.id}" >Edit</a>
                            <a href="${pageContext.servletContext.contextPath}/ruang/delete?kodeRuang=${sebuahRuang.id}" >Delete</a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        <br>
        <a href="${pageContext.request.contextPath}/ruang/new"><button class="button"><span>TAMBAH RUANGAN</span></button></a>
        </center>
    </body>
</html>
