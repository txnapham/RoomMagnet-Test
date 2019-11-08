<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        #map {
            height: 300px;
            width: auto;
        }
    </style>



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

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript">
    </script>

        <script type="text/javascript">  
        function FavoriteProperty(PropertyID) 
        {
              $.ajax({  
                      type: "POST",
                      url: "WebMethodCall.aspx/FavoriteProperty",
                      data: "{ PropertyID: " + PropertyID + "}",  
                      contentType: "application/json; charset=utf-8",  
                      dataType: "json",  
                      success: function (response) {  
                          alert(response.d);
                          console.log('hi');
                      }  
                  });  
              }  
    </script>

    <!--BEGINNING OF SEARCH BAR-->
    <div class="container-fluid searchPageBodyContent">

                <!--GOOGLE MAPS GOES HERE-->
        <section>
            <div id="map">
            </div>
        </section>
        <!--END OF GOOGLE MAPS-->


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
                                        <h6>Facilites</h6>
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
                            <asp:TextBox ID="txtSearch" runat="server" class="form-control form-control-lg" placeholder="Search"></asp:TextBox>
                        </div>
                        <!--END OF SEARCH BAR-->


                        <!--BEGINNING OF SEARCH BUTTON-->
                        <asp:Button ID="btnSearch" OnClick="btnSearch_Click" runat="server" Text="Search" class="btn btn-info"/>

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
                    <li class="breadcrumb-item active" aria-current="page">Search</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->

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
                <asp:Literal ID="Card1" runat="server" Mode="Transform"></asp:Literal>
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

