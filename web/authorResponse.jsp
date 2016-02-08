<%-- 
    Document   : helloResponse
    Created on : Jan 20, 2016, 7:01:23 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <title>Author Info Page</title>
    </head>
    <body>
        <h1>Author Info</h1>

        <%
            Object responseObj = request.getAttribute("myMsg");
            request.setAttribute("MyList", responseObj);
            Object errObj = request.getAttribute("errorMsg");

        %>

        <table class="table table-striped table-bordered table-condensed table-responsive">
            <TH>Name</th>
            <TH>Id</th>
                <c:forEach items="${MyList}" var="current">
                <tr>
                    <td><c:out value="${current.authorName}" /></td>
                    <td><c:out value="${current.authorId}" /></td>
                </tr>
            </c:forEach>
        </table>




        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>   
    </body>
</html>
