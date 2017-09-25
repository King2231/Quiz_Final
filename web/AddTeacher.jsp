<%-- 
    Document   : AddTeacher
    Created on : 30-Jul-2017, 11:42:37
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Teacher</title>
    </head>
    <body>
        <form name="form1" method="POST" action="Action_Jsp\Teacher_Action.jsp">
            <input type="text" name="tname" placeholder="Enter Name" required>
            <input type="text" name="ucid" placeholder="Enter Ucid" required>
            <input type="submit" name="submit" value="add">
        </form>
    </body>
</html>
