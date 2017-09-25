<%-- 
    Document   : ShowAllStudent
    Created on : 06-Aug-2017, 17:07:16
    Author     : King
--%>

<%@page import="com.quiz.Workers.Student_Worker"%>
<%@page import="com.quiz.POJO.Student_Dt"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student_List</title>
    </head>
    <body>
        <%
            ArrayList<Student_Dt> list=Student_Worker.showAllStudents();
          %>  
        <table border="1" align="center" width="100%">
            <tr>
                <th>Name</th>
                <th>Roll No</th>
                <th>Semester</th>
                <th>Email</th>
                <th>Phone</th>
             </tr>
            <% for(Student_Dt sd:list) {%>
            <tr align="center">
                <td><a href="ShowStudentById.jsp?id=<%=sd.getStd_id()%>"><%=sd.getStd_name()%></a></td>
                <td><%=sd.getStd_ucid()%></td>
                <td><%=sd.getStd_sem()%></td>
                <td><%=sd.getStd_mail()%></td>
                <td><%=sd.getStd_phone()%></td> 
            </tr>
            <%}%>
        </table>
    </body>
</html>
