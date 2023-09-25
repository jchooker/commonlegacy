<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="commonlegacy.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/lib/css/userlogin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto mt-3">
                <div class="card border-secondary mb-3 text-center">
                    <div class="card-header">
                      <img src="https://i.ibb.co/tJDG3RR/Silhueta-png-cinzento-300x284.png" class="card-img-top profile-img align-self-center mt-3" alt="blank-user"/>
                        <h2 class="mt-2 font2">Admin Login</h2>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <div class="row gap-2">
                                    <div class="col-4">
                                        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="col-form-label font2" for="TextBox2">Username or Email: </asp:Label>
                                    </div>
                                    <div class="col-6 form-group">
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control font3"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row gap-2 mt-2">

                                    <div class="col-4">
                                        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="col-form-label font2" for="TextBox2">Password: </asp:Label>
                                    </div>
                                    <div class="col-6 form-group">
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control font3">
                                        </asp:TextBox>
                                    </div>
                                </div>


                            </div>
                        </div>
                        <div class="d-grid gap-2">
                            <button id="log-in" class="btn btn-success font2 mt-4 btn-lg" type="submit">Log In</button>
                                            <%--ADD ONCLICK FOR BOTH BUTTONS??--%>
                            <button id="reg" class="btn btn-info font2 btn-lg" type="button">Register</button>

                        </div>
                    </div>
                    <div class="card-footer d-flex justify-contents-start">
                        <a href="Homepage.aspx" class="ms-2 mb-2"> << &nbsp; &nbsp; Return Home </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

