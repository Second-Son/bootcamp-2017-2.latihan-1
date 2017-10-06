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
    </head>
    <body>
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
                    <button type="submit">Kirim</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
            </center>
    </body>
</html>
