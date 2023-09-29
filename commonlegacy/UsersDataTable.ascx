<%@ Control Language="C#" AutoEventWireup="true" CodeFile="~/UsersDataTable.ascx.cs" Inherits="commonlegacy.UsersDataTable" Description="Where DataTable will dwell" %>

        <%--//do i need to scrap this one for being linked to the master page??--%>
<table id="all-users" class="display table table-striped table-bordered" style="width:100%"></table>

<script>
    $(document).ready(function () {
        setUpTable();
        getRowData();
        modifyContainer1();
    });

    function setUpTable() {
        var dt = $('#all-users').DataTable({
            ajax: {
                url: '/UsersDataTable.asmx/GetUsers',
                type: 'GET',
                datatype: 'json',
                dataSrc: ""
            },
            columns: [
                { data: 'LastName', title: 'Last Name' },
                { data: 'FirstName', title: 'First Name' },
                { data: 'Email', title: 'Email' },
                { data: 'Gender', title: 'Gender' },
                { data: 'Age', title: 'Age' },
                { data: 'Country', title: 'Country' },
            ],
            select: 'single'
        });
    }

    function getRowData() {
        var table = $('#all-users').DataTable();
        $('#all-users tbody').on('click', 'tr', function () {
            $('#first-name-mod').val(table.row(this).data()['FirstName']);
            $('#last-name-mod').val(table.row(this).data()['LastName']);
            $('#email-mod').val(table.row(this).data()['Email']);
            $('#gender-mod').val(table.row(this).data()['Gender']);
            $('#age-mod').val((table.row(this).data()['Age']).toString());
            $('#country-mod').val(table.row(this).data()['Country']);
        })
    }

    function modifyContainer1() {
        $('#all-users').one('click', 'tr', function () {
            $('h1.pre-sel').hide();
            $('#toggle-header').removeClass('vis');
            $('#toggle-header').addClass('d-flex flex-column align-items-center');
            $('#hidden-body').removeClass('vis');
        });
    }
</script>