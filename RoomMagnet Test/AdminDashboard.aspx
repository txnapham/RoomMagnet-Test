<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdminDashboard.aspx.cs" Inherits="AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container-fluid userDash mb-5 pb-3">
        <!--USER DASH-NAV-->
            <div class="navbar navbar-light">
                <a class="navbar-brand" href="#">
                    <img src="..." alt="..." class="img-thumbnail">
                   <%-- Welcome USER,--%>
                    <ul>
                                        <asp:Literal ID="UserNameCard" runat="server" Mode="Transform"></asp:Literal>
                                    </ul>

                </a>
            
        <!--END OF USER DASH-NAV-->
            </div>    
        </div>
        
        
       
        <div class="container-fluid px-5">
<!--Cards start here-->            
            <section>
                    <div class="card-deck">
                            <div class="card  shadow-sm  mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Registered Hosts</h5>

                                    <ul>
                                        <asp:Literal ID="Card" runat="server" Mode="Transform"></asp:Literal>
                                        
                                    </ul>


                                    <a href="#" class="btn btn-info">View more</a> 
                                </div>
                            </div> 
                        
                        <div class="card  shadow-sm  mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Registered Tenants</h5>

                                    <ul>
                                        <asp:Literal ID="Card2" runat="server" Mode="Transform"></asp:Literal>
                                    </ul>


                                    <a href="#" class="btn btn-info">View more</a> 
                                </div>
                            </div> 
                        
                        <div class="card  shadow-sm  mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">Intended Leases</h5>

                                    <ul>
                                        <asp:Literal ID="Card3" runat="server" Mode="Transform"></asp:Literal>
                                    </ul>


                                    <a href="IntentToLease.aspx" class="btn btn-info">View more</a> 
                                </div>
                            </div> 

                        
                       
                    </div>
            
            </section>
                
                
            <section>
                <div class="card  shadow-sm  mb-4">
                                <div class="card-body">
                                    <h5 class="card-title">RoomMagnet Data</h5>
                                   
                                    <ul>
                                        <asp:Literal ID="Card4" runat="server" Mode="Transform"></asp:Literal>
                                        <asp:Literal ID="Card5" runat="server" Mode="Transform"></asp:Literal>
                                    </ul>
                                    <a href="#" class="btn btn-info">View more</a> 
                                </div>
                            </div> 
                
                </section>    
            
            
   
        </div>
<!--END OF DASHBOARD CARDS-->
</asp:Content>

