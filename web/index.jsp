<!DOCTYPE html>
<html lang="en">

<head>
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

    </style>
    <script>
function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById('txt').innerHTML =
    h + ":" + m + ":" + s;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
    return i;
}
</script>
</head>

<body onload="startTime()">

    <!-- Start your project here-->
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
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions 
                </a>
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
            <div class="row">
                <div class="col-md-8">
                    <div id="txt"></div>
                    <h3>MCA Online Quiz Portal</h3>
                    <h4>MCA Department</h2>
                    <h4>Sardar Patel Institute Of Technology.</h4>
                </div>
                <!--div class="col-md-4 col-md-offset-4">
                </div-->
                <div class="container col-md-4 col-md-offset-4 s1 card card-body">
                    <hr><h3>LOGIN To Answer a Quiz</h3>
                    <form>
                        <div class="form-group">
                            <input type="text" class="form-control" id="email" name="ucid" placeholder="Enter Roll No">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="pwd" placeholder="Enter Password" name="pass">
                        </div>
                        <button type="submit" class="btn btn-default blue-grey">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </main>
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
