<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdLogNewMeeDash.aspx.cs" Inherits="RotaryClub.AdLogNewMeeDash" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <%--Bootstrap links--%>
    <link rel="stylesheet" href="rptr.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="RotaryDesign.css" type="text/css" />

    <%--Link end--%>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

</head>
<body>
     <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center .site-nav-utility-container" style="padding-top: 0px">
        <div class="navbar-brand navbar navbar-light bg-light">
            <a class="navbar-brand" href="default.aspx">
                <img src="logo.png" class="nav">
            </a>
        </div>

        <ul class="nav nav-pills">
            <li class="nav-item">
                <a class="nav-link" href="AdLogHomepage.aspx" style="color: #39424a">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" style="color: #39424a" aria-haspopup="true" aria-expanded="false">About Us</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="AdLogHistory.aspx" style="color: #39424a">History</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="AdLogAboutInt.aspx" style="color: #39424a">Rotary International</a>
                    <%--<div class="dropdown-divider"></div>
        <a class="dropdown-item" href="MemLogAboutMeghdoot.aspx" style="color:#39424a">Rotary Indore Meghdoot</a>
    </div>--%>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AdLogDirectory.aspx" style="color: #39424a">Directory</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" style="color: #39424a" aria-haspopup="true" aria-expanded="false">Activities</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="AdLogNewEvents.aspx" style="color: #39424a">Events</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="AdLogNewProjects.aspx" style="color: #39424a">Projects</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AdLogBoard.aspx" style="color: #39424a">Club's Board</a>
            </li>
            <%--<li class="nav-item">
    <a class="nav-link" href="MemArea.aspx" style="color:#39424a">Member's Area</a>
  </li>--%>
            <li class="nav-item">
                <a class="nav-link" href="AdLogContactUs.aspx" style="color: #39424a">Contact Us</a>
            </li>
        </ul>
    </nav>
    <%--    navbar ends--%>
    <%--    Login nav bar begins now--%>
    <form id="form1" runat="server">
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Meeting Management</h2>
        </div>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="AdLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="AdLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:Button ID="ADash_btn" runat="server" Text="Dashboard" class="btn btn-secondary" type="button" OnClick="ADash_btn_Click" />
            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
        <%--login nav bar ends--%>
        <br />
        <br />

        <div class="container">
        <div class="row">
            <div class="col">
                Meeting Id:
                    <asp:TextBox ID="TB1" Width="300px" runat="server" placeholder="Enter the Meeting Id. Ex: 1, 2, etc.."></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ControlToValidate="TB1" ID="Text_rfv" runat="server" ErrorMessage="This is a required field." ValidationGroup="valgrp1"></asp:RequiredFieldValidator>

            </div>
            <div class="col">
            <asp:Button ID="Add_btn" runat="server" Text="Add Meeting(s)" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Add_btn_Click" />
            &nbsp;&nbsp;
            <asp:Button ID="Update_btn" ValidationGroup="valgrp1" runat="server" Text="Update Meeting(s)" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Update_btn_Click" />
            &nbsp;&nbsp;<asp:Button ValidationGroup="valgrp1" ID="Del_btn" runat="server" Text="Delete Meeting(s)" class="btn btn-secondary" Style="background-color: #5d7b9d" type="button" OnClick="Del_btn_Click" />
        </div>
       
        </div>

    </div>
        <div class="container">
            <h5>Current List of Meetings</h5>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <table style="background: #eee; font: 14px segoe ui; border-collapse: collapse; width: 100%; margin: 5px; float: left;">
                        <tr>
                            <th style="background: #febd11; color: #fff; padding: 8px 10px; text-align: left;">Id: <%#Eval("Id") %></th>
                        </tr>
                        <tr>
                            <td style="padding: 5px 10px;">Name: <%#Eval("Name") %>  </td>
                            <td style="padding: 5px 10px;">Date: <%#Eval("Date") %>  </td>
                            <td style="padding: 5px 10px;">Time: <%#Eval("Time") %>  </td>
                            <td style="padding: 5px 10px;">Venue: <%#Eval("Venue") %>  </td>
                            <td style="padding: 5px 10px;">Agenda: <%#Eval("Agenda") %>  </td>
                            
                        </tr>
                        <tr>
                        </tr>

                    </table>

                </ItemTemplate>

            </asp:Repeater>
        </div>
        </form>
</body>
</html>
