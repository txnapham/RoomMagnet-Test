<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HostDashboard.aspx.cs" Inherits="HostDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--DASHBOARD CARDS-->
    <div class="container-fluid px-5 py-5">

        <div class="row">

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Properties</h5>
                        <p class="card-text">This is</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-info">View more</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Tenants</h5>
                        <p class="card-text">This is </p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-info">View more</a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">Message Center</h5>
                        <p class="card-text">This is the messsage center. This should have a different height when content is placed in the card.his is the messsage center. This should have a different height when content is placed in the card.his is the messsage center. This should have a different height when content is placed in the card.This is the messsage center. This should have a different height when content is placed in the card.his is the messsage center. This should have a different height when content is placed in the card.his is the messsage center. This should have a different height when content is placed in the card</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-info">View Messages</a>
                    </div>
                </div>
            </div>




            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-body">
                        <h5 class="card-title">My Appointments</h5>
                        <iframe src="https://calendar.google.com/calendar/embed?height=300&amp;wkst=1&amp;bgcolor=%235f6062&amp;ctz=America%2FNew_York&amp;src=N3FhOTVibW1vM2RkbTBiMWVkbHNna2FoaTBAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23795548&amp;showTitle=0&amp;showPrint=0&amp;showTabs=1&amp;showCalendars=0" style="border-width: 0" width="300" height="300" frameborder="0" scrolling="no"></iframe>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                        <a href="#" class="btn btn-info">Add Appointment</a>
                    </div>
                </div>
            </div>
        </div>


    </div>
    <!--END OF DASHBOARD CARDS-->

</asp:Content>

