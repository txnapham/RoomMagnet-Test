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
                <ul>
                                        <asp:Literal ID="UserNameCard" runat="server" Mode="Transform"></asp:Literal>
                                    </ul>
            </p>


            <div class="progress" style="height: 30px;">
                <div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 66%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">Profile Completion</div>
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
                          <h5 class="card-title dash-card-titles">Properties</h5>
                          <ul>
                            <li><a href="#" class="tenantdashlist">South Main House</a></li>
                        </ul>
                    <!--BUTTON-->    
                        <div class=" text-center">
                        <a href="ListedProperties.aspx" class="btn btn-info">View more</a> 
                        </div>
                    <!--END OF BUTTON-->        
                        </div>
                    </div>
                </div>  
        <!--END OF PROPERTIES MOD-->
    
            <!--message mod-->    
                <div class="col-md-12">
                        <div class="card shadow-sm  mb-4">
                            <div class="card-body">
                                <h5 class="card-title dash-card-titles">Message Center</h5>
                                
                                <p>        <a class="navbar-brand" href="#">
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
                                <div class=" text-center">
                                <a href="HostMessageCenter.aspx" class="btn btn-info">View Messages</a> 
                                </div>
                        <!--END OF BUTTON-->        
                            </div>
                        </div>
                    </div>
            <!--END OF MESSAGE MOD-->                 
                
             
                
        
       
            </div>     
                
                
            <div class="col-md-6">  
  <!--TENANT/HOST MOD-->        
                       <div class="col-md-12">
                        <div class="card  shadow-sm  mb-4">
                            <div class="card-body">
                              <h5 class="card-title dash-card-titles">Tenants</h5>
                              <ul>
                                <li><a href="#" class="tenantdashlist">Liam Brown</a></li>
                                <li><a href="#" class="tenantdashlist">Jake Smith</a></li>
                            </ul>
                        <!--BUTTON-->        
                            <div class=" text-center">    
                            <a href="Host-Tenants.aspx" class="btn btn-info">View more</a>
                            </div>    
                        <!--END OF BUTTON-->        
                            </div>
                        </div>
                    </div>
        <!--END OF TENANT/HOST MOD-->                 
                
         
                
       <!--APPOINTMENT MOD-->        
                <div class="col-md-12">
                    <div class="card  shadow-sm  mb-4">
                        <div class="card-body">
                          <h5 class="card-title dash-card-titles">My Appointments</h5>
                        <div class="container-fluid cal pb-3">
                          <div>
                            <h4 class="mb-4 text-center">November 2019</h4>
                            <div class="row d-none d-sm-flex p-1 bg-dark text-white">
                              <p class="col-sm p-1 text-center">Sun</p>
                            <p class="col-sm p-1 text-center">Mon</p>
                              <p class="col-sm p-1 text-center">Tues</p>
                              <p class="col-sm p-1 text-center">Wed</p>
                              <p class="col-sm p-1 text-center">Thurs</p>
                              <p class="col-sm p-1 text-center">Fri</p>
                              <p class="col-sm p-1 text-center">Sat</>
                            </div>
                          </div>
                          <div class="row border border-right-0 border-bottom-0">
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">29</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">30</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">31</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">1</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">2</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">3</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-info text-white" title="Test Event 1">Meeting</a>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">4</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="w-100"></div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">5</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">6</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">7</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">8</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">9</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">10</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">11</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="w-100"></div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">12</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">13</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">14</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">15</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">16</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">17</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">18</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="w-100"></div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">19</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">20</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-primary text-white" title="Test Event with Super Duper Really Long Title">Meeting</a>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">21</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">22</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">23</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">24</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">25</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="w-100"></div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">26</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">27</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">28</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">29</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
                              <h5 class="row align-items-center">
                                <span class="date col-1">30</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">1</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">2</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="w-100"></div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">3</span>
                                <small class="col d-sm-none text-center text-muted">Sunday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">4</span>
                                <small class="col d-sm-none text-center text-muted">Monday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">5</span>
                                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">6</span>
                                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">7</span>
                                <small class="col d-sm-none text-center text-muted">Thursday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">8</span>
                                <small class="col d-sm-none text-center text-muted">Friday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
                              <h5 class="row align-items-center">
                                <span class="date col-1">9</span>
                                <small class="col d-sm-none text-center text-muted">Saturday</small>
                                <span class="col-1"></span>
                              </h5>
                              <p class="d-sm-none">No events</p>
                            </div>
                          </div>
                        </div>
                    <!--BUTTON-->        
                             
                                            <a class="btn btn-md btn-info btn-block" href="#">
                                                    Create Appointment 
                                            </a>
                            
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

                                                    <a class="btn btn-md btn-info btn-block" href="#">
                                                        Create Appointment 
                                                    </a> 


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
