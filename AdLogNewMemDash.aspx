<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdLogNewMemDash.aspx.cs" Inherits="RotaryClub.AdLogNewMemDash" %>

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
    <%--    navbar ends--%>
    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Member Management</h2>
        </div>
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

        <%--login nav ends--%>
        <br />
        <div class="container">
            <asp:Button ID="addmem_btn" Style="background-color: #5d7b9d" runat="server" Text="Add Member(s)" class="btn btn-secondary" type="button" OnClick="addmem_btn_Click" />
<%--            &nbsp;&nbsp;<asp:Button ID="addbomem_btn" Style="background-color: #5d7b9d" runat="server" Text="Add Board Member(s)" class="btn btn-secondary" type="button" OnClick="addgbomem_btn_Click" />--%>
            &nbsp;&nbsp;<asp:Button ID="Update_btn" ValidationGroup="valgrp1" runat="server" Text="Update Member(s)" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Update_btn_Click" />
            &nbsp;&nbsp;<asp:Button ID="Del_btn" runat="server" Text="Delete Member(s)" class="btn btn-secondary" Style="background-color: #5d7b9d" type="button" OnClick="Del_btn_Click" />

            <br />
            <br />
            <%--<asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
                    <asp:BoundField DataField="LName" HeaderText="LName" SortExpression="LName" />
                    <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                    <asp:BoundField DataField="PNo" HeaderText="PNo" SortExpression="PNo" />
                    <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                    <asp:BoundField DataField="SFName" HeaderText="SFName" SortExpression="SFName" />
                    <asp:BoundField DataField="SLName" HeaderText="SLName" SortExpression="SLName" />
                    <asp:BoundField DataField="DOA" HeaderText="DOA" SortExpression="DOA" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" EnableCaching="True" runat="server" ConnectionString="<%$ ConnectionStrings:RotaryClubConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>--%>
            <br />
            <div class="row">
                <div class="col">
                    Member's Email:
                    <asp:TextBox ID="TB1" Width="300px" runat="server" placeholder="Enter member's email address"></asp:TextBox>
<%--                    &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label>--%>

                </div>
                <div class="col">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is a reuired field, please try again!" ValidationGroup="valgrp1" ControlToValidate="TB1" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ValidationGroup="valgrp1" ID="RegularExpressionValidator1" runat="server" ErrorMessage="The email id you entered is incorrect. Please refer the table above." ForeColor="Red" ControlToValidate="TB1" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>


                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Label ID="DDLLabel" runat="server" Text="Member's New Position:"></asp:Label>&nbsp;<asp:DropDownList ID="DDL1" runat="server">
                        <asp:ListItem>Administrator</asp:ListItem>
                        <asp:ListItem>Board Member</asp:ListItem>
                        <asp:ListItem>General Member</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:Button ID="Button1" runat="server" Text="Save Changes" class="btn btn-secondary" BackColor="#5d7b9d" OnClick="Button1_Click" />

                </div>
            </div>

            <br />

        </div>


        <div class="container">
            <h5>Current List of Members</h5>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>

                    <table style="background: #eee; font: 14px segoe ui; border-collapse: collapse; width: 100%; margin: 5px; float: left;">
                        <tr>
                            <th style="background: #febd11; color: #fff; padding: 8px 10px; text-align: left;"><%#Eval("FName") %> <%#Eval("LName") %> </th>
                        </tr>
                        <tr>
                            <td style="padding: 5px 10px;">DOB: <%#Eval("DOB") %>  </td>
                            <td style="padding: 5px 10px;">Phone: <%#Eval("PNO") %>  </td>
                            <td style="padding: 5px 10px;">Email: <%#Eval("Email") %>  </td>
                            <td style="padding: 5px 10px;">Occupation: <%#Eval("Occupation") %>  </td>
                            <td style="padding: 5px 10px;">Spouse: <%#Eval("SFname") %> <%#Eval("SLname") %>  </td>
                            <td style="padding: 5px 10px;">Anniversary: <%#Eval("DOA") %>  </td>
                            <td style="padding: 5px 10px;">Anniversary: <%#Eval("Position") %>  </td>
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
