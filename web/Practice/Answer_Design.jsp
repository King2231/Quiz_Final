<%--  
    Document   : Answer_Design
    Created on : 03-Sep-2017, 22:02:19
    Author     : King
--%>

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
     height: 400px;
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
    <script>
         <%
               for(int i=1;i<=20;i++){%>
                    $(document).ready(function(){
                         $('#<%=i%>').click(function(){
                              $('#prev').attr('href','#<%=i-1%>');
                              $('#next').attr('href','#<%=i+1%>');
                         });
                    });
                   
          <% 
               }
          %>
</script>
</head>
     <body>
          
               <div class="container-fluid">
                    <div class="row">
                         <div class="col-md-2" id="btns">
                              <%
                                   for(int i=1;i<=20;i++){
                              %>
                              <a href="#<%=i%>">
                                   <button type="submit" class="btn btn-default btn-lg blue-grey">Q <%=i%></button>
                              </a>
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
                                   <div class="col-md-9" id="question">
                                        <%
                                             for(int i=1;i<=20;i++){
                                        %>
                                        <div id="<%=i%>" style="height: 400px;">
                                             Question <%=i%>
                                        </div>
                                        <%
                                             }
                                        %>
                                   </div>
                                   <!--div class="col-md-3">
                                        <div class="row">
                                             <div class="col-md-12">
                                                  <button type="submit" class="btn btn-default btn-lg blue-grey">Lock</button>
                                             </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-md-12">
                                                  <button type="submit" class="btn btn-default btn-lg blue-grey">Check</button>
                                             </div>
                                        </div>
                                        <div class="row">
                                             <div class="col-md-12">
                                                  <button type="submit" class="btn btn-default btn-lg blue-grey">Skip</button>
                                             </div>
                                        </div>
                                   </div-->
                              </div>
                              <!--div class="row">
                                   <div class="col-md-4">
                                        <a href=""><button type="submit" class="btn btn-default btn-md blue-grey"><h3> < </h3>Previous</button></a>
                                   </div>
                                   <div class="col-md-4">    
                                   </div>
                                   <div class="col-md-4">
                                        <a href="" id="next"><button type="submit" class="btn btn-default btn-md blue-grey"><h3> > </h3>Next</button></a>
                                   </div>
                              </div-->
                         </div>
                    </div>
               </div>
     </body>
</html>
