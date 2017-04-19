<%-- 
    Document   : index
    Created on : Apr 18, 2017, 5:17:13 PM
    Author     : Ricken BAZOLO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form</h1>
        <div>
            <form method="post" action=" <c:url value="/test" /> ">
                Nom: <input type="text" name="bean.nom" /><br/>
                Prenom: <input type="text" name="bean.prenom" /><br/>
                <input type="submit" value="Click" />
            </form>
        </div>
        <h1>Result:</h1>
        <h2>Nom: ${nom}</h2>
        <h2>Prenom: ${prenom}</h2>
    </body>
</html>
