﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="MemReqForm.aspx.cs" Inherits="RotaryClub.MemReqForm" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="p-3 mb-2 bg-dark text-white">
        <h2 style="text-align: center; text-decoration: solid">Membership Request Form</h2>
    </div>
    <br />
    <div class="container">
        <form id="form1" runat="server">
            <InsertItemTemplate>
            <div class="row">
                <div class="col">
                    First Name:
                    <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your first name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    Last Name:
                    <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your last name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    Date of Birth:
                    <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/calendar-128.png" Width="25px" CausesValidation="False" />
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="dd/MM/yyyy" PopupButtonID="ImageButton1" TargetControlID="TextBox3" />
                    <asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox3" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
                <div class="col">
                    Gender:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Rather not say</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RFV4" runat="server" ErrorMessage="You must fill this field" ControlToValidate="DropDownList1" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Email Address:
                    <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter your preferred email address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV6" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox4" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV1" runat="server" ErrorMessage="You need to enter a valid email address" ControlToValidate="TextBox4" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ForeColor="#CC0000"></asp:RegularExpressionValidator>                

                </div>
                <div class="col">
                    Phone Number:
                    <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter you 10-digit phone number"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV7" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox5" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV2" runat="server" ErrorMessage="You need to enter a valid phone number" ControlToValidate="TextBox5" ValidationExpression="^([7-9]{1})([0-9]{9})$" ForeColor="#CC0000"></asp:RegularExpressionValidator>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Occupation:
                    <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter your profession"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RFV5" runat="server" ErrorMessage="You must fill this field" ControlToValidate="TextBox6" ForeColor="#CC0000"></asp:RequiredFieldValidator>                       
                     </div>
                <div class="col">
                    Spouse's First Name:
                    <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Enter first name of your spouse"></asp:TextBox>
                    <small id="passwordHelpBlock" class="form-text text-muted">This field is optional</small>                
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col">
                    Spouse's Last Name:
                    <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Enter first name of your spouse"></asp:TextBox>
                    <small id="passwordHelpBlock1" class="form-text text-muted">This field is optional</small>                

                </div>
                <div class="col">
                    Date of Anniversary:
                    <asp:TextBox ID="TextBox9" runat="server" class="form-control" placeholder="DD/MM/YYYY"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" Width="25px" ImageUrl="~/calendar-128.png" CausesValidation="False" />
                    <ajaxToolkit:CalendarExtender ID="CalendarExtender2" runat="server" PopupButtonID="ImageButton2" Format="dd/MM/yyyy" TargetControlID="TextBox9" />
                    <small id="passwordHelpBlock2" class="form-text text-muted">This field is optional</small>                

                </div>
            </div>
            <a href="MemArea.aspx">Already a member, log in?</a>
            <br />
                        <br />

            <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary" OnClick="Button1_Click" />
            </div>
    </form>   
</asp:Content>
