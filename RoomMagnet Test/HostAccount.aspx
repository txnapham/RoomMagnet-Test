<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HostAccount.aspx.cs" Inherits="HostAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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

                    <%--<form>--%>
                    <div class="form-group">
                        <label for="txtFN">First Name</label>
                        <asp:TextBox ID="txtFN" runat="server" class="form-control form-control-lg" placeholder="First Name"></asp:TextBox>
                        <%--<input type="text" class="form-control form-control-lg" id="#" aria-describedby="emailHelp" placeholder="First Name">--%>
                    </div>

                    <div class="form-group">
                        <label for="txtLN">Last Name</label>
                        <asp:TextBox ID="txtLN" runat="server" class="form-control form-control-lg" placeholder="Last Name"></asp:TextBox>
                        <%--<input type="text" class="form-control form-control-lg" id="#" aria-describedby="emailHelp" placeholder="Last Name">--%>
                    </div>

                    <div class="form-group">
                        <label for="txtEmail">Email address</label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg" aria-describedby="emailHelp" placeholder="Email"></asp:TextBox>
                        <%--<input type="email" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">--%>
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>

                    <div class="form-group">
                        <label for="txtPassword">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-lg" placeholder="Password"></asp:TextBox>
                        <%--<input type="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">--%>
                    </div>

                    <div class="form-group form-check">
                        <asp:CheckBox ID="backCheck" runat="server" class="form-check-input"/>
                        <%--<input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
                        <label class="form-check-label" for="backCheck">Perform background check now</label>
                    </div>

                    <div class="form-group form-check">
                        <asp:CheckBox ID="agreement" runat="server" class="form-check-input"/>
                        <%--<input type="checkbox" class="form-check-input" id="exampleCheck1">--%>
                        <label class="form-check-label" for="agreement">Agreement to Terms &amp; Conditions</label>
                    </div>
                    <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" type="submit" class="btn btn-info" OnClick="btnCreateAccount_Click"/>
                    <%--<button type="submit" class="btn btn-info" id="createAccountButton">Create Account</button>--%>
                    <%--</form>--%>
                </div>

                <div class="col-md-6 createAccountSIDEImage"></div>

            </div>
        </section>

    </div>
</asp:Content>

