<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Musecraft.aspx.cs" Inherits="commonlegacy.Musecraft" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/lib/css/musecraft.css" />
    <script src="./lib/js/musecraft.js" language="javascript" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid pt-3 pb-3">
        <div class="card">
            <div class="card-body">
                <div class="row row-cols-auto" id="Div1">
                    <div class="col">
                        <asp:Literal ID="Draggon1" runat="server">
                        <%--<object width=200 height=200 data='./tiles/serp.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon2" runat="server">
                            <%--<object width=200 height=200 data='./tiles/asmodeus.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon3" runat="server">
                            <%--<object width=200 height=200 data='./tiles/astaroth.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon4" runat="server">
                            <%--<object width=200 height=200 data='./tiles/haagenti.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                </div>
                <div class="row row-cols-auto" id="Div2">
                    <div class="col">
                        <asp:Literal ID="Draggon5" runat="server">
                            <%--<object width=200 height=200 data='./tiles/samigina.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon6" runat="server">
                            <%--<object width=200 height=200 data='./tiles/sabnock.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon7" runat="server">
                            <%--<object width=200 height=200 data='./tiles/baphomet.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon8" runat="server">
                            <%--<object width=200 height=200 data='./tiles/marchosias.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                </div>
                <div class="row row-cols-auto" id="Div3">
                    <div class="col">
                        <asp:Literal ID="Draggon9" runat="server">
                            <%--<object width=200 height=200 data='./tiles/beleth.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon10" runat="server">
                            <%--<object width=200 height=200 data='./tiles/crocell.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon11" runat="server">
                            <%--<object width=200 height=200 data='./tiles/paimon.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                    <div class="col">
                        <asp:Literal ID="Draggon12" runat="server">
                            <%--<object width=200 height=200 data='./tiles/ronove.html' class="drag-obj" draggable="true"></object>--%>
                        </asp:Literal>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>