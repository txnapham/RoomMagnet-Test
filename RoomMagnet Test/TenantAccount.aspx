<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TenantAccount.aspx.cs" Inherits="TenantAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid ">

        <!--BEGINNING OF CREATE ACCOUNT FORM-->

        <div class="row ">
            <div class="col-md-6">

                <div class="col-md-12  creatAccountWelcome">
                    <h2>Welcome to RoomMagnet!</h2>
                </div>

                <%--<form>--%>
                <div class="form-group">
                    <asp:RequiredFieldValidator ID="fnReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a first name" Visible="False" Text="*" ControlToValidate="txtFN"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="fnLettersValidator" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid first name" Text="*" ControlToValidate="txtFN" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtFN" runat="server" class="form-control form-control-lg" aria-describedby="FirstName" placeholder="First Name" MaxLength="50"></asp:TextBox>
                </div>
                <asp:RegularExpressionValidator ID="mnLetters" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid middle name" Text="*" ControlToValidate="txtMN" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtMN" runat="server" class="form-control form-control-lg" aria-describedby="MiddleName" placeholder="Middle Name" MaxLength="50"></asp:TextBox>
                </div>
                 <asp:RequiredFieldValidator ID="lnReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a last name." ControlToValidate="txtLN" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="lnLetters" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid last name" Text="*" ControlToValidate="txtLN" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtLN" runat="server" class="form-control form-control-lg" aria-describedby="LastName" placeholder="Last Name" MaxLength="50"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="bdayReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a birth date." ControlToValidate="txtBday" Text="*"></asp:RequiredFieldValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtBday" runat="server" class="form-control form-control-lg" placeholder="Birthday (MM/DD/YYYY)" MaxLength="10"></asp:TextBox>
                    <%--<input class="form-control form-control-lg" id="date" name="date" placeholder="MM/DD/YYY" type="text">--%>
                </div>
                <asp:RegularExpressionValidator ID="houseNumValidatorNumbers" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid house number name" Text="*" ControlToValidate="txtHouseNum" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="houseNumReqField" Display ="Dynamic" runat="server" ErrorMessage="Please enter a house number." ControlToValidate="txtHouseNum" Text="*"></asp:RequiredFieldValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtHouseNum" runat="server" class="form-control form-control-lg" placeholder="House Number"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="streetReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a street." ControlToValidate="txtStreet" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="streetLetters" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid street name" Text="*" ControlToValidate="txtStreet" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtStreet" runat="server" class="form-control form-control-lg" placeholder="Street" MaxLength="30"></asp:TextBox>
                </div>
                <asp:RequiredFieldValidator ID="cityReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a city." ControlToValidate="txtCity" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="cityLetters" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid city name" Text="*" ControlToValidate="txtCity" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                <div class="form-row">
                    <div class="form-group col-md-7">
                        <asp:TextBox ID="txtCity" runat="server" class="form-control form-control-lg" placeholder="City" MaxLength="30"></asp:TextBox>
                    </div>

                     <asp:RequiredFieldValidator ID="stateReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please select a state." ControlToValidate="ddState" Text="*"></asp:RequiredFieldValidator>
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
                    <asp:RequiredFieldValidator ID="zipReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter a zip code." ControlToValidate="txtZip" Text="*"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="zipNumValidator" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid zip code" Text="*" ControlToValidate="txtZip" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                    <div class="form-group col-md-2">
                        <asp:TextBox ID="txtZip" runat="server" class="form-control form-control-lg" placeholder="Zip" MaxLength="9"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    <asp:TextBox ID="txtCountry" runat="server" class="form-control form-control-lg" placeholder="Country" MaxLength="2"></asp:TextBox>
                </div>

                <div class="form-group">
                    <small id="addressDisclosure" class="form-text text-muted">*We will never share your address until you begin the lease process.</small>
                </div>
                <asp:RequiredFieldValidator ID="phoneReqField" Display ="Dynamic" runat="server" ErrorMessage="Please enter a phone number." ControlToValidate="txtPhone" Text="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="phoneNumberValidation" Display="Dynamic" runat="server" ErrorMessage="Please enter a valid phone number" Text="*" ControlToValidate="txtPhone" ValidationExpression="^[0-9-]+$"></asp:RegularExpressionValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtPhone" runat="server" class="form-control form-control-lg" placeholder="Phone Number (XXX-XXX-XXXX)" MaxLength="20"></asp:TextBox>
                </div>
                 <asp:RequiredFieldValidator ID="emailReqFieldValidator" Display ="Dynamic" runat="server" ErrorMessage="Please enter an email." ControlToValidate="txtEmail" Text="*"></asp:RequiredFieldValidator>
                <div class="form-group">
                    <asp:TextBox ID="txtEmail" runat="server" class="form-control form-control-lg" aria-describedby="emailHelp" placeholder="Email" MaxLength="50"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">*We will never share your email with anyone else.</small>
                </div>

                <div class="form-group">
                    <label for="txtPassword">Password</label>
                    <%--for testing purposes--%>
                    <asp:RequiredFieldValidator ID="passwordReqField" Display ="Dynamic" runat="server" ErrorMessage="Please enter a password." ControlToValidate="txtPassword" Text="*"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" class="form-control form-control-lg" placeholder="Password" TextMode="Password" MaxLength="256"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label for="exampleFormControlFile1">Letter of Recommendation: </label>
                    <input type="file" class="form-control-file" id="exampleFormControlFile1">
                </div>



                <div class="form-group form-check">
                    <asp:checkbox id="cbBackCheck" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Perform background check now</label>
                </div>

                <div class="form-group form-check">
                    <asp:checkbox id="cbAgreement" runat="server" class="form-check-input" />
                    <label class="form-check-label" for="exampleCheck1">Agreement to Terms &amp; Conditions</label>
                </div>

                <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" class="btn btn-info" href="TenantAccountCategories.aspx" OnClick="btnCreateAccount_Click" CausesValidation="False" />

                <%--<a class="btn btn-info" id="createAccountButton" href="tenant-create-account-categories.html">Create Account</a>--%>
                <%--should only go to next page (host category when creation is successful--%>


                <%--</form>--%>
            </div>

            <div class="col-md-6 createAccountSIDEImage"></div>

        </div>


    </div>
</asp:Content>

