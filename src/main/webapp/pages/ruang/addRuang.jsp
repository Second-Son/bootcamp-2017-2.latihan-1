<%-- 
    Document   : addRuang
    Created on : Oct 6, 2017, 10:19:29 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Ruangan</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/style.css">
    </head>
    <body class="news">
      <header>
        <div class="nav">
          <ul>
            <li class="rawat"><a href="/latihan-1/rawat/">Rawat</a></li>
            <li class="pasien"><a href="/latihan-1/pasien/">Pasien</a></li>
            <li class="dokter"><a href="/latihan-1/dokter/">Dokter</a></li>
            <li class="ruangan"><a class="active" href="/latihan-1/ruang/">Ruangan</a></li>
          </ul>
        </div>
      </header>
        <center>
            <h1>Tambah Ruang</h1>
            <form action="${pageContext.servletContext.contextPath}/ruang/new" method="post">
                <div>
                    <label for="nama"><b>Nomer Ruangan :</b></label><br>
                    <input type="text" name="noRuang" id="noRuang"/>
                </div><br>
                <div>
                    <label for="alamat"><b>Status Kosong/Tidak :</b></label><br>
                    <input type="text" name="kosong" id="Kosong"/>
                </div><br>
                <div>
                    <button type="submit" class="button1 button2">Kirim</button>
                    <button type="reset" class="button1 button3">Reset</button>
                </div>
            </form>
            </center>
    </body>
</html>
