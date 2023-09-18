<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="musecraft.aspx.cs" Inherits="commonlegacy.musecraft" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/lib/css/musecraft.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row d-flex justify-content-evenly">
            <div class="col"><iframe width=400 height=300 src='./tiles/serp.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/asmodeus.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/astaroth.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/haagenti.html'></iframe></div>
        </div>
                <div class="row d-flex justify-content-evenly">
            <div class="col"><iframe width=400 height=300 src='./tiles/samigina.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/sabnock.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/baphomet.html'></iframe></div>
            <div class="col"><iframe width=400 height=300 src='./tiles/marchosias.html'></iframe></div>
        </div>
    </div>
</asp:Content>
