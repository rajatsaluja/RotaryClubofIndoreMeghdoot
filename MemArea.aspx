<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="MemArea.aspx.cs" Inherits="RotaryClub.MemArea" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
        <h4 style="text-align:center">Login</h4>
    <div class="container">
        <form runat="server">
            <div class="form-group">
    <label for="exampleInputEmail1">Please select your type</label>
    <asp:DropDownList ID="logindd" runat="server" class="form-control">
        <asp:ListItem Enabled="true">Choose...</asp:ListItem>
        <asp:ListItem>General Member</asp:ListItem>
        <asp:ListItem>Board Member</asp:ListItem>
        <asp:ListItem>Admin</asp:ListItem>
    </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RFVfortype" ValidationGroup="valgrp1" ForeColor="Red" runat="server" ErrorMessage="This is a required field!" ControlToValidate="logindd"></asp:RequiredFieldValidator>    
            </div>
    
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
      <asp:TextBox ID="loginEmail" runat="server" class="form-control" placeholder="Enter your email address"></asp:TextBox>    
      <asp:RequiredFieldValidator ID="RFVforuname" ControlToValidate="loginEmail" ValidationGroup="valgrp1" ForeColor="Red" runat="server" ErrorMessage="This is a required field!"></asp:RequiredFieldValidator>
      <br />
      <asp:RegularExpressionValidator ID="REVforuname" ControlToValidate="loginEmail" ValidationGroup="valgrp1" ValidationExpression="^[a-z0-9](\.?[a-z0-9]){5,}@g(oogle)?mail\.com$" ForeColor="Red" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
      <asp:TextBox ID="loginPass" runat="server" class="form-control" placeholder="Password" type="password"></asp:TextBox>
   <small id="passwordHelpBlock" class="form-text text-muted">NOTE: If you are a first time user, please enter the password you recieved in your email.</small>                
      <asp:RequiredFieldValidator ID="RFVforpass" runat="server" ForeColor="Red" ErrorMessage="This is a required field!" ValidationGroup="valgrp1" ControlToValidate="loginPass"></asp:RequiredFieldValidator>
  <br />
<%--      <asp:RegularExpressionValidator ID="REVforPass" ControlToValidate="loginPass" ValidationGroup="valgrp1" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{8,12})" ForeColor="Red" runat="server" ErrorMessage="Must be 8 to 12 characters long and contain at least 1 lowercase, 1 uppercase, 1 numeric, one special character."></asp:RegularExpressionValidator>--%>
  </div>
  <div class="form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Remember Me</label>
  </div>
                <br />
  <div class="form-group">
      <a href="MemReqForm.aspx">Not a Member?</a>
  </div>
  <%--<button type="submit" class="btn btn-primary" id="loginbtn">Login</button>--%>
            <asp:Button ID="loginbtn" ValidationGroup="valgrp1" runat="server" Text="Login" class="btn btn-primary" OnClick="loginbtn_Click" />
            <br />
            <asp:Label ID="errlbl" runat="server" Text=""></asp:Label>
<%--<small id="errlbl" class="form-text text-muted"></small>--%>
</form>
    </div>
</asp:Content>
