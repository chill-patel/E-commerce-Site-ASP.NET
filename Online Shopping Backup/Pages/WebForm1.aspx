<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Online_Shopping_Backup.Pages.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">




   

    <link rel="stylesheet" href="../CSS/bootstrap.min.css" />
    <title></title>

</head>
<body>
    <!--couresel -->
    <div id="my" class="carousel slide">


           <ol class="carousel-indicators">
        <li  data-target="#my" data-slide-to="0"></li>
        <li  data-target="#my" data-slide-to="1"></li>
        <li  data-target="#my" data-slide-to="2"></li>
        <li  data-target="#my" data-slide-to="3"></li>
        
      </ol>



        <div class="carousel-inner">

            <div class="item active">
                <img src="../Images/1.PNG" class="img-responsive">
            </div>

            <div class="item">
                <img src="../Images/2.PNG" class="img-responsive">
            </div>

            <div class="item ">
                <img src="../Images/3.PNG" class="img-responsive">
            </div>

            <div class="item">
                <img src="../Images/4.PNG" class="img-responsive">
            </div>

        </div>

        <a class="left carousel-control" href="#my" data-slide="prev">
            <span class="icon-prev"></span></a>
        <a class="right carousel-control" href="#my" data-slide="next">
            <span class="icon-next"></span></a>



    </div>

    <!--End couresel -->







    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
     <script type="text/javascript" src="../Scripts/jquery.min.js"></script>
     <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
</body>
</html>
