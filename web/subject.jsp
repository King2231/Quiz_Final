<%-- 
    Document   : subject
    Created on : 13-Sep-2017, 20:40:01
    Author     : King
--%>

<%@page import="com.quiz.POJO.Subject_Dt"%>
<%@page import="com.quiz.Workers.Subject_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SPIT: MCA Dept. Quiz Portal</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/logo_png.png" type="favicon/ico" />
     </head>
     <body>
          <%
               int id=Integer.parseInt(request.getParameter("id"));
               Subject_Dt sd=new Subject_Dt();
               sd=Subject_Worker.showSubById(id);
               int co=Integer.parseInt(sd.getSub_cos());
               
               for(int i=1;i<=co;i++){
          %>
          <div class="form-group">     
          <label for="co">Select CO:</label>
                    <select class="form-control " id="co" name="co">
                         <option class="" value="Sem 1">CO 1</option>
                    </select>
          </div>
          <% }
          %>
     </body>
</html>
