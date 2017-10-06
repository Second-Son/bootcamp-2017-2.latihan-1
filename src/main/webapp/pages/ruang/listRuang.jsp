<%-- 
    Document   : listRuang
    Created on : Oct 6, 2017, 9:55:15 PM
    Author     : iyus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Ruang</title>
    </head>
    <body>
        <center>
        <h1>List Ruang</h1>
        <table border="5" cellpadding="10">
            <thead>
                <tr>
                    <td>No</td>
                    <td>Id</td>
                    <td>Nomer Ruangan</td>
                    <td>Status Kosong/Isi</td>
                    <td>Aksi</td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listRuang}" var="sebuahRuang" varStatus="index">
                    <tr>
                        <td>${index.count}</td>
                        <td>${sebuahRuang.id}</td>
                        <td>${sebuahRuang.noRuang}</td>
                        <td>${sebuahRuang.kosong}</td>
                        <td>
                            <a href="${pageContext.servletContext.contextPath}/ruang/edit?kodeRuang=${sebuahRuang.id}" >Edit</a>
                            <a href="${pageContext.servletContext.contextPath}/ruang/delete?kodeRuang=${sebuahRuang.id}" >Delete</a>
                        </td>
                    </tr>
                    
                </c:forEach>
                
            </tbody>
        </table>
        </center>
    </body>
</html>
