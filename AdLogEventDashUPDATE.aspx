<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogEventDashUPDATE.aspx.cs" Inherits="RotaryClub.AdLogEventDashUPDATE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Update Event(s): Event Management</h2>
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
                    Name of the Event:
                    <asp:textbox id="TextBox1" runat="server" class="form-control" ReadOnly="true" ></asp:textbox>
                </div>
                <div class="col">
                    Location:
                    <asp:textbox id="TextBox2" runat="server" class="form-control"></asp:textbox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Time:
                    <asp:textbox id="TextBox3" runat="server" class="form-control" ></asp:textbox>

                </div>
                <div class="col">
                    Details:
                    <asp:textbox textmode="multiline" id="TextArea1" runat="server" class="form-control"></asp:textbox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Contact:
                    <asp:textbox textmode="multiline" id="TextArea2" runat="server" class="form-control" ></asp:textbox>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    <asp:button id="SaveChanges_btn" runat="server" text="Save Changes" class="btn btn-primary" validationgroup="valgrp1" onclick="SaveChanges_btn_Click" />

                </div>
            </div>
        </div>

    </form>
</asp:Content>
