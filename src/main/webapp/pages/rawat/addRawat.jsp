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
    </head>
    <body>
        <center>
        <h1>Tambah Rawat</h1>
        <form method="post" action="${pageContext.servletContext.contextPath}/rawat/masuk">
        <div>
            <label for="pasienId"><b>Pilih Pasien</b></label><br>
            <select name="pasienId" id="pasienId">
                <c:forEach items="${listPasien}" var="p">
                    <option value="${p.id}">${p.nama} (${p.alamat}) (${p.tanggalLahir})</option>
                </c:forEach>
            </select>
        </div><br>
        <div>
            <label for="dokterId"><b>Pilih Dokter</b></label><br>
            <select name="dokterId" id="dokterId">
                <c:forEach items="${listDokter}" var="d">
                    <option value="${d.id}">${d.nama} (${d.spesialis})</option>
                </c:forEach>
            </select>
        </div><br>
        <div>
            <label for="ruangId"><b>Pilih Ruangan</b></label><br>
            <select name="ruangId" id="ruangId">
                <c:forEach items="${listRuang}" var="ru">
                    <option value="${ru.id}">${ru.noRuang} (${ru.kosong})</option>
                </c:forEach>
            </select>
        </div><br>
        <div>
            <button type="submit">Kirim</button>
            <button type="reset">Reset</button>
        </div>
    </form>
        </center>
    </body>
</html>
