<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #map {
            height: 600px;
            width: 1200px;
        }
    </style>

    <div align="center">
        <div id="map">
        </div>
    </div>

    <script>
        var map;
        function initMap() {
            var latitude = 38.4496;
            var longitude = -78.8689;
            map = new google.maps.Map(document.getElementById('map'),
                {
                    center: { lat: latitude, lng: longitude },
                    zoom: 8
                });
        }

        function newLocation(newLat, newLng) {
            map.setCenter({ newLat, newLng })
            return false;
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNcHEQpOGd14rKFMgFTgbH-fZS2dD1UBw&callback=initMap"
        async defer></script>

    <!--BEGINNING OF SEARCH BAR-->
    <div class="container-fluid searchPageBodyContent">

        <section>
            <div class="row pb-2">

                <div class="col-md-12">
                    <!--FILTER BUTTON AND FILTER FORM-->
                    <div class="form-row justify-content-center">
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#filterOptions">Filter</button>
                        <!--END OF FILTER BUTTON-->

                        <!--filter form starts-->
                        <div class="modal" id="filterOptions">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">

                                    <div class="modal-body">

                                        <button type="button" class="close" data-dismiss="modal">&times;</button>

                                        <!--start of amentities-->
                                        <h6>Amenities</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Connected bathroom</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Walk-in closet</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Dryer</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Ceiling fan</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Kitchen</label>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Separate entrance</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Air conditioning</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Washer</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Wifi</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Heating</label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!--end of amenities-->


                                        <!--start of facilites-->
                                        <h6>Facilites</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Street Paking</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Pool</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Deck</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Garage parking</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Backyard</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Porch</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of facilities-->


                                        <!--start of personality-->
                                        <h6>Personality *will come up with better name</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Introvert</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Extrovert</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Family oriented</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Tech savy</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Early riser</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Night owl</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Religious</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Non-smoker</label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!--end of personality-->





                                        <!--start of languages-->
                                        <h6>Languages</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">English</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Spanish</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Mandarin</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Japanese </label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">German</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">French</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of languages-->


                                        <button type="button" class="btn btn-info btn-block">
                                            Add Filters
                                           
                                        </button>


                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--END OF FILTER FORM-->

                        <!--SEARCH BAR-->
                        <div class="col-md-6 searchBar">
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control form-control-lg" placeholder="search"></asp:TextBox>
                        </div>
                        <!--END OF SEARCH BAR-->


                        <!--BEGINNING OF SEARCH BUTTON-->
                        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-info"/>
                        <!--END OF SERACH BUTTON-->
                    </div>
                </div>
            </div>
        </section>
        <!--END OF FILTER, SEARCH BAR, AND SEARCH BUTTON -->

        <!--BREADCRUMBS-->
        <section>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" class="breadLink">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Search</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->

        <!--GOOGLE MAPS GOES HERE-->
        <section>
            <div class="row">
            </div>
        </section>
        <!--END OF GOOGLE MAPS-->

        <!-- number of properties listed on search-->
        <section>
            <div class="row">
                <div class="col-md-12">
                    <h3></h3>
                </div>
            </div>
        </section>

        <!--BEGINNING OF HOUSE LISTINGS-->
        <section>
            <div class="row px-3 py-3">
                <div class="col-md-3">
                    <div class="card  shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FAVORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card shadow-sm  mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card  shadow-sm mb-4">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="search-result-page-detail.html" class="cardLinks">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer c </p>
                            </div>
                        </a>

                        <!--FAVORITE BUTTON-->
                        <div>
                            <button id="heartbtn" class="btn favoriteHeartButton"><i id="hearti" class="far fa-heart"></i></button>
                        </div>
                        <!--END OF FABORITE BUTTON-->
                    </div>
                </div>
            </div>
        </section>
        <!--END OF HOUSE LISTINGS-->


        <!--PAGINATION-->
        <section>
            <nav aria-label="Search results pages">
                <ul class="pagination justify-content-center">
                    <li class="page-item"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
                    <li class="page-item active"><a class="page-link" href="#">1<span class="sr-only"></span></a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </section>
        <!--END OF PAGINATION-->

    </div>
</asp:Content>

