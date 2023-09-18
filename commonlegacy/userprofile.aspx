<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="commonlegacy.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link rel="stylesheet" type="text/css" href="/lib/css/userprofile.css" />
        <script src="./lib/js/userprofile.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card border-secondary mb-3 mt-3 text-center">
                    <div class="card-header">
                        <div class="profile-pic"></div>
                    </div>
                    <div class="card-body"></div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="card"></div>
            </div>
        </div>
    </div>
</asp:Content>
