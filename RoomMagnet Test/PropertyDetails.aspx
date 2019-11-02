<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PropertyDetails.aspx.cs" Inherits="PropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--BEGINNING OF FILTER, SEARCH BAR , and Breadcrumbs-->
    <div class="container-fluid pl-0 pr-0 searchPageDetailsearchBarandBread">

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
                    <li class="breadcrumb-item"><a href="Home.aspx" class="breadLink">Home</a></li>
                    <li class="breadcrumb-item"><a href="Search.aspx" class="breadLink">Search Results</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Property Details</li>

                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->
    </div>
    <!--END OF FILTER, SEARCH BAR, AND BREADCRUMBS-->



    <!--Property Detail-->
    <div class="container-fluid searchpageDetailBodyContent pl-0 pr-0 mt-0">

        <section>
            <header class="propertyHeaderImage">
                <!--Background Image-->
            </header>
            <div class="row propertyPageDetailTitle pt-3 pb-3">
                <div class="col-md-10 pl-5">Kew Garderns</div>
                <div class="col-md-2">
                    <button class="btn favoriteHeartButton"><i class="far fa-heart"></i></button>
                </div>
            </div>

        </section>


        <section>
            <!--FIRST ROW-->

            <div class="row px-5 py-5">
                <div class="col-md-8 ">
                    <div class="col-md-12 card  shadow-sm  px-5 py-5">
                        <div>
                            <h4>About Property</h4>
                        </div>
                    </div>

                    <div class="col-md-12 card  shadow-sm  px-5 py-5">
                        <div>
                            <h4>Amenities</h4>
                        </div>
                    </div>

                    <div class="col-md-12 card  shadow-sm  px-5 py-5">
                        <div>
                            <h4>Images</h4>
                        </div>
                    </div>

                    <div class="col-md-12 card  shadow-sm  px-5 py-5">
                        <div>
                            <h4>Local Information</h4>
                        </div>
                    </div>

                </div>


                <div class="col-md-4 ">
                    <div class="px-5 py-5  shadow-sm  card">
                        <h4>Message Center</h4>
                        <form>
                            <div class="form-group">
                                <label for="firstName">Name</label>
                                <input type="text" class="form-control" id="#" aria-describedby="emailHelp" placeholder="Name">
                            </div>

                            <div class="form-group messagebox">
                                <label for="messagePerson">Message Host</label>
                                <textarea class="form-control " id="messagePerson"> </textarea>

                                <a href="#" class="btn btn-info mt-5">Send Message</a>
                            </div>

                        </form>
                    </div>
                </div>


            </div>


            <!--END OF FIRST ROW-->
        </section>
    </div>
    <!--End of Property Detail-->
</asp:Content>

