<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="MemLogAccount.aspx.cs" Inherits="RotaryClub.MemLogAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--    Login nav bar begins now--%>
    <form id="form1" runat="server">
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Manage Account</h2>
        </div>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;">
            <asp:label id="NameLabel" runat="server" text="" class="btn"></asp:label>

            <asp:button id="MAccount_btn" runat="server" text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:button id="Lout_btn" runat="server" text="Logout" class="btn btn-secondary" onclick="Lout_btn_Click" />
        </div>
        <%--        Account edit form starts now--%>
        <br />
        <h4 style="text-align: center">Account Settings</h4>
        <br />
        <div class="container">
            <div class="form-group">
                <div class="row">
                    <div class="col-4">
                        Current Password:
                <asp:textbox id="TextBox1" class="form-control" runat="server" TextMode="Password" placeholder="Enter your current password"></asp:textbox>

                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-4">
                        New Password:
                <asp:textbox id="TextBox2" class="form-control" runat="server" TextMode="Password" placeholder="Enter your new password"></asp:textbox>

                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-4">
                        Confirm New Password:
                <asp:textbox id="TextBox3" class="form-control" runat="server" placeholder="Re-enter your new password" TextMode="Password"></asp:textbox>
                    </div>

                </div>
            </div>
            <asp:button runat="server" text="Reset Password" class="btn btn-primary" id="reset_btn" OnClick="reset_btn_Click" />
            <br />
            <asp:label runat="server" text="" id="errlbl"></asp:label>
        </div>


    </form>


</asp:Content>
