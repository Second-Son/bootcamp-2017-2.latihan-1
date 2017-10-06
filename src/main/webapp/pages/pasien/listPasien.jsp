<%-- 
    Document   : listPasien
    Created on : Oct 6, 2017, 1:39:05 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Pasien</title>
    </head>
    <body>
        <center>
        <h1>LIST PASIEN</h1>
        <table border="5" cellpadding="10">
            <thead>
                <tr>
                    <td>No</td>
                    <td>Id</td>
                    <td>Nama Pasien</td>
                    <td>Alamat Pasien</td>
                    <td>Tanggal Lahir</td>
                    <td>Aksi</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>1</td>
                    <td>Fulan Bin Fulan</td>
                    <td>Jln. Gang Buntu No10001</td>
                    <td>30-10-1991</td>
                    <td>
                        <a href="#" >Edit</a>
                        <a href="#" >Delete</a>
                    </td>
                </tr>
            </tbody>
        </table>
        </center>
    </body>
</html>
