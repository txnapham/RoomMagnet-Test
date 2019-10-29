<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateAccount.aspx.cs" Inherits="CreateAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">

        <section>
            <div class="row">
                <div class="col-md-12 creatAccountWelcome">
                    <h2>Welcome to RoomMagnet!</h2>
                </div>
            </div>
        </section>

        <!--BEGINNING OF CREATE ACCOUNT FORM-->
        <section class="formPage">
            <div class="row">
                <div class="col-md-6">

                    <form>
                        <div class="form-group">
                            <label for="firstName">First Name</label>
                            <input type="text" class="form-control form-control-lg" id="#" aria-describedby="emailHelp" placeholder="First Name">
                        </div>

                        <div class="form-group">
                            <label for="lastName">Last Name</label>
                            <input type="text" class="form-control form-control-lg" id="#" aria-describedby="emailHelp" placeholder="Last Name">
                        </div>

                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Perform background check now</label>
                        </div>

                        <div class="form-group form-check">
                            <input type="checkbox" class="form-check-input" id="exampleCheck1">
                            <label class="form-check-label" for="exampleCheck1">Agreement to Terms &amp; Conditions</label>
                        </div>
                        <button type="submit" class="btn btn-info" id="createAccountButton">Create Account</button>
                    </form>

                </div>

                <div class="col-md-6 createAccountSIDEImage"></div>

            </div>
        </section>

    </div>
</asp:Content>

