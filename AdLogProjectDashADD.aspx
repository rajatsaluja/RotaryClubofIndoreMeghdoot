<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogProjectDashADD.aspx.cs" Inherits="RotaryClub.AdLogProjectDashADD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Add Project(s): Project Management</h2>
        </div>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px; padding-bottom: 4px;">
            <asp:label id="NameLabel" runat="server" text="" class="btn"></asp:label>

            <asp:button id="MAccount_btn" runat="server" text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="AdLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="AdLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:button id="ADash_btn" runat="server" text="Dashboard" class="btn btn-secondary" onclick="ADash_btn_Click" />
            <asp:button id="Lout_btn" runat="server" text="Logout" class="btn btn-secondary" onclick="Lout_btn_Click" />
        </div>

        <%--login nav ends--%>
        <br />
        <br />
        <div class="container">

            <div class="row">
                <div class="col">
                    Name of the Project:
                    <asp:textbox id="TextBox1" runat="server" class="form-control" placeholder="Enter the name of the project"></asp:textbox>
                    <asp:requiredfieldvalidator validationgroup="valgrp1" id="RFV1" runat="server" errormessage="You must fill this field" controltovalidate="TextBox1" forecolor="#CC0000"></asp:requiredfieldvalidator>
                </div>
                <div class="col">
                    Loaction:
                    <asp:textbox id="TextBox2" runat="server" class="form-control" placeholder="Enter the location of the project"></asp:textbox>
                    <asp:requiredfieldvalidator validationgroup="valgrp1" id="RFV2" runat="server" errormessage="You must fill this field" controltovalidate="TextBox2" forecolor="#CC0000"></asp:requiredfieldvalidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Time:
                    <asp:textbox id="TextBox3" runat="server" class="form-control" placeholder="Ex: All day event (May-December)"></asp:textbox>
                    <asp:requiredfieldvalidator validationgroup="valgrp1" id="RFV3" runat="server" errormessage="You must fill this field" controltovalidate="TextBox3" forecolor="#CC0000"></asp:requiredfieldvalidator>

                </div>
                <div class="col">
                    Details:
                    <asp:textbox textmode="multiline" id="TextArea1" runat="server" class="form-control" placeholder="Enter the details of the project"></asp:textbox>
                    <asp:requiredfieldvalidator validationgroup="valgrp1" id="RFV6" runat="server" errormessage="You must fill this field" controltovalidate="TextArea1" forecolor="#CC0000"></asp:requiredfieldvalidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Contact:
                    <asp:textbox textmode="multiline" id="TextArea2" runat="server" class="form-control" placeholder="Enter the person of contact"></asp:textbox>
                    <asp:requiredfieldvalidator validationgroup="valgrp1" id="RequiredFieldValidator1" runat="server" errormessage="You must fill this field" controltovalidate="TextArea2" forecolor="#CC0000"></asp:requiredfieldvalidator>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    <asp:button id="Sub_btn" runat="server" text="Submit" class="btn btn-primary" validationgroup="valgrp1" onclick="Sub_btn_Click" />

                </div>
            </div>
        </div>

    </form>
</asp:Content>
