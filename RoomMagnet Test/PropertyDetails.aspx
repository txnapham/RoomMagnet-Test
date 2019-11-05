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
                                                        <asp:CheckBox ID="cbConBath" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbConBath">Connected Bathroom</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbWalkInCloset" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbWalkInCloset">Walk-In Closet</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbDryer" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbDryer">Dryer</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbCeilFan" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbCeilFan">Ceiling Fan</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbKitchen" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbKitchen">Kitchen</label>
                                                    </div>
                                                </div>

                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbSepEntr" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbSepEntr">Separate Entrance</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbAirCon" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbAirCon">Air Conditioning</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbWasher" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbWasher">Washer</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbWifi" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbWifi">Wifi</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbHeating" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbHeating">Heating</label>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!--end of amenities-->


                                        <!--start of facilites-->
                                        <h6>Facilities</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbStreetPark" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbStreetPark">Street Parking</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbPool" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbPool">Pool</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbDeck" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbDeck">Deck</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbGarPark" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbGarPark">Garage Parking</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbBackyard" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbBackyard">Backyard</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbPorch" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbPorch">Porch</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of facilities-->


                                        <!--start of personality-->
                                        <h6>Personality/Lifestyle</h6>
                                        <div class="form-group row">

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbIntrovert" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbIntrovert">Introvert</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbExtrovert" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbExtrovert">Extrovert</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbFamily" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbFamily">Family-Oriented</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbTechSavy" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbTechSavy">Tech-Savvy</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbEarlyRiser" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbEarlyRiser">Early Riser</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbNightOwl" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbNightOwl">Night Owl</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbReligious" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbReligious">Religious</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbNonSmoker" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbNonSmoker">Non-Smoker</label>
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
                                                        <asp:CheckBox ID="cbEnglish" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbEnglish">English</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbSpanish" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbSpanish">Spanish</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbMandarin" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbMandarin">Mandarin</label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-sm-6">

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbJapanese" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbJapanese">Japanese </label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbGerman" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbGerman">German</label>
                                                    </div>
                                                </div>

                                                <div class="col-sm-12">
                                                    <div class="form-check">
                                                        <asp:CheckBox ID="cbFrench" runat="server" class="form-check-input" />
                                                        <label class="form-check-label" for="cbFrench">French</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--end of languages-->

                                        <!--start of homesharesmarter-->   
                                            <h6>HomeshareSmarter® Living</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-12">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterhomeshareYES">
                                                        <label class="form-check-lable" for="filterhomeshareYES">Yes</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterhomeshareNO">
                                                        <label class="form-check-lable" for="filterhomeshareNO">No</label>
                                                        </div>
                                                        </div>
                                                       
                                                    </div>       
                                            </div>
                                            <!--end of homesharesmarter-->


                                        <button type="button" class="btn btn-info btn-block">
                                            Apply Filters
                                           
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
                        <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-info" />
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

