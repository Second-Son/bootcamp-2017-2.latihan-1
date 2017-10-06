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
    </head>
    <body>
        <center>
            <h1>Tambah Dokter</h1>
            <form action="${pageContext.servletContext.contextPath}/dokter/new" method="post">
                <div>
                    <label for="nama"><b>Nama Dokter :</b></label><br>
                    <input type="text" name="nama" id="namaDokter"/>
                </div><br>
                <div>
                    <label for="alamat"><b>Spesialis Dokter :</b></label><br>
                    <input type="text" name="spesialis" id="spesialis"/>
                </div><br>
                <div>
                    <button type="submit">Kirim</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
            </center>
    </body>
</html>
