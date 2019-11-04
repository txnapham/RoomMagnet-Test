<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HostAccount.aspx.cs" Inherits="HostAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">

        <!--BEGINNING OF CREATE ACCOUNT FORM-->

        <div class="row ">
            <div class="col-md-6">

                <div class="col-md-12  creatAccountWelcome">
                    <h2>Welcome to RoomMagnet!</h2>
                </div>

                <%--<form>--%>
                <div class="form-group">
                    <asp:TextBox ID="txtFN" runat="server" class="form-control form-control-lg" aria-describedby="FirstName" placeholder="First Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtMN" runat="server" class="form-control form-control-lg" aria-describedby="MiddleName" placeholder="Middle Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtLN" runat="server" class="form-control form-control-lg" aria-describedby="LastName" placeholder="Last Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtBday" runat="server" class="form-control form-control-lg" placeholder="Birthdate (MM/DD/YYYY)"></asp:TextBox>
                </div>

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

                <div class="form-group">
                    <asp:TextBox ID="txtPhone" runat="server" class="form-control form-control-lg" placeholder="Phone Number (XXX-XXX-XXXX)"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg" aria-describedby="emailHelp" placeholder="Email"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">*We will never share your email with anyone else.</small>
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <%--for testing purposes--%>
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-lg" placeholder="Password" TextMode ="Password"></asp:TextBox>
                </div>

                <div class="form-group form-check">
                    <asp:CheckBox ID="cbBackCheck" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Perform background check now</label>
                </div>

                <div class="form-group form-check">
                    <asp:CheckBox ID="cbAgreement" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Agreement to Terms &amp; Conditions</label>
                </div>

                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <%--for testing purpose--%>

                <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" class="btn btn-info" OnClick="btnCreateAccount_Click" />
                <%--<a class="btn btn-info" id="createAccountButton" href="HostAccountCategories.aspx">Create Account</a>--%>

                <%--should only go to next page (host category when creation is successful--%>

                <%--</form>--%>
            </div>
    <div class="col-md-6 createAccountSIDEImage"></div>

        </div>


    </div>
</asp:Content>

