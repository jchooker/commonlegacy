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
                    <div class="text-center card-container">
                        <div class="card h-100">
                            <div class="rounded d-flex justify-content-center text-center flex-column card-bump front" style="width: 18rem;">
                                <!---to return cards back to working with green background, remove two-stack card setup (front at same level as back)--->
                                <img src="https://i.ibb.co/dKT6HCG/Alchemy-sulfur-symbol.png" alt="alchemy" />
                                <div class="card-body">
                                    <h3 class="card-title dark-brown text-center">Thorn-gatherer</h3>
                                    <p class="text-justify card-text dark-brown opacity-75">Pick your collection of symbols</p>
                                </div>

                            </div>
                            <div class="card rounded d-flex justify-content-center card-bump back" style="width: 18rem;">
                                <img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="rounded" />
                            </div>
                        </div>
                    </div>
                </div>
                <!--added text-justify class for paragraph alignment---->            
                    <div class="col-md-3 col-sm-6 mb-5">
                        <div class="text-center card-container">
                            <div class="card h-100">
                                <div class="rounded d-flex justify-content-center text-center flex-column card-bump front" style="width: 18rem;">
                                    <img src="https://i.ibb.co/HC8JnyG/dice1.png" alt="dice" />
                                    <div class="card-body">
                                        <h3 class="card-title dark-brown">Die-caster</h3>
                                        <p class="text-justify card-text dark-brown opacity-75">Pick your collection of symbols</p>
                                    </div>
                                </div>
                                <div class="rounded d-flex justify-content-center card-bump back" style="width: 18rem;">
                                    <div class="card-body">
                                        <img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="card-img-top rounded" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                <div class="col-md-3 col-sm-6 mb-5">
                    <div class="text-center card-container">
                        <div class="card h-100">
                            <div class="rounded d-flex justify-content-center text-center flex-column card-bump front" style="width: 18rem;">
                            <img src="https://i.ibb.co/RD4f2jp/moon.png" alt="moon" />
                            <div class="card-body">
                                <h3 class="card-title dark-brown">Moon-chaser</h3>
                                <p class="text-justify card-text dark-brown opacity-75">Pick your collection of symbols</p>
                            </div>
                        </div>
                            <div class="rounded d-flex justify-content-center card-bump back" style="width: 18rem;">
                                <img src="https://i.ibb.co/ZMfm8y2/tarot-back.png" alt="tarot-back1" class="card-img-top rounded" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
