<%-- 
    Document   : ShowQuestions
    Created on : 25-Sep-2017, 19:59:07
    Author     : King
--%>

<%@page import="com.quiz.POJO.Questions_Dt"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.Workers.Questions_Worker"%>
<%@page import="com.quiz.POJO.Exam_Dt"%>
<%@page import="com.quiz.Workers.Exam_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>SPIT: Questions</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="css/mdb.min.css" rel="stylesheet">
        <!-- Your custom styles (optional) -->
        <link href="css/style.css" rel="stylesheet">
        <link rel="shortcut icon" href="img/logo_png.png" type="favicon/ico" />
        <style type="text/css">
          .s1{
               border-radius: 0px;
               color:rgb(0,0,0);
               text-shadow: 0px 0px 0px #0000ff;
               letter-spacing:2px;
          }
          #txt{
               border-radius: 5px;
               -moz-box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               -webkit-box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               box-shadow: 0 -5px 10px 1px rgba(102, 102, 153, 0.57);
               border-bottom: none;
               font-family: Candara, Calibri, Segoe, 'Segoe UI', Optima, Arial, sans-serif;
               font-size: 200px;
          }
          @media only screen and (max-width: 1200px) {
               #txt{
                    font-size: 150px;
               }
          }
          @media only screen and (max-width: 1000px) {
               #txt{
                    font-size: 100px;
               }
          }
          @media only screen and (max-width: 500px) {
               #txt{
                    font-size: 60px;
               }
          }
          #question{
               margin-top: 5px;
               margin-bottom: 5px;
               padding-top: 10px;
               padding-bottom: 10px;
               padding-left: 5px;
               padding-right: 5px;
          }
         </style>
         <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
    <script type="text/javascript" src="js/myjs.js"></script>
</head>
     <body>
          <header>
               <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-2">
                    <a class="navbar-brand" href="#">MCA Quiz</a>
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
                                   <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</a>
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
          <hr>
          <main>
          <div class="container    ">
          <%
          int ex_id=Integer.parseInt(request.getParameter("id"));
          ArrayList<Questions_Dt> list=Questions_Worker.ShowQuestionByExID(ex_id);

           for(Questions_Dt qd:list){
          %>
          <div class="row blue-grey lighten-5" id="question">
               <div class="col-md-11">
                    <div class="row">
                         <div class="col-md-2">
                              <strong>Q<%=qd.getQ_no()%> </strong>
                         </div>
                         <div class="col-md-8 offset-md-1">
                              
                                    <%=qd.getQuestion()%>
                             
                         </div>
                    </div>
                    <div class="row">
                         <div class="col-md-2">
                            <strong>
                                   Options:
                              </strong> 
                              
                         </div>
                         <div class="col-md-2 offset-md-1">
                               <%
                             if(qd.getOptn1().equals(qd.getCorrect())){
                             %> 
                             <div class="green-text">
                                  <%=qd.getOptn1()%>
                             </div>
                             <%
                             }
                              else{%>
                              <div class="red-text">
                                   <%=qd.getOptn1()%>
                              </div>     
                              <%}%>
                         </div>
                         <div class="col-md-2">
                               <%
                             if(qd.getOptn2().equals(qd.getCorrect())){
                             %> 
                             <div class="green-text">
                                  <%=qd.getOptn2()%>
                             </div>
                             <%
                             }
                              else{%>
                              <div class="red-text">
                                   <%=qd.getOptn2()%>
                              </div>     
                              <%}%>
                         </div>
                         <div class="col-md-2">
                               <%
                             if(qd.getOptn3().equals(qd.getCorrect())){
                             %> 
                             <div class="green-text">
                                  <%=qd.getOptn3()%>
                             </div>
                             <%
                             }
                              else{%>
                              <div class="red-text">
                                   <%=qd.getOptn3()%>
                              </div>     
                              <%}%>
                         </div>
                         <div class="col-md-2">
                               <%
                             if(qd.getOptn4().equals(qd.getCorrect())){
                             %> 
                             <div class="green-text">
                                  <%=qd.getOptn4()%>
                             </div>
                             <%
                             }
                              else{%>
                              <div class="red-text">
                                   <%=qd.getOptn4()%>
                              </div>     
                              <%}%>
                         </div>
                    </div>
               </div>
               <div class="col-md-1">
                    <a href="" title="Edit">
                         <span class="glyphicon glyphicon-edit">Edit</span>
                    </a>
               </div>
          </div>
          
          <%
               }
          %>
          </div>
          </main>
     </body>
</html>
