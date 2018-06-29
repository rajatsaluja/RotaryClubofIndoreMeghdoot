<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="RotaryClub.Event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Events</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br />
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >Activities: Events</h2>
    </div>
    <div class="container">
        <div class="p-3 mb-2 bg-light text-dark">
<p>The members of Rotary Indore Meghdoot works towards the goal of social service as a family and by the help of this section, we would like to introduce them. To access the complete details of each member, please sign in by using <a href="MemArea.aspx">Member's Area</a> page.</p>            </div>
    <hr />
        <%--Event 1--%>
  <div class="row">
    <div class="col-sm">
            <img src="Eye1.jpg" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>Eye Check-up</h4>
        <h5>Pardeshipura, Indore</h5>
        <h5>6 a.m. to 9 a.m.</h5>
        <br />
        <h5>Our figures...</h5>
        <ul>
            <li>Active Members-12</li>
            <li>Operated Paients-4045</li>
            <li>Spectales Distributed-3534</li>
            <li>Combination Spectacles Distributed-79</li>
            <li>Cataract Referred-108</li>
            <li>Camps Organized-17</li>
        </ul>
        <p>For more details, please contact the President at <a href="mailto:sarita.agrawal23@yahoo.com">sarita.agrawal23@yahoo.com</a></p>
    </div>
  </div>
            <hr />
                <%--End of Event 1--%>
<div class="row">
    <div class="col-sm">
            <img src="Phy1.jpg" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>Physiotheraphy Center</h4>
        <h5>Pardeshipura Scheme 78, Indore</h5>
        <h5>9.30 a.m. to 12 p.m.</h5>
        <br />
        <h5>Our figures...</h5>
        <ul>
            <li>Active Members-5 to 6</li>
            <li>Operated Paients-7964</li>
            <li>Club Sponsored Operated Patients-601</li>
        </ul>
        <p>For more details, please contact the Secretary at <a href="mailto:GSGKSINGH11@GMAIL.COM">gsgksingh11@gmail.com</a></p>
    </div>
  </div>
            <hr />
        </div>

</asp:Content>
