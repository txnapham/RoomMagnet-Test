<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HostDashboard.aspx.cs" Inherits="HostDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--USER DASH-NAV-->

    <div class="container-fluid userDash mb-5 pb-3">
        <div class="navbar navbar-light">
            <p>
                <img src="images/robert-godwin-cdksyTqEXzo-unsplash.jpg" alt="..." class="img-thumbnail" width="40" height="auto">
                Welcome USER,
            </p>


            <div class="progress" style="height: 30px;">
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Profile Completion</div>
            </div>
        </div>

        <div class="row">

            <div class="col-md-12">
                <div class="pl-3">
                    <button class="btn btn-info btn-sm">English</button>
                    <button class="btn btn-info btn-sm">Active</button>
                    <button class="btn btn-info btn-sm">Non-Smoker</button>
                    <button class="btn btn-info btn-sm">Adventurous</button>
                    <button class="btn btn-info btn-sm">Early Riser</button>
                </div>
            </div>

        </div>
    </div>
    <!--END OF USER DASH-NAV-->

    <!--reminders-->
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="col-md-12">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Complete profile now!</strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="alert alert-danger alert-dismissible fade show" role="alert">
                        <strong>Complete background check now!</strong>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end of reminders-->




    <!--DASHBOARD CARDS-->
    <div class="container-fluid px-5 ">
        <section>
            <div class="row">
                <div class="col-md-6">

                    <!--PROPERTIES MOD-->
                    <div class="col-md-12">
                        <div class="card  shadow-sm  mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Properties</h5>
                                <ul>
                                    <li><a href="#" class="tenantdashlist">South Main House</a></li>
                                </ul>
                                <!--BUTTON-->
                                <a href="ListedProperties.aspx" class="btn btn-info">View more</a>
                                <!--END OF BUTTON-->
                            </div>
                        </div>
                    </div>
                    <!--END OF PROPERTIES MOD-->

                    <!--TENANT/HOST MOD-->
                    <div class="col-md-12">
                        <div class="card  shadow-sm  mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Tenants</h5>
                                <ul>
                                    <li><a href="#" class="tenantdashlist">Liam Brown</a></li>
                                    <li><a href="#" class="tenantdashlist">Jake Smith</a></li>
                                </ul>
                                <!--BUTTON-->
                                <a href="Host-Tenants.aspx" class="btn btn-info">View more</a>
                                <!--END OF BUTTON-->
                            </div>
                        </div>
                    </div>
                    <!--END OF TENANT/HOST MOD-->



                </div>


                <div class="col-md-6">

                    <!--MESSAGE MOD-->
                    <div class="col-md-12">
                        <div class="card shadow-sm  mb-4">
                            <div class="card-body">
                                <h5 class="card-title">Message Center</h5>

                                <p>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/ronny-sison-4lnzxFIgTmg-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/benjamin-parker-OhKElOkQ3RE-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/ronny-sison-4lnzxFIgTmg-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/benjamin-parker-OhKElOkQ3RE-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/ronny-sison-4lnzxFIgTmg-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/benjamin-parker-OhKElOkQ3RE-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/ronny-sison-4lnzxFIgTmg-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                    <a class="navbar-brand" href="#">
                                        <img src="images/benjamin-parker-OhKElOkQ3RE-unsplash.jpg" alt="..." class="img-thumbnail" width="50" height="auto">
                                    </a>
                                </p>

                                <ul>
                                    <li><a href="#" class="tenantdashlist">New Message</a></li>
                                    <li><a href="#" class="tenantdashlist">New Message</a></li>
                                    <li><a href="#" class="tenantdashlist">New Message</a></li>


                                </ul>



                                <!--BUTTON-->

                                <a href="HostMessageCenter.aspx" class="btn btn-info">View Messages</a>
                                <!--END OF BUTTON-->
                            </div>
                        </div>
                    </div>
                    <!--END OF MESSAGE MOD-->

                    <!--APPOINTMENT MOD-->
                    <div class="col-md-12">
                        <div class="card  shadow-sm  mb-4">
                            <div class="card-body">
                                <h5 class="card-title">My Appointments</h5>
                                <iframe src="https://calendar.google.com/calendar/embed?height=300&amp;wkst=1&amp;bgcolor=%235f6062&amp;ctz=America%2FNew_York&amp;src=N3FhOTVibW1vM2RkbTBiMWVkbHNna2FoaTBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23795548&amp;showTitle=0&amp;showPrint=0&amp;showTabs=1&amp;showCalendars=0" style="border-width: 0" width="300" height="300" frameborder="0" scrolling="no"></iframe>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                                <!--BUTTON-->

                                <a class="btn btn-info" href="#" data-toggle="modal" data-target="#createAppointment">Create Appointment</a>

                                <div class="modal" id="createAppointment">
                                    <div class="modal-dialog">
                                        <div class="modal-content">

                                            <div class="modal-body">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <form>
                                                    <div class="form-group">
                                                        <input type="text" class="form-control" id="recipient-name" placeholder="Recipient">
                                                    </div>

                                                    <div class="form-group">
                                                        <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text">
                                                    </div>

                                                    <a class="btn btn-md btn-info btn-block" href="#">Create Appointment </a>


                                                </form>


                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!--END OF BUTTON-->

                            </div>
                        </div>
                    </div>

                    <!--END OF APPOINTMENT MOD-->

                </div>
            </div>
        </section>
    </div>
    <!--END OF DASHBOARD CARDS-->

</asp:Content>

