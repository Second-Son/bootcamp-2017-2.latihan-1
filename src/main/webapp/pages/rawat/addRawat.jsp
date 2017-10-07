<%-- 
    Document   : addRawat
    Created on : Oct 7, 2017, 7:37:00 AM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Rawat</title>
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
        <h1>Tambah Rawat</h1>
        <form method="post" action="${pageContext.servletContext.contextPath}/rawat/masuk">
        <div>
            <label for="pasienId"><b>Pilih Pasien</b></label><br>
             <div class="select-style">
            <select name="pasienId" id="pasienId">
                <c:forEach items="${listPasien}" var="p">
                    <option value="${p.id}">${p.nama} (${p.alamat}) (${p.tanggalLahir})</option>
                </c:forEach>
            </select>
             </div>
        </div><br>
        <div>
            <label for="dokterId"><b>Pilih Dokter</b></label><br>
            <div class="select-style">
              <select name="dokterId" id="dokterId">
                <c:forEach items="${listDokter}" var="d">
                    <option value="${d.id}">${d.nama} (${d.spesialis})</option>
                </c:forEach>
              </select>
            </div>
        </div><br>
        <div>
            <label for="ruangId"><b>Pilih Ruangan</b></label><br>
             <div class="select-style">
             <select name="ruangId" id="ruangId">
                <c:forEach items="${listRuang}" var="ru">
                    <option value="${ru.id}">${ru.noRuang} 
                        <c:if test="${ru.kosong == false}">
                            <c:out value="PENUH"></c:out>
                        </c:if>
                        <c:if test="${ru.kosong == true}">
                            <c:out value="TERSEDIA"></c:out>
                        </c:if></option>
                </c:forEach>
            </select>
             </div>
        </div><br>
        <div>
            <button type="submit" class="button1 button2">Kirim</button>
            <button type="reset" class="button1 button3">Reset</button>
        </div>
    </form>
        </center>
    </body>
</html>
