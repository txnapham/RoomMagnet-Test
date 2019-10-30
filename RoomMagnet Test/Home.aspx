<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid pl-0 pr-0">
        <!--BEGINNING OF ROOMMAGNET IMAGE HEADER/JUMBOTRON-->
        <header class="bg-white text-black expand-lg">
            <div class="container text-center" id="#">

                <!--BACKGROUND IMAGE HERE-->

                <div class="col-md-12 ">
                    <h1>Real Homes. Real People. Real Life.</h1>

                    <!--FILTER BUTTON AND FILTER FORM-->
                    <div class="form-row justify-content-center">
                        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" id="filteroptions">Filter</button>

                        <!--BEGINNING OF FILTER FORM-->
                        <div class="dropdown-menu">
                            <form class="px-4 py-3">
                                <div class="form-group">
                                    <div class="row ">
                                        <div class="col-sm">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                <label class="form-check-lable" for="filterPetFriendly">Pet friendly</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                <label class="form-check-lable" for="filterSportsFan">Sports Fan</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row ">
                                        <div class="col-sm ">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filtermusicalfan">
                                                <label class="form-check-lable" for="filtermusicalfan">Musical Fan</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filterdogperson">
                                                <label class="form-check-lable" for="filterdogperson">Dog Person</label>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col-sm">
                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filtermusicalfan">
                                                <label class="form-check-lable" for="filtermusicalfan">Musical Fan</label>
                                            </div>

                                            <div class="form-check">
                                                <input type="checkbox" class="form-check-input" id="filterdogperson">
                                                <label class="form-check-lable" for="filterdogperson">Dog Person</label>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </form>
                        </div>

                        <!--END OF FILTER BUTTON AND FILTER FORM-->

                        <!--SEARCH BAR-->
                        <div class="col-md-6 searchBar">
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control form-control-lg" placeholder="Search"></asp:TextBox>
                            <%--<input type="text" class="form-control form-control-lg" placeholder="search">--%>
                        </div>
                        <!--END OF SEARCH BAR-->


                        <!--BEGINNING OF SEARCH BUTTON-->
                        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-info"/>
                        <%--<button type="submit" class="btn btn-info">Search</button>--%>
                        <!--END OF SERACH BUTTON-->
                    </div>
                </div>
            </div>
        </header>
        <!--END OF IMAGE HEADER/JUMBOTRON-->




        <!--BEGINNING OF BODY CONTENT-->


        <!--BEGINNING OF SECTION 1 Why is there a need for ...-->
        <section class="card shadow-sm rounded px-5 py-5">
            <!--FIRST ROW-->

            <div class="row ">
                <!-- shadow-sm rounded  PLACE IN CLASS IF WE WANT SHADOW-->
                <div class="col-md-12  card-body">
                    <h2>How RoomMagnet works</h2>

                </div>
            </div>
            <!--END OF FIRST ROW-->
        </section>
        <!--END OF SECTION 1 Why is there a need for ...-->



        <!--BEGINNING OF SECTION 2 RENT NEAR YOU IMAGES-->
        <section class="px-5 py-5">
            <!--BEGINNING OF SECOND ROW / IMAGE CAROUSEL/GALLERY-->
            <div class="row">
                <div class="col-md-12 ">
                    <h2>For rent near you</h2>
                    <!-- ADD IN IMAGE CAROUSEL/GALLERY-->
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="card-deck ">
                    <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a longer c </p>

                            <button class="btn favoriteHeartButton"><i class="far fa-heart"></i></button>

                            <button class="btn filledFavoriteHeartButton"><i class="fas fa-heart"></i></button>


                        </div>
                    </div>
                    <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This card</p>
                        </div>
                    </div>
                    <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card.</p>
                        </div>
                    </div>
                    <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is</p>
                        </div>
                    </div>
                </div>
            </div>


            <!--END OF SECOND ROW / IMAGE CAROUSEL/GALLERY-->
        </section>

        <!--END OF SECTION 2 RENT NEAR YOU IMAGES-->



        <!--BEGINNING OF SECTION 3 What makes RoomMagent Diff -->

        <section class="card shadow-sm rounded px-5 py-5">
            <!--BEGINNING OF THIRD ROW CONTENT-->
            <div class="row">
                <div class="col-md-12 card-body">
                    <h2>You can trust us</h2>
                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <i class="fas fa-user-check"></i>

                    <h4>Background Checks</h4>
                    <p>We highly encourage our users to complete a background screening.</p>
                </div>

                <div class="col-md-4">
                    <i class="fas fa-heart"></i>

                    <h4>Customer Support</h4>
                    <p>Support is available to assist thoses who would rather sit back and experience the benefits of the RoomMagnet program, but not the hassle of setting up.</p>
                </div>

                <div class="col-md-4">
                    <i class="fas fa-star"></i>

                    <h4>Rating System</h4>
                    <p>Tenants review their host after each contract term, and vice-versa. All ratings will be published on user profiles.</p>

                </div>

            </div>
            <!--END OF THIRD ROW CONTENT-->
        </section>

        <!--END OF SECTION  3 What makes RoomMagent Diff -->



    </div>
    <!--END OF BODY CONTENT-->

</asp:Content>

