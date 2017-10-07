<%-- 
    Document   : addDokter
    Created on : Oct 6, 2017, 8:55:56 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Dokter</title>
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
            <h1>Tambah Dokter</h1>
            <form action="${pageContext.servletContext.contextPath}/dokter/new" method="post">
                <div>
                    <label for="nama"><b>Nama Dokter :</b></label><br>
                    <input type="text" name="nama" id="namaDokter" placeholder="Nama Dokter.."/>
                </div><br>
                <div>
                    <label for="spesialis"><b>Spesialis Dokter :</b></label><br>
                    <input type="text" name="spesialis" id="spesialis" placeholder="Spesialis Dokter.."/>
                </div><br>
                <div>
                    <button type="submit" class="button1 button2">Kirim</button>
                    <button type="reset" class="button1 button3">Reset</button>
                </div>
            </form>
            </center>
    </body>
</html>
