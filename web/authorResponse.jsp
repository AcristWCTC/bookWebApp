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
        <h1 class="col-sm-12">Author Info</h1>
        <h1 class="col-sm-4"><img src="index.png" alt=""/><h1>

        <%
            Object responseObj = request.getAttribute("myMsg");
            request.setAttribute("MyList", responseObj);
            Object errObj = request.getAttribute("errorMsg");

        %>

        <table class="table-striped table-bordered col-sm-6 tableCustom">
            <TH class = "col-sm-4">Name</th>
            <TH class = "col-sm-2">Id</th>
            <TH class = "col-sm-2">Date Added</th>
                <c:forEach items="${MyList}" var="current">
                <tr>
                    <td class = "col-sm-4"><c:out value="${current.authorName}" /></td>
                    <td class = "col-sm-2"><c:out value="${current.authorId}" /></td>
                    <td class = "col-sm-6"><fmt:formatDate pattern="yyyy-MM-dd" 
                                    value="${current.dateAdded}" /></td>
                </tr>
            </c:forEach>
        </table>
        <div class ="col-sm-6"></div>




        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>   
    </body>
</html>
