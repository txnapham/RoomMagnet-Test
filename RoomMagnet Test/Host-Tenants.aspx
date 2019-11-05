<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Host-Tenants.aspx.cs" Inherits="Host_Tenants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid userDash mb-5 pb-3">
        <!--USER DASH-NAV-->
        <div class="navbar navbar-light">
            <p>
                <img src="images/robert-godwin-cdksyTqEXzo-unsplash.jpg" alt="..." class="img-thumbnail" width="40" height="auto">
                Welcome USER,
            </p>


            <div class="progress" style="height: 30px;">
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 66%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Profile Completion</div>
            </div>

        </div>
        <!--END OF USER DASH-NAV-->
    </div>



    <div class="container-fluid px-5">
        <!--BREADCRUMBS-->
        <section>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="HostDashboard.aspx" class="breadLink">Dashboard</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Tenants</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->


        <div>
            <h3>Tenants</h3>
        </div>

        <section>
            <div class="row">
                <div class="col-md-12">
                    <h5>Notification</h5>
                    <div class="alert alert-info alert-dismissible fade show" role="alert">
                        <strong>Someone favorited your property!</strong> You should check in on some of those fields below.
                           
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                </div>
            </div>
        </section>


        <section>
            <div class="row">
                <div class="col-md-12">
                </div>
            </div>
        </section>



    </div>
</asp:Content>

