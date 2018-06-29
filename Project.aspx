<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="RotaryClub.Project" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Projects</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >Activities: Projects</h2>
    </div>
    <div class="container">
        <div class="p-3 mb-2 bg-light text-dark">
        <p class="display-4" style="text-align:center">
        "Are you looking for a way to make a difference in your community or communities around the world? There’s a project happening that needs you."
        </p>
            </div>
        <div class="p-3 mb-2 bg-light text-dark">
<p>We use our knowledge of local issues to identify areas of need, then apply our expertise and diverse perspectives to find a solution. Rotary members likely are working in your community right now to feed the hungry, tutor disadvantaged children, maintain parks and playgrounds, and much more. You can help.</p>
                <h3 style="text-align:center">Long Term Projects</h3>

            <hr />
        <%--Event 1--%>
  <div class="row">
    <div class="col-sm">
            <img src="Eye1.jpg" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>1. Rotary Eye Clinic</h4>
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
        <p>For more details, please contact the President at <a href="mailto:sarita.agrawal23@yahoo.com">sarita.agrawal23@yahoo.com</a>.</p>
    </div>
  </div>
                <%--End of Event 1--%>
<div class="row">
    <div class="col-sm">
            <img src="Phy1.jpg" class="img-fluid" alt="Responsive image" style="max-width:100%">
    </div>
    <div class="col-sm">
<h4>2. Anita Bansal Physiotheraphy Center</h4>
        <h5>Pardeshipura Scheme 78, Indore</h5>
        <h5>9.30 a.m. to 12 p.m.</h5>
        <br />
        <h5>Our figures...</h5>
        <ul>
            <li>Active Members-5 to 6</li>
            <li>Operated Paients-7964</li>
            <li>Club Sponsored Operated Patients-601</li>
        </ul>
        <p>For more details, please contact the Secretary at <a href="mailto:GSGKSINGH11@GMAIL.COM">gsgksingh11@gmail.com</a>.</p>
    </div>
  </div>
            <hr />
        </div>
</asp:Content>
