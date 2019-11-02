<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FavoritedProperties.aspx.cs" Inherits="FavoritedProperties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid userDash mb-5 pb-3">
        <!--USER DASH-NAV-->
        <div class="navbar navbar-light">
            <a class="navbar-brand" href="#">
                <img src="..." alt="..." class="img-thumbnail">
                Welcome USER,
                </a>


            <div class="progress" style="height: 30px;">
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Profile Completion</div>
            </div>

        </div>
        <!--END OF USER DASH-NAV-->
    </div>



    <div class="container-fluid px-5">

        <!--BREADCRUMBS-->
        <section>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="TenantDashboard.aspx" class="breadLink">Dashboard</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Favorited Properties</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->

        <div class="pl-3">
            <h3>Favorited Properties</h3>
        </div>

        <section>
            <div class="row px-3 py-3">

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="PropertyDetails.aspx" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->

                        <!-- <div>
                                    <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>    
                                </div>-->


                        <div>
                            <button class="btn"><i class="fas fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="PropertyDetails.aspx" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <!-- <div>
                                    <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>    
                                </div> -->

                        <div>
                            <button class="btn"><i class="fas fa-heart"></i></button>
                        </div>


                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="PropertyDetails.aspx" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->

                        <!-- <div>
                                    <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>    
                                </div>-->


                        <div>
                            <button class="btn"><i class="fas fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="PropertyDetails.aspx" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <!-- <div>
                                    <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>    
                                </div> -->

                        <div>
                            <button class="btn"><i class="fas fa-heart"></i></button>
                        </div>


                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>




            </div>
        </section>


    </div>
</asp:Content>

