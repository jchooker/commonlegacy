<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="musecraft.aspx.cs" Inherits="commonlegacy.musecraft" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/lib/css/musecraft.css" />
    <script src="./lib/js/musecraft.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid pt-3 pb-3">
        <div class="card">
            <div class="card-body">
                <div class="row row-cols-auto" id="drag-container1" runat="server">
                    <div class="col" id="draggon1">
                        <%--<object width=200 height=200 data='./tiles/serp.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon2">
                        <%--<object width=200 height=200 data='./tiles/asmodeus.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon3">
                        <%--<object width=200 height=200 data='./tiles/astaroth.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon4">
                        <%--<object width=200 height=200 data='./tiles/haagenti.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                </div>
                <div class="row row-cols-auto" id="drag-container2" runat="server">
                    <div class="col" id="draggon5">
                        <%--<object width=200 height=200 data='./tiles/samigina.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon6">
                        <%--<object width=200 height=200 data='./tiles/sabnock.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon7">
                        <%--<object width=200 height=200 data='./tiles/baphomet.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon8">
                        <%--<object width=200 height=200 data='./tiles/marchosias.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                </div>
                <div class="row row-cols-auto" id="drag-container3" runat="server">
                    <div class="col" id="draggon9">
                        <%--<object width=200 height=200 data='./tiles/beleth.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon10">
                        <%--<object width=200 height=200 data='./tiles/crocell.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon11">
                        <%--<object width=200 height=200 data='./tiles/paimon.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                    <div class="col" id="draggon12">
                        <%--<object width=200 height=200 data='./tiles/ronove.html' class="drag-obj" draggable="true"></object>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
