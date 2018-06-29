<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogEvents.aspx.cs" Inherits="RotaryClub.AdLogEvents" %>
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
        </form>
<%--         login mini bar ends--%>
      <br />
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >Activities: Events</h2>
    </div>
    <div class="container">
        <div class="p-3 mb-2 bg-light text-dark">
            <p class="display-4" style="text-align:center">
"Our members, their families, and friends of Rotary meet regularly to exchange ideas, share interests, and celebrate our diverse perspectives."
        </p>
            </div>
        <div class="p-3 mb-2 bg-light text-dark">
                <h3 style="text-align:center">Long-Term Events</h3>
    <hr />
        <%--Event 1--%>
  <div class="row">
    <div class="col-sm">
            <img src="blood.gif" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>Blood Donation Camp</h4>
        <h5>Auditorium at Indore Institute of Science & Technology, Bypass, Indore</h5>
        <h5>Every Sunday at10 a.m. to 9 p.m.</h5>
        <br />
        <h5>Details</h5>
        <ul>
            <li>Active Members-30</li>
            <li>Number of Donars- 1,876</li>
            <li>Number of Blood Units-3,578</li>
            <li>Camps Organized-67</li>
        </ul>
        <p>For more details, please contact the President at <a href="mailto:sarita.agrawal23@yahoo.com">sarita.agrawal23@yahoo.com</a></p>
    </div>
  </div>
            <hr />
                <%--End of Event 1--%>
<div class="row">
    <div class="col-sm">
            <img src="rahat.jpg" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>RAHAT Health Check-Up Camp</h4>
        <h5>Pardeshipura Scheme 78, Indore</h5>
        <h5>Every second Saturday at 12 p.m. to 5 p.m.</h5>
        <br />
        <h5>Details</h5>
        <ul>
            <li>Active Members-35</li>
            <li>Operated Paients-8,987</li>
            <li>Club Sponsored Operated Patients-878</li>
            <li\>Camps Organized-15</li>
        </ul>
        <p>For more details, please contact the Secretary at <a href="mailto:GSGKSINGH11@GMAIL.COM">gsgksingh11@gmail.com</a></p>
    </div>
  </div>
            <hr />
        </div>

</asp:Content>
