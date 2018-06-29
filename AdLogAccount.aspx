<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogAccount.aspx.cs" Inherits="RotaryClub.AdLogAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>

        <div class="text-right" style="padding-right: 4px; padding-top: 4px; padding-bottom: 4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="AdLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="AdLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:Button ID="ADash_btn" runat="server" Text="Dashboard" class="btn btn-secondary" OnClick="ADash_btn_Click" />
            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
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
