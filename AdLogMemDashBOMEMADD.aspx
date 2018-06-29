<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogMemDashBOMEMADD.aspx.cs" Inherits="RotaryClub.AdLogMemDashBOMEMADD" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>
       
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;padding-bottom:4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="AdLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="AdLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:Button ID="ADash_btn" runat="server" Text="Dashboard" class="btn btn-secondary" OnClick="ADash_btn_Click" />
            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
   
    <%--login nav ends--%>

        <br/>
        <div style="padding-left:10px;"
        <div class="row">
                <div class="col">
                    Member's Email:
                    <asp:TextBox ID="TB1" Width="300px" runat="server" placeholder="Enter member's email address"></asp:TextBox>
                  </div> 
            <div class="col">
                    Member's First Name:
                    <asp:TextBox ID="TextBox2" Width="300px" runat="server" placeholder="Enter member's First Name"></asp:TextBox>
                  </div> 
            <div class="col">
                    Member's Last Name:
                    <asp:TextBox ID="TextBox3" Width="300px" runat="server" placeholder="Enter member's Last Name"></asp:TextBox>
                  </div> 
                    <div class="col">

                        <asp:Label ID="Label1" runat="server" Text="Update board member's role to:"></asp:Label>&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>President Elect</asp:ListItem>
                <asp:ListItem>Youth Service Director</asp:ListItem>
                <asp:ListItem>President</asp:ListItem>
                <asp:ListItem>Director-Club Service</asp:ListItem>
                <asp:ListItem>Club Trainer</asp:ListItem>
                <asp:ListItem>Vice President</asp:ListItem>
                <asp:ListItem>Director-Vocational Service</asp:ListItem>
                <asp:ListItem>Executive Secreatry</asp:ListItem>
                <asp:ListItem>Lpp</asp:ListItem>
                <asp:ListItem>Women In Rotary</asp:ListItem>
            </asp:DropDownList>
                    </div>
                  

                </div>
        <br />
        <div class="row">
<div class="col">
                    <asp:Button ID="Update_btn" ValidationGroup="valgrp1" runat="server" Text="Update" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Update_btn_Click" />

                </div>
           

        </div>
                
            </div>
        </form>

</asp:Content>
