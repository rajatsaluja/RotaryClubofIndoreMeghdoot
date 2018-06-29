<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="AdLogDashboard.aspx.cs" Inherits="RotaryClub.AdLogDashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Admin Dashboard</h2>
        </div>
         <%--    Login nav bar begins now--%>
   
        
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
            </div>

            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
        <br />
        <br />
        <div style="float: initial; padding-left: 25px;">
            <div class="row">
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Event Management</h5>
                            <p class="card-text">Use this board to add, update or delete events.</p>
                            <a href="#" class="btn btn-primary" style="background-color:#00246C;border:none">View Events</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Meeting Management</h5>
                            <p class="card-text">Use this board to add, update or delete meetings.</p>
                            <a href="ALogMeeDash.aspx" class="btn btn-primary" style="background-color:#00246C;border:none">View Meetings</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Member Management</h5>
                            <p class="card-text">Use this board to add, update or delete all members.</p>
                            <a href="AdLogMemDash.aspx" class="btn btn-primary" style="background-color: #00246C; border: none">View Members</a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Project Management</h5>
                            <p class="card-text">Use this board to add, update or delete projects.</p>
                            <a href="#" class="btn btn-primary" style="background-color: #00246C; border: none">View Projects</a>

                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
</asp:Content>
