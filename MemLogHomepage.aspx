<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="MemLogHomepage.aspx.cs" Inherits="RotaryClub.MemLogHomepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title>Rotary Club of Indore Meghdoot</title>
    <%--Bootstrap links--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="RotaryDesign.css" type="text/css" />
        <%--Link end--%>
        <%--    mini navbar--%>
    
<%--<button type="button" class="btn btn-link">My Profile</button>--%>
<%--    <button type="button" class="btn btn-link">Logout</button>--%>
<%--    mini navbar end--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
    <div class="text-right" style="padding-right:4px;padding-top:4px;">
        <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

        <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"  />
        <div class="dropdown-menu" aria-labelledby="MAccount_btn">
      <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
      <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
    </div>

                <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
        </form>
</asp:Content>

