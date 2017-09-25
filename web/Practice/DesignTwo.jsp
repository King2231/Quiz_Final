<%-- 
    Document   : DesignTwo
    Created on : 06-Sep-2017, 18:05:38
    Author     : King
--%>

<%@page import="javafx.scene.input.KeyCode.*"%>
<%@page import="com.quiz.POJO.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.Workers.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Quiz :Answer Portal</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="../css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="../css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="../img/logo_png.png" type="favicon/ico" />
    <style type="text/css">
         #btns{
              overflow: scroll;
              height: 650px;   
         }
         #btns::-webkit-scrollbar {
               width: 1px;
	border-radius:1px;
	height:5px;
}
 
#btns::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 3px rgba(0,0,0,0.3);
}
 
#btns::-webkit-scrollbar-thumb {
  background-color: slategrey;
  outline: 1px solid slategrey;
  border-radius:10px;
 
}
#question{
     height: 470px;
     overflow: scroll;
}
         #question::-webkit-scrollbar {
               width: 1px;
	border-radius:1px;
	height:5px;
}
 
#question::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 3px rgba(0,0,0,0.3);
}
 
#question::-webkit-scrollbar-thumb {
  background-color: slategrey;
  outline: 1px solid slategrey;
  border-radius:10px;
 
}
#title{
     height: 150px;
}#qconts{
     height: 400px;
}
    </style>
<!-- JQuery -->
    <script type="text/javascript" src="../js/jquery-3.1.1.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="../js/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="../js/mdb.min.js"></script>
    <script type="text/javascript" src="../js/myjs.js"></script>
</head>
<%
                    Exam_Dt ed=Exam_Worker.showExamById(1);
                    ArrayList<Questions_Dt> list=Questions_Worker.ShowQuestionByExID(1);
%>
     <body>
               <div class="container-fluid">
                    <div class="row">
                         <div class="col-md-2" id="btns">
                              <%
                                   for(int i=1;i<=5;i++){
                              %>
                              <button type="" id="<%=i%>" class="btn btn-default btn-lg" onclick="getQ(this.id)"> Q <%=i%></button>
                              <%
                                   }
                              %>
                         </div>
                         <div class="col-md-10">
                              <div class="row" id="title">
                                   <div class="col-md-9">
                                        <div class="container-fluid">
                                             <br>
                                             <h1>Test Title</h1>
                                        </div>
                                   </div>
                                   <div class="col-md-3">
                                        <div class="container-fluid">
                                             <br>
                                             <h1>TIMER</h1>
                                        </div>
                                   </div>
                              </div><hr style="color:#000">
                              <div class="row" id="qconts">
                                   <div class="col-md-12" id="question">
                                        <h1>Click on the Question Numbers to answer the questions</h1>
                                   </div>
                                  
                              </div>
                              
                         </div>
                    </div>
               </div>
     </body>
</html>
