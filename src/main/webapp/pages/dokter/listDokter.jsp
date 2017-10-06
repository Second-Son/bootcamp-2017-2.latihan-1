<%-- 
    Document   : listDokter
    Created on : Oct 6, 2017, 8:37:04 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Dokter</title>
    </head>
    <body>
        <center>
        <h1>List Dokter</h1>
        <table border="5" cellpadding="10">
            <thead>
                <tr>
                    <td>No</td>
                    <td>Id</td>
                    <td>Nama Dokter</td>
                    <td>Spesialis</td>
                    <td>Aksi</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listDokter}" var="seorangDokter" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${seorangDokter.id}</td>
                        <td>${seorangDokter.nama}</td>
                        <td>${seorangDokter.spesialis}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/dokter/edit?kodeDokter=${seorangDokter.id}" >Edit</a>
                            <a href="${pageContext.servletContext.contextPath}/dokter/delete?kodeDokter=${seorangDokter.id}" >Delete</a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        </center>
    </body>
</html>
