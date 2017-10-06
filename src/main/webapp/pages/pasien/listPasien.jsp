<%-- 
    Document   : listPasien
    Created on : Oct 6, 2017, 1:39:05 PM
    Author     : iyus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <c:forEach items="${listPasien}" var="seorangPasien" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${seorangPasien.id}</td>
                        <td>${seorangPasien.nama}</td>
                        <td>${seorangPasien.alamat}</td>
                        <td>${seorangPasien.tanggalLahir}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/pasien/edit?kodePasien=${seorangPasien.id}" >Edit</a>
                            <a href="#" >Delete</a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        </center>
    </body>
</html>
