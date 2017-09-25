<%-- 
    Document   : AddSubject
    Created on : 31-Jul-2017, 09:44:30
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Subject</title>
    </head>
    <body>
        <form name="form1" method="POST" action="Action_Jsp\Subject_Action.jsp">
            <input type="text" name="sname" placeholder="Enter Subject Name">
            <input type="text" name="sem" placeholder="Enter Subject Sem">
            <input type="text" name="cos" placeholder="Enter Number of C.Os">
            <input type="submit" name="submit" value="add">
        </form>
    </body>
</html>
