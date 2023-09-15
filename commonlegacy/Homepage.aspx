<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="commonlegacy.Homepage" %>
<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="commonlegacy.WebForm1" %>--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="./lib/js/home.js" language="javascript" type="text/javascript"></script>
    <section>
        <div class="container pt-4 h-100">
            <div class="row">
                <div class="col">
                    <center>
                        <h2 class="block-txt mb-5">Simple Mind Resets</h2>
                    </center>
                    <%--his order container>card>front+back...my version: card-container>card-ctr>(card)front+(card)back--%>
                </div>
            </div>
            <div class="row d-flex justify-content-evenly flex-row">
                <div class="col-md-3 col-sm-6 mb-5">
                    <div class="text-center card-container shadow-hover">
                        <div class="card h-100">
                            <div class="rounded d-flex align-items-center text-center flex-column card-bump front">
                                <!---to return cards back to working with green background, remove two-stack card setup (front at same level as back)--->
                                <img src="https://i.ibb.co/dKT6HCG/Alchemy-sulfur-symbol.png" alt="alchemy" class="card-img-top" />
                                <div class="card-body">
                                    <h3 class="card-title dark-brown text-center">Thorn-gatherer</h3>
                                    <p class="text-justify card-text dark-brown opacity-75">Eschewing the well-worn path</p>
                                </div>

                            </div>
                            <div class="rounded d-flex justify-content-center card-bump back">
                                <%--<img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="rounded" />--%>
                            </div>
                        </div>
                    </div>
                </div>
                <!--added text-justify class for paragraph alignment---->            
                    <div class="col-md-3 col-sm-6 mb-5">
                        <div class="text-center card-container shadow-hover">
                            <div class="card h-100">
                                <div class="rounded d-flex align-items-center text-center flex-column card-bump front">
                                    <img src="https://i.ibb.co/HC8JnyG/dice1.png" alt="dice" class="card-img-top" />
                                    <div class="card-body">
                                        <h3 class="card-title dark-brown">Die-caster</h3>
                                        <p class="text-justify card-text dark-brown opacity-75">Restless, hitting a wall with repetitive, skill-based pursuits</p>
                                    </div>
                                </div>
                                <div class="rounded d-flex justify-content-center card-bump back">
                                    <div class="card-body">
                                        <%--<img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="card-img-top rounded" />--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-3 col-sm-6 mb-5">
                    <div class="text-center card-container shadow-hover">
                        <div class="card h-100">
                            <div class="rounded d-flex align-items-center text-center flex-column card-bump front">
                            <img src="https://i.ibb.co/RD4f2jp/moon.png" alt="moon" class="card-img-top" />
                            <div class="card-body">
                                <h3 class="card-title dark-brown">Moon-chaser</h3>
                                <p class="text-justify card-text dark-brown opacity-75">You can't stay inside for yet another night</p>
                            </div>
                        </div>
                            <div class="rounded d-flex justify-content-center card-bump back">
                                <%--<img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="card-img-top rounded" />--%>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
