<%-- 
    Document   : ShowStudentById
    Created on : 06-Aug-2017, 17:47:13
    Author     : King
--%>

<%@page import="com.quiz.Workers.Student_Worker"%>
<%@page import="com.quiz.POJO.Student_Dt"%>
<%@page import="com.quiz.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%int id=Integer.parseInt(request.getParameter("id"));
        System.out.println("Id is"+id );  
        Student_Dt sd=Student_Worker.showStudentById(id);
%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=sd.getStd_name()%> : Details</title>
    </head>
    <body> 
        <form name="form1" action="Action_Jsp\Student_Action.jsp" method="POST">
            <input type="hidden" name="id" value="<%=sd.getStd_id()%>"><!--Id for Subject-->
            <input type="text" name="sname" placeholder="Enter Name" value="<%=sd.getStd_name()%>"><br>
            <input type="text" name="mail" placeholder="Enter Email Id" value="<%=sd.getStd_mail()%>"><br>
            <input type="text" name="phone" placeholder="Enter Phone Number" value="<%=sd.getStd_phone()%>"><br>
            <input type="text" name="sem" placeholder="Enter Sem" value="<%=sd.getStd_sem()%>"><br>
            <input type="text" name="ucid" placeholder="Enter Ucid" value="<%=sd.getStd_ucid()%>"><br>
            <input type="submit" name="submit" value="update"><br>
            <input type="submit" name="submit" value="delete">
        </form>
    </body>
        <body>
         <header>        
               <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-2">
                    <a class="navbar-brand" href="#">
                         MCA Quiz
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                         <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                         <ul class="navbar-nav mr-auto">
                              <li class="nav-item active">
                                   <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="#">Generate Quiz</a>
                              </li>
                              <li class="nav-item">
                                   <a class="nav-link" href="#">See Results</a>
                              </li>
                              <li class="nav-item dropdown">
                                   <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions </a>
                                   <div class="dropdown-menu dropdown-primary" aria-labelledby="navbarDropdownMenuLink">
                                        <a class="dropdown-item" href="#">New Quiz</a>
                                        <a class="dropdown-item" href="#">Change Quiz</a>
                                        <a class="dropdown-item" href="#">See All Exams</a>
                                   </div>
                              </li> 
                         </ul>
                    </div>
               </nav>
          </header>
          <hr><br>
          <div class="container">
               <div class="row">
                    <div class=" col-md-4">
                         <h1>Student Registration</h1><hr style="color: #4B515D"><hr style="color: #4B515D">
                    </div>
               </div>
               <br>
               <form name="form1" method="POST" action="Action_Jsp\Student_Action.jsp">
                    <div class="row">
                         <div class="form-group col-md-5">
                              <input type="hidden" name="id" value="<%=sd.getStd_id()%>">
                              <input type="text" class="form-control" id="name" name="sname" placeholder="Enter Name" required value="<%=sd.getStd_name()%>">
                         </div>
                         <div class="col-md-1"></div>
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control " id="ucid" name="ucid" placeholder="Enter UCID" required value="<%=sd.getStd_ucid()%>">
                         </div>
                    </div><br>
                    <div class="row">
                         
                         <div class="col-md-5">
                              <div class="form-group">
                                   <label for="sel1">Select Semester:</label>
                                   <select class="form-control" id="sel1" name="sem">
                                             <option value="Sem 1">Sem 1</option>
                                             <option value="Sem 2">Sem 2</option>
                                             <option value="Sem 3">Sem 3</option>
                                             <option value="Sem 4">Sem 4</option>
                                             <option value="Sem 5">Sem 5</option>
                                             <option value="Sem 6">Sem 6</option>
                                        </select>
                              </div>
                         </div>
                    </div><br>
                    <div class="row">
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control " id="email" name="mail" placeholder="Enter Email Id" required value="<%=sd.getStd_mail()%>">
                         </div> 
                         <div class="col-md-1"></div>
                         <div class="form-group col-md-5">
                              <input type="text" class="form-control " id="phone" name="phone" placeholder="Enter Phone-Number" required value="<%=sd.getStd_phone()%>">
                         </div>
                    </div><br>
                    <div class="row">
                         <div class="container col-md-4">
                              <button type="submit" class="btn btn-default blue-grey" value="update" name="submit">Submit</button>
                         </div>
                    </div>  
               </form>
          </div>
          <footer>
        
    </footer>
    <!-- /Start your project here-->

    <!-- SCRIPTS -->
    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    </body>
</html>
