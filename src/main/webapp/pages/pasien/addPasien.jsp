<%-- 
    Document   : addPasien
    Created on : Oct 6, 2017, 3:58:40 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Pasien</title>
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
        <h1>Tambah Pasien</h1>
        <form action="${pageContext.servletContext.contextPath}/pasien/new" method="post">
            <div>
                <label for="nama"><b>Nama Pasien :</b></label><br>
                <input type="text" name="nama" id="namaPasien"/>
            </div><br>
            <div>
                <label for="alamat"><b>Alamat Pasien :</b></label><br>
                <input type="text" name="alamat" id="alamatPasien"/>
            </div><br>
            <div>
                <label for="tanggalLahir"><b>Tanggal Lahir :</b></label><br>
                <input type="text" name="tanggalLahir" id="tanggalLahir"/>
            </div><br>
            <div>
                <button type="submit">Kirim</button>
                <button type="reset">Reset</button>
            </div>
        </form>
        </center>
    </body>
</html>
