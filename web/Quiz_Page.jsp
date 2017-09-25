<%-- 
    Document   : Quiz_Page
    Created on : 03-Sep-2017, 18:19:09
    Author     : King
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.quiz.POJO.Questions_Dt"%>
<%@page import="com.quiz.Workers.Questions_Worker"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Quiz :</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/logo_png.png" type="favicon/ico" />
    <!--style type="text/css">
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

    </style-->
</head>

     <body>
          <header>        
               <nav class="navbar navbar-expand-lg navbar-dark blue-grey darken-2">
                    <a class="navbar-brand" href="#">
                         MCA Quiz
                    </a>
               </nav>
          </header>
          <hr><br>
          <main>
               <%
                    ArrayList<Questions_Dt> list=Questions_Worker.ShowQuestionByExID(1);
                    Questions_Dt qd=list.get((int)Math.random());
                    
                    
             
               %>  
          </main>
     </body>
</html>
