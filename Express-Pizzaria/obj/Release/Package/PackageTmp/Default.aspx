<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Express_Pizzaria._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="/Content/Default.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <div class="Content Box">
        <h1>Express Pizza Ringsted</h1><br />


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
                    <h3 class="bg-light">Belinda</h3>
                    <p id="Quote" class="bg-dark">Hurtig levering.. var her i løbet af 15-20 min. Havde bestilt en reje cocktail og en indbagt pizza Calles Special, med spaghetti og kødsovs.
Tror måske jeg havde fået en rejesalat i stedet for reje cocktail, det var i hvertfald en stor potion, men hvem kan klage over at få for meget, når det var godt. :)
Pizzaen var også god. :)</p>
                </div>
                <div class="item">
                    <h3 class="bg-light">Stephanie</h3>
                    <p id="Quote" class="bg-dark">Kvalitet ville klart være mere friske råvare og pizzabund selvfølgelig, men super fin service og hurtig levering må jeg sige især efter sommertiden, måske noget var mærkeligt fordi der stor leverings tiden inden at jeg rent faktisk havde godkendt betalingen, men derfor gjorde de det stadig indenfor en halv time, trods jeg lagde mærke til just-eat's fejl med tiden.</p>
                </div>
                <div class="item">
                    <h3 class="bg-light">Nicki</h3>
                    <p id="Quote" class="bg-dark">I sig selv var det en god pizza, lækker ost, tomatsauce, skinke og kebab.
Hvad der gik galt var at det var en almindelig pizza, det var ikke en deep pan som jeg havde bestilt.

Synes det er lidt ærgelig at man betaler ekstra for at få en deep pan, og så får man det ikke.
Det er sidste gang jeg bestiller mad fra Express.</p>
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
    <div class="Pictures">
        <img src="/Pictures/Food/picture (41).jpg" alt="First Slide"><br />
        <img src="/Pictures/Food/picture (30).jpg" alt="Second Slide"><br />
        <img src="/Pictures/Food/picture (21).jpg" alt="Third Slide"><br />
    </div>

</div>

</asp:Content>
