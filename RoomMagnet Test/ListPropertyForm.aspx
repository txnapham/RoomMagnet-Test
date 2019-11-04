<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListPropertyForm.aspx.cs" Inherits="ListPropertyForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid userDash mb-5 ">
        <!--USER DASH-NAV-->
        <div class="navbar navbar-light">
            <p>
                <img src="images/robert-godwin-cdksyTqEXzo-unsplash.jpg" alt="..." class="img-thumbnail" width="40" height="auto">
                Welcome USER,
            </p>

            <!--END OF USER DASH-NAV-->
            <div class="progress" style="height: 30px;">
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Profile Completion</div>
            </div>

        </div>
    </div>



    <div class="container-fluid px-5">

        <!--BREADCRUMBS-->
        <section>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="HostDashboard.aspx" class="breadLink">Dashboard</a></li>
                    <li class="breadcrumb-item"><a href="ListedProperties.aspx" class="breadLink">Properties</a></li>
                    <li class="breadcrumb-item active" aria-current="page">List Property</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->


        <!--BODY CONTENT-->
        <div class="container-fluid px-5  propListingPage">
            <section>

                <div class="row">
                    <div class="col-md-12">
                        <h3>List Property</h3>
                    </div>
                </div>
            </section>



            <section class="pt-3">
                <form>
                    <div class="form-group">
                        <asp:TextBox ID="txtHouseNum" runat="server" class="form-control form-control-lg" placeholder="House Number"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtStreet" runat="server" class="form-control form-control-lg" placeholder="Street"></asp:TextBox>
                    </div>


                    <div class="form-row">
                        <div class="form-group col-md-7">
                            <asp:TextBox ID="txtCity" runat="server" class="form-control form-control-lg" placeholder="City"></asp:TextBox>
                        </div>


                        <div class="form-group col-md-3">

                            <asp:DropDownList ID="ddState" runat="server" class="form-control  form-control-lg">
                                <asp:ListItem Value="">State</asp:ListItem>
                                <asp:ListItem>AL</asp:ListItem>
                                <asp:ListItem>AK</asp:ListItem>
                                <asp:ListItem>AZ</asp:ListItem>
                                <asp:ListItem>AR</asp:ListItem>
                                <asp:ListItem>CA</asp:ListItem>
                                <asp:ListItem>CO</asp:ListItem>
                                <asp:ListItem>CT</asp:ListItem>
                                <asp:ListItem>CT</asp:ListItem>
                                <asp:ListItem>DC</asp:ListItem>
                                <asp:ListItem>DE</asp:ListItem>
                                <asp:ListItem>FL</asp:ListItem>
                                <asp:ListItem>GA</asp:ListItem>
                                <asp:ListItem>HI</asp:ListItem>
                                <asp:ListItem>ID</asp:ListItem>
                                <asp:ListItem>IL</asp:ListItem>
                                <asp:ListItem>IN</asp:ListItem>
                                <asp:ListItem>IA</asp:ListItem>
                                <asp:ListItem>KS</asp:ListItem>
                                <asp:ListItem>KY</asp:ListItem>
                                <asp:ListItem>LA</asp:ListItem>
                                <asp:ListItem>ME</asp:ListItem>
                                <asp:ListItem>MD</asp:ListItem>
                                <asp:ListItem>MA</asp:ListItem>
                                <asp:ListItem>MI</asp:ListItem>
                                <asp:ListItem>MN</asp:ListItem>
                                <asp:ListItem>MS</asp:ListItem>
                                <asp:ListItem>MO</asp:ListItem>
                                <asp:ListItem>MT</asp:ListItem>
                                <asp:ListItem>NE</asp:ListItem>
                                <asp:ListItem>NV</asp:ListItem>
                                <asp:ListItem>NH</asp:ListItem>
                                <asp:ListItem>NJ</asp:ListItem>
                                <asp:ListItem>NM</asp:ListItem>
                                <asp:ListItem>NY</asp:ListItem>
                                <asp:ListItem>NC</asp:ListItem>
                                <asp:ListItem>ND</asp:ListItem>
                                <asp:ListItem>OH</asp:ListItem>
                                <asp:ListItem>OK</asp:ListItem>
                                <asp:ListItem>OR</asp:ListItem>
                                <asp:ListItem>PA</asp:ListItem>
                                <asp:ListItem>RI</asp:ListItem>
                                <asp:ListItem>SC</asp:ListItem>
                                <asp:ListItem>SD</asp:ListItem>
                                <asp:ListItem>TN</asp:ListItem>
                                <asp:ListItem>TX</asp:ListItem>
                                <asp:ListItem>UT</asp:ListItem>
                                <asp:ListItem>VT</asp:ListItem>
                                <asp:ListItem>VA</asp:ListItem>
                                <asp:ListItem>WA</asp:ListItem>
                                <asp:ListItem>WV</asp:ListItem>
                                <asp:ListItem>WI</asp:ListItem>
                                <asp:ListItem>WY</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group col-md-2">
                            <asp:TextBox ID="txtZip" runat="server" class="form-control form-control-lg" placeholder="Zip"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="txtCountry" runat="server" class="form-control form-control-lg" placeholder="Country"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <small id="addressDisclosure" class="form-text text-muted">*We will never share your address until you begin the lease process.</small>
                    </div>


                </form>
            </section>


            <section>
                <div class="row pt-3">
                    <div class="col-md-12">
                        <h5>Please select your property type:</h5>
                    </div>
                </div>
            </section>



            <!--property type start here-->
            <section>
                <div class="row px-5 py-3">
                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBoxList ID="cbApartment" runat="server"></asp:CheckBoxList>
                                    <span class="slider round"></span>
                                </label>
                                <div>Apartment</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbLoft" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Loft</div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbHouse" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>House</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbTownhouse" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Townhouse</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--end of property type-->

            <section>
                <div class="row pt-3">
                    <div class="col-md-12">
                        <h5>Please select amenities that apply to you:</h5>
                    </div>
                </div>
            </section>

            <!--Amenities Start here-->
            <section>
                <div class="row px-5 py-3">
                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbConnBath" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Connected bathroom</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbWalkInClos" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Walk-in closet</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbDryer" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Dryer</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <div>Ceiling Fan</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbKitchen" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Kitchen</div>
                            </div>
                        </div>


                    </div>


                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbSepEnt" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Separate entrance</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <div>Air Conditioning</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbWasher" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Washer</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbWifi" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Wifi</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbHeating" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Heating</div>
                            </div>
                        </div>

                    </div>
                </div>

            </section>
            <!--end of amenities-->

            <section>
                <div class="row">
                    <div class="col-md-12">
                        <h5>Please select facilities that apply to you:</h5>
                    </div>
                </div>
            </section>

            <!--facilites start here-->
            <section>
                <div class="row px-5 py-3">
                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbStPark" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Street Parking</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbPool" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Pool</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbDeck" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Deck</div>
                            </div>
                        </div>

                    </div>


                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbGarPark" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Garage parking</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <input type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                                <div>Backyard</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbPorch" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Porch</div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!--end of facilites-->


            <section>
                <div class="row pt-3">
                    <div class="col-md-12">
                        <h5>Please select any house rules that apply to you:</h5>
                    </div>
                </div>
            </section>



            <!--property type start here-->
            <section>
                <div class="row px-5 py-3">
                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbPets" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Pets allowed</div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbSmoke" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Smoking allowed</div>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbGuest" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Guest allowed</div>
                            </div>
                        </div>


                        <form>
                            <h6>Don't see one that applies to you. Fill out the form below:</h6>
                            <div class="form-group">
                                <asp:TextBox ID="txtOtherRules" runat="server" class="form-control" aria-describedby="HouseRule" placeholder="Type your house rule here"></asp:TextBox>
                            </div>
                        </form>


                    </div>
                </div>
            </section>
            <!--end of property type-->



            <section>
                <div class="row pt-3">
                    <div class="col-md-12">
                        <h5>HomeShareSmarter</h5>
                    </div>
                </div>
            </section>



            <!--homesharesmarter start here-->
            <section>
                <div class="row px-5 py-3">
                    <div class="col-md-12">

                        <div class="col-md-12">
                            <div class="switchwrapper">
                                <label class="switch">
                                    <asp:CheckBox ID="cbHSS" runat="server" />
                                    <span class="slider round"></span>
                                </label>
                                <div>Allowed</div>
                            </div>
                        </div>

                    </div>

                </div>
            </section>
            <!--end of homesharesmarter-->

            <form class="pt-4">
                <div class="form-group">
                    <h5>Upload propery images here:</h5>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                </div>


                <div class="form-group form-check pt-4">
                    <asp:CheckBox ID="cbBackCheck" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Perform background check now</label>
                </div>

                <div class="form-group form-check">
                    <asp:CheckBox ID="cbAgreement" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Agreement to Terms &amp; Conditions</label>
                </div>
            </form>

            <asp:Button ID="btnListPropert" runat="server" class="btn btn-info btn-block" Text="List Property" OnClick="btnListPropert_Click" />




        </div>
        <!--END OF BODY CONTENT-->
    </div>
</asp:Content>

