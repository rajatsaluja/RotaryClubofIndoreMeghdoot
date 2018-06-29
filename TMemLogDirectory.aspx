<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TMemLogDirectory.aspx.cs" Inherits="RotaryClub.TMemLogDirectory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <%--Bootstrap links--%>
    <link rel="stylesheet" href="rptr.css" type="text/css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="RotaryDesign.css" type="text/css" />

    <%--Link end--%>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


    <title></title>
</head>
<body>
    
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-center">
        <div class="navbar-brand navbar navbar-light bg-light">
            <a class="navbar-brand" href="default.aspx">
                <img src="logo.png" class="nav" />
            </a>
        </div>
        <ul class="nav nav-pills">
            <li class="nav-item">
                <a class="nav-link" href="MemLogHomepage.aspx" style="color: #39424a">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" style="color: #39424a" aria-haspopup="true" aria-expanded="false">About Us</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="MemLogHistory.aspx" style="color: #39424a">History</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="MemLogAboutInt.aspx" style="color: #39424a">Rotary International</a>
                   <%-- <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="AboutMeghdoot.aspx" style="color: #39424a">Rotary Indore Meghdoot</a>
                </div>--%>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="TMemLogDirectory.aspx" style="color: #39424a">Directory</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" style="color: #39424a" aria-haspopup="true" aria-expanded="false">Activities</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="MemLogNewEvents.aspx" style="color: #39424a">Events</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="MemLogNewProjects.aspx" style="color: #39424a">Projects</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="MemLogBoard.aspx" style="color: #39424a">Club's Board</a>
            </li>
            <%--<li class="nav-item">
                <a class="nav-link" href="MemArea.aspx" style="color: #39424a">Member's Area</a>
            </li>--%>
            <li class="nav-item">
                <a class="nav-link" href="MemLogContactUs.aspx" style="color: #39424a">Contact Us</a>
            </li>
        </ul>
    </nav>
    <!--Navbar end-->
    <%--    Login nav bar begins now--%>
    <form id="form1" runat="server">
       <%-- <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Manage Account</h2>
        </div>--%>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px; padding-bottom:4px">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
            </div>

            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
        </form>
<%--    Mem Header over--%>

    <div class="p-3 mb-2 bg-dark text-white">
        <h2 style="text-align: center; text-decoration: solid">Meet Our Members...</h2>
    </div>

   <div class="container">
        <div class="p-3 mb-2 bg-light text-dark">
             <p class="display-4" style="text-align:center">
                 "Impact starts with our members — people like you who see a world where people unite and take action to create lasting change — across the globe, in our communities, and in ourselves."
                    

        </p>
<p>The members of Rotary Indore Meghdoot works towards the goal of social service as a family and by the help of this section, we would like to introduce them. To access the complete details of each member, please sign in by using <a href="MemArea.aspx">Member's Area</a> page.</p>            </div>
    <hr />




    <div class="container" style="margin-left: 110px">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <table style="background: #eee; font: 14px segoe ui; border-collapse: collapse; width: 25%; margin: 5px; float: left;">
                    <tr>
                        <th style="background: #febd11; color: #fff; padding: 8px 10px; text-align: left;"><%#Eval("FName") %>  <%#Eval("LName") %></th>
                    </tr>
                    <tr>
                        <td style="padding: 5px 10px;">Position: <%#Eval("Position") %>  </td>
                        
                                                
                    </tr>
                    <tr>
                        <td style="padding: 5px 10px;">Email: <%#Eval("Email") %>  </td>
                    </tr>
                    <tr>
                        
                        <td style="padding: 5px 10px;">Number: <%#Eval("PNo") %>  </td>
                       
                    </tr>
                    <tr> <td style="padding: 5px 10px;">Occupation: <%#Eval("Occupation") %>  </td>
                        </tr>
                    <tr>
                        <td style="padding: 5px 10px;">Spouse: <%#Eval("SFName") %>  <%#Eval("SLName") %> </td>
                    </tr>

                </table>

            </ItemTemplate>

        </asp:Repeater>

    </div>
       </div>


    <!--Footer-->
    <div class="footer-copyright py-5 text-center" style="clear: both;">
        <a href="#" class="fa fa-facebook"></a>
        <a href="#" class="fa fa-linkedin"></a>
        © 2018 Rotary Indore Meghdoot. All rights reserved.</>
    </div>
    <!--Footer end-->


</body>
</html>
