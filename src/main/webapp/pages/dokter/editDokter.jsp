<%-- 
    Document   : editDokter
    Created on : Oct 6, 2017, 9:17:36 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Dokter</title>
    </head>
    <body>
        <center>
            <h1>Edit Dokter</h1>
            <form action="${pageContext.servletContext.contextPath}/dokter/edit" method="post">
                <input type="hidden" name="id" value="${dokter.id}"/>
                <div>
                    <label for="nama"><b>Nama Dokter :</b></label><br>
                    <input type="text" name="nama" id="namaDokter" value="${dokter.nama}"/>
                </div><br>
                <div>
                    <label for="alamat"><b>Spesialis Dokter :</b></label><br>
                    <input type="text" name="spesialis" id="spesialis" value="${dokter.spesialis}"/>
                </div><br>
                <div>
                    <button type="submit">Kirim</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
            </center>
    </body>
</html>
