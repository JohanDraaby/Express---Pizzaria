<%@ Page  Title="Find Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FindUs.aspx.cs" Inherits="Express_Pizzaria.FindUs" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/FindUs.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!DOCTYPE html>

    <div id="Box">
        <div class="MapContactInfo">
            <div class="Map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d557.0366245639085!2d11.788385553715298!3d55.440390819647696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x465291cec92d0d63%3A0x9761d431a51603be!2sExpress+Pizzaria!5e0!3m2!1sda!2sdk!4v1522915114897" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>
            <div class="ContactInfo">
                <a href="https://www.hungry.dk/ringsted/express-pizzeria/"><img src="/Pictures/HungryDKLogo.jpg" alt="HungryDK" /></a>
                <a href="https://www.just-eat.dk/restaurants-express4100/menu"><img src="/Pictures/JustEatLogo.jpg" alt="Just eat" /></a>
                <address><h3 id="Quote" class="bg-dark">Sjællandsgade 18,<br /> 4100 Ringsted<br /><a href="tel:57675554">57 67 55 54</a><br /><a href="tel:26192069">26 19 20 69</a></h3></address>
            </div>
        </div>

         <div class="bs-example">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Carousel indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>   
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="/Pictures/Food/picture (10).jpg" alt="First Slide">
                    </div>
                    <div class="item">
                        <img src="/Pictures/Food/picture (5).jpg" alt="Second Slide">
                    </div>
                    <div class="item">
                        <img src="/Pictures/Food/picture (3).jpg" alt="Third Slide">
                    </div>
                </div>
                <!-- Carousel controls -->
                <a class="carousel-control left" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="carousel-control right" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </div>

</asp:Content>