<%-- 
    Document   : Student_Login
    Created on : 11-Sep-2017, 21:13:48
    Author     : King
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>MCA QUIZ: Student_Login</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="../css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="../css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="../img/logo_png.png" type="favicon/ico" />
    </head>
     <body>
          <%
               //String error="";
               Object o=session.getAttribute("err");
               //response.setHeader("Cache-Control", "no-cache"); // HTTP 1.1.
               //response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
               //response.setHeader("Expires", "0"); // Proxies.

               //Client_Dt cd=new Client_Dt();
               String err="";
          %>
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
          <main>
          <div class="container">
               <div class="row" style="height: 30px"></div>
               <div class="row">
                    <div class="container col-md-5">
                         <!--img class="img-fluid" src="../img/logo_png.png" alt="SPIT ENTRANCE"-->
                    </div>
                    <div class="col-md-3">
                         
                    </div>
                    <div class="container col-md-4 card card-body blue-grey-text lighten-4 grey" style="border-radius: 0px">
                              <hr>
                              
                              <div class=""><h3>Student Login</h3></div>
                              
                              <br>
                              <form action="..\Action_Jsp\Login_Action.jsp" method="post">
                                   <div class="form-group">
                                        <input type="text" class="form-control" id="email" name="ucid" placeholder="Enter UCID">
                                   </div>
                                   <div class="form-group">
                                        <input type="password" class="form-control" id="pwd" placeholder="Enter Password" name="pass">
                                   </div><br>
                                   <button type="submit" class="btn btn-default blue-grey" name="submit">Submit</button>
                              </form>      
                         </div>
                    
               </div>
               <br>
               <%
                    if(o!=null){
                         err=(String)o;
               %>
               <div class="row">
                    <div class="container-fluid col-md-5" style="color: rgb(255,0,0)">
                         <b><%=err%></b>
                    </div>         
               </div>
               <% 
                    }
               %>               
               </div>
          </main>
          <footer>
        
          </footer>
    
    <!-- JQuery -->
          <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
          <script type="text/javascript" src="../js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
          <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
          <script type="text/javascript" src="../js/mdb.min.js"></script>
    </body>
</html>
