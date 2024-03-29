﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

<div class="container-fluid pl-0 pr-0">

    
<!--BEGINNING OF ROOMMAGNET IMAGE HEADER/JUMBOTRON-->              
            <header>
                <div class="container">
                    
                <!--BACKGROUND IMAGE HERE-->
                
                    <h1 class="text-center">Real Homes. Real People. Real Life.</h1>
                    
                    <section>
                    <div class="row">
                        <div class="col-md-12">
     <!--FILTER BUTTON AND FILTER FORM-->                       
                            <div class="form-row justify-content-center">
                                <button type="button" class="btn btn-info" data-toggle="modal" data-target="#filterOptions" >Filter</button>
                        <!--END OF FILTER BUTTON-->   
                                
                                
                                <!--filter form starts-->    
                                <div class="modal" id="filterOptions">
                                    <div class="modal-dialog modal-lg">
                                      <div class="modal-content">

                                        <div class="modal-body">

                                            <button type="button" class="close" data-dismiss="modal">&times;</button>

                                            <!--start of amentities-->
                                            <h6>Amenities</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Connected Bathroom</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Walk-In Closet</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Dryer</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Ceiling Fan</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Kitchen</label>
                                                        </div>
                                                        </div>
                                                        
                                                    </div>    
                                                
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Separate Entrance</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Air Conditioning</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Washer</label>
                                                        </div>
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Wifi</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Heating</label>
                                                        </div>
                                                        </div>
                                                        
                                                    </div>    
                                            </div>
                                        <!--end of amenities-->  
                                            
                                            
                                         <!--start of facilites-->   
                                            <h6>Facilities</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Street Parking</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Pool</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Deck</label>
                                                        </div>
                                                        </div>   
                                                    </div>    
                                                
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Garage Parking</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Backyard</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Porch</label>
                                                        </div>
                                                        </div>
                                                    </div>    
                                            </div>
                                            <!--end of facilities-->
                                            
                                            
                                            <!--start of personality-->
                                            <h6>Personality/Lifestyle</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Introvert</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Extrovert</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Family-Oriented</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Tech-Savvy</label>
                                                        </div>
                                                        </div>
                                                    </div>    
                                                
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Early Riser</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Night Owl</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Religious</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Non-Smoker</label>
                                                        </div>
                                                        </div>
                                                        
                                                    </div>    
                                            </div>
                                            <!--end of personality-->
                                            
                                            
                                            
                                            
                                            
                                            <!--start of languages-->
                                            <h6>Languages</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">English</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Spanish</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">Mandarin</label>
                                                        </div>
                                                        </div>
                                                    </div>    
                                                
                                                <div class="col-sm-6">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterPetFriendly">
                                                        <label class="form-check-lable" for="filterPetFriendly">Japanese </label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">German</label>
                                                        </div>
                                                        </div>
                                                    
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterSportsFan">
                                                        <label class="form-check-lable" for="filterSportsFan">French</label>
                                                        </div>
                                                        </div>
                                                    </div>    
                                            </div>
                                            <!--end of languages-->
                                            
                                            
                                    <!--start of homesharesmarter-->   
                                            <h6>HomeshareSmarter® Living</h6>
                                            <div class="form-group row">
                                             
                                                <div class="col-sm-12">
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterhomeshareYES">
                                                        <label class="form-check-lable" for="filterhomeshareYES">Yes</label>
                                                        </div>    
                                                        </div>
                                                        
                                                        <div class="col-sm-12">
                                                        <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="filterhomeshareNO">
                                                        <label class="form-check-lable" for="filterhomeshareNO">No</label>
                                                        </div>
                                                        </div>
                                                       
                                                    </div>       
                                            </div>
                                            <!--end of homesharesmarter-->
                                            
                                            
                                            <button type="button" class="btn btn-info btn-block">
                                                Apply Filters
                                            </button>

                                            
                                        </div>
                                    </div>
                                </div>
                              </div>
                    <!--END OF FILTER FORM-->
                                
                                
<!--SEARCH BAR-->                                
                                <div class="col-md-6 searchBar">
                                    <asp:TextBox ID="txtSearch" runat="server" class="form-control form-control-lg" placeholder="Search" ClientIDMode="Static"></asp:TextBox>
                                </div>
                                <!--END OF SEARCH BAR-->

                                <!--BEGINNING OF SEARCH BUTTON-->
                                <asp:Button ID="btnSearch" runat="server" Text="Search" class="btn btn-info" OnClick="btnSearch_Click"/>
                                <!--END OF SERACH BUTTON-->
                            </div>
                        </div>    
                    </div>
                </section>
                    
                </div>        
            </header>
<!--END OF IMAGE HEADER/JUMBOTRON-->
            

    
            
<!--BEGINNING OF BODY CONTENT-->        
            
            
<!--BEGINNING OF SECTION 1 Why is there a need for ...--> 
            <section class="card shadow-sm rounded px-5 py-2 ">
            <!--FIRST ROW-->
                
            <div class="row "> <!-- shadow-sm rounded  PLACE IN CLASS IF WE WANT SHADOW-->
                <div class="col-md-12  card-body">
                    <h2>How RoomMagnet works</h2>
                </div> 
            </div>  
                
                <div class="row howitWorks">
                    <div class="col-md-2 mt-3 pl-4">    
                        <div class="homepageIcontext">
                        <p>Create an account as a host or tenant</p>
                        </div> 
                    </div>
            
                    <div class="col-md-3 blueArrow">
                    <span style="color:#94D8E9">    
                        <i class="fas fa-arrow-right fa-3x"></i>
                    </span> 
                    </div>
                    
                    
                    <div class="col-md-2">    
                        <div class="homepageIcontext">
                        <p>Search through our available properties and connect with potential roommates</p>
                        </div> 
                    </div>
            
                    <div class="col-md-3 blueArrow">
                    <span style="color:#94D8E9">    
                        <i class="fas fa-arrow-right fa-3x"></i>
                    </span> 
                    </div>
                    
            
            
                    <div class="col-md-2 mt-4">    
                        <div class="homepageIcontext">
                        <p>Begin the lease process</p>
                        </div> 
                    </div>
                    
                
                
            </div>
            <!--END OF FIRST ROW-->                
            </section>    
<!--END OF SECTION 1 Why is there a need for ...-->
            
  
    
<!--BEGINNING OF SECTION 2 RENT NEAR YOU IMAGES-->  
            <section class="px-5 py-2"> 
            <!--BEGINNING OF SECOND ROW / IMAGE CAROUSEL/GALLERY-->                   
            <div class="row">
                <div class="col-md-12 pt-3 pb-5">
                    <h2>For rent near you</h2>
                    <!-- ADD IN IMAGE CAROUSEL/GALLERY-->
                </div>    
            </div>
            
            <div class="row justify-content-center recentlyAddedCards pb-5">
                 <div class="card-deck ">
                  <div class="card cardWIDTH">  
                    <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                      <a href="#" class="cardLinks">
                        <div class="card-body">
                          <h5 class="card-title">Reston, VA</h5>
                          <h6>Amenities</h6>
                          <p class="card-text">Wifi • Connected Bathroom </p>
                        </div>
                      </a> 
                      
                 <!--FAVORITE BUTTON-->     
                      <div>

                          
                        <p>  <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>  
                          
                          
                          Reviews: <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>   </p>  
                                
                          
                      </div>
                 <!--END OF FAVORITE BUTTON--> 
                      
                  </div>
                     
                  <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="#" class="cardLinks">
                        <div class="card-body">
                          <h5 class="card-title">Great Falls, VA</h5>
                            <h6>Amenities</h6>
                          <p class="card-text">Wifi • Connected Bathroom </p>
                        </div>
                      </a> 
                      
                 <!--FAVORITE BUTTON-->     
                      <div>
                       <p>  <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>  
                          
                          
                          Reviews: <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>   </p>  
                          
                      </div>
                 <!--END OF FAVORITE BUTTON-->
                  </div>
                          
                  <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="#" class="cardLinks">
                        <div class="card-body">
                          <h5 class="card-title">Ashburn, VA</h5>
                          <h6>Amenities</h6>
                          <p class="card-text">Wifi • Connected Bathroom </p>
                        </div>
                      </a> 
                      
                 <!--FAVORITE BUTTON-->     
                      <div>
                        <p>  <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>  
                          
                          
                          Reviews: <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>   </p>  
                          
                      </div>
                 <!--END OF FAVORITE BUTTON-->
                    </div>
                          
                    <div class="card cardWIDTH">
                        <img src="images/scott-webb-1ddol8rgUH8-unsplash.jpg" class="card-img-top" alt="image">
                        <a href="#" class="cardLinks">
                        <div class="card-body">
                          <h5 class="card-title">Fairfax, VA</h5>
                          <h6>Amenities</h6>
                          <p class="card-text">Wifi • Connected Bathroom </p>
                        </div>
                      </a> 
                      
                 <!--FAVORITE BUTTON-->     
                      <div>
                         <p>  <button id="heartbtn" class="btn favoriteHeartButton"> <i id="hearti" class="far fa-heart" ></i></button>  
                          Reviews: <i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="far fa-star"></i><i class="far fa-star"></i>   </p>  
                          
                      </div>
                 <!--END OF FAVORITE BUTTON-->    
                    </div>
                </div>       
            </div>    
            <!--END OF SECOND ROW / IMAGE CAROUSEL/GALLERY-->
            </section>
            
<!--END OF SECTION 2 RENT NEAR YOU IMAGES-->
            
            
            
<!--BEGINNING OF SECTION 3 you can trust us  -->    
            
            <section class="card shadow-sm rounded px-5 py-2">
            <!--BEGINNING OF THIRD ROW CONTENT-->
            <div class="row pb-4">
                <div class="col-md-12 card-body">
                    <h2>You can trust us</h2>
                </div>
            </div>
                
                
                <div class="row">
                    <div class="col-md-4 ">
                        
                    <span style="color:#94D8E9">    
                    <i class="fas fa-user-check fa-3x  "></i>
                    </span>   
                        
                        <div class="homepageIcontext">
                        <h5>Background Checks</h5>
                        <p>We highly encourage our users to complete a background screening.</p>
                        </div> 
                        
                    </div>
                    
                    <div class="col-md-4">
                    <span style="color:#94D8E9">     
                    <i class="fas fa-heart fa-3x pb-0"></i>
                    </span>  
                        
                        <div class="homepageIcontext">
                        <h5>Customer Support</h5>
                        <p>Support is available to assist those who would rather sit back and experience the benefits of the RoomMagnet program, but not the hassle of setting up.</p>
                        </div>
                        
                    </div>
                    
                    <div class="col-md-4">
                    <span style="color:#94D8E9">     
                    <i class="fas fa-star fa-3x " ></i>
                    </span>  
                        
                        <div class="homepageIcontext">
                        <h5>Rating System</h5>
                        <p>Tenants review their host after each contract term, and vice-versa. All ratings will be published on user profiles.</p>
                        </div>
                        
                    </div>
                
                </div>    
            <!--END OF THIRD ROW CONTENT-->
            </section>  
            
<!--END OF SECTION  3 you can trust us -->            


            
        </div>
<!--END OF BODY CONTENT-->            
    <script src="awesomplete.js"></script>
    <script type="text/javascript">

        var ajax = new XMLHttpRequest();
        ajax.open("GET", "csvjson.json", true);
        ajax.onload = function () {
            var list = JSON.parse(ajax.responseText).map(function (i) { return i.CityState; });
            new Awesomplete(document.querySelector("#<%=txtSearch.ClientID %>"), {
                list: list,
                minChars: 1
            });
        };
        ajax.send();
    </script>

</asp:Content>
