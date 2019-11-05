<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TenantAccountCategories.aspx.cs" Inherits="TenantAccountCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--BODY CONTENT-->
    <div class="container-fluid px-5 py-3 createAccountFilters">
        <section>

            <div class="row">
                <div class="col-md-12">
                    <h3>Account Created!</h3>
                    <h6 class="headingsetPrefs">Set preferences now or <a class="doLaterLink" href="TenantDashboard.aspx">later</a></h6>
                </div>
            </div>
        </section>


        <section>
            <div class="row pt-3">
                <div class="col-md-12">
                    <h5>Please select your preferred language:</h5>
                </div>
            </div>
        </section>

        <section>
            <div class="row px-5 py-3">
                <!--LANGUAGE FILTER START HERE-->

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbEnglish" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>English</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbSpanish" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Spanish</div>
                        </div>
                    </div>

                </div>


                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbMandarin" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Mandarin</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbJapanese" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Japanese</div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbGerman" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>German</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbFrench" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>French</div>
                        </div>
                    </div>

                </div>




                <!--END OF LANGUAGE FILTER-->
            </div>
        </section>


        <section>
            <div class="row">
                <div class="col-md-12">
                    <h5>Please select statements that apply to you:</h5>
                </div>
            </div>
        </section>


        <section>
            <div class="row px-5 py-3">
                <!--PERSONALITY FILTER START HERE-->


                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbEarlyRiser" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Early Riser</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbNightOwl" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Night Owl</div>
                        </div>
                    </div>

                </div>


                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbIntrovert" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Introvert</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbExtrovert" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Extrovert</div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="fbFamily" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Family-Oriented</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbReligious" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Religious</div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbTechSavy" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Tech-Savvy</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbSportsFan" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Sports Fan</div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbAdventurous" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Adventurous</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbMusicAf" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Music Aficionado</div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4">

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbNonSmoker" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Non-Smoker</div>
                        </div>
                    </div>

                    <div class="col-md-12">
                        <div class="switchwrapper">
                            <label class="switch">
                                <asp:CheckBox ID="cbHomebody" runat="server" />
                                <span class="slider round"></span>
                            </label>
                            <div>Homebody</div>
                        </div>
                    </div>

                </div>



                <!--END OF PERSONALITY FILTER-->
            </div>
        </section>

        <asp:Button ID="btnSet" runat="server" Text="Set Now" class="btn btn-info btn-block" href="TenantDashboard.aspx"/>
        




    </div>
    <!--END OF BODY CONTENT-->
</asp:Content>
