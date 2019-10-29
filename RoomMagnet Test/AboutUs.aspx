<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid aboutPage ">



        <!--BREADCRUMBS-->
        <section>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#" class="breadLink">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">About Us</li>
                </ol>
            </nav>
        </section>
        <!--END OF BREADCRUMBS-->



        <!--Header Image-->

        <!--End of Header Image-->



        <section class="px-5 py-5" id="whoAreWe">
            <div class="row">
                <div class="col-md-12">
                    <h3>Who are we?</h3>
                </div>
            </div>
        </section>

        <section class="px-5 py-5" id="ourGoals">
            <div class="row">
                <div class="col-md-12">
                    <h3>Our Goals</h3>
                </div>
            </div>
        </section>


        <section class="px-5 py-5" id="faQs">
            <div class="row">
                <div class="col-md-12">
                    <h3>Frequently Asked Questions</h3>
                </div>
            </div>
        </section>


        <section class="px-5 py-5" id="ourPolicy">
            <div class="row">
                <div class="col-md-12">
                    <h3>Our Policy</h3>
                </div>
            </div>
        </section>


    </div>
</asp:Content>

