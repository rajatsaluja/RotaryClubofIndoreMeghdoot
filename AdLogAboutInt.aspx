﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogAboutInt.aspx.cs" Inherits="RotaryClub.AdLogAboutInt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
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
    <%--login nav ends--%>
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >About Us: Rotary International</h2>
    </div>
    <div class="container">  
     
        <div class="p-3 mb-2 bg-light text-dark">
        <p class="display-4" style="text-align:center">
        "Whatever Rotary may mean to us, to the world it will be known by the results it achieves. "
        </p>
            <div class="media">
  <img class="mr-3 rounded-circle" src="Paul Harris 1600x1600.jpg" alt="Generic placeholder image" style="border-radius: 50%;
    height: 4rem;
    margin-right: 1.2rem;
    min-width: 4rem;
    width: 4rem">
  <div class="media-body">
    <h5 class="mt-0">-Paul Harris, Rotary Founder</h5>
  </div>
</div>
            <br />
        
        <h4>We Connect People</h4>
            <hr />
        <blockquote>Rotary unites more than a million people: 1.2 million members and 35,000+ clubs</blockquote>
            <p>Through Rotary clubs, people from all continents and cultures come together to exchange ideas, and form friendships and professional connections while making a difference in their backyards and around the world.</p>
         <h4>We Transform Communities</h4>
            <hr />
            <blockquote>We take action locally and globally: 16 million volunteer hours each year</blockquote>   
            <p>Each day, our members pour their passion, integrity, and intelligence into completing projects that have a lasting impact. We persevere until we deliver real, lasting solutions.</p>
        <h4>We Solve Problems</h4>
            <hr />
            <blockquote>No challenge is too big for us: 2.5 billion children immunized against polio</blockquote>
            <p>For more than 110 years, we’ve bridged cultures and connected continents to champion peace, fight illiteracy and poverty, promote clean water and sanitation, and fight disease.</p>
            <h4>Our Causes</h4>
            <hr />
<ol>
    <li>Promote peace</li>
    <li>Fight disease</li>
    <li>Provide clean water, sanitation, and hygiene</li>
    <li>Save mothers and children</li>
    <li>Support education</li>
    <li>Grow local economies</li>
</ol>  
            <h4>Our Ongoing Commitment</h4>
            <hr />
            <p>
Rotary members have not only been present for major events in history — we’ve also been a part of them. Three key traits have remained strong throughout our history:

We’re truly international. Only 16 years after being founded, Rotary had clubs on six continents. Today, members in nearly every country work to solve some of our world’s most challenging problems.

We persevere in tough times. During World War II, Rotary clubs in Austria, Germany, Italy, Japan, and Spain were forced to disband. Despite the risks, many continued to meet informally, and after the war, Rotary members came together to rebuild their clubs and their countries.

We’re committed to service, and we’re not afraid to dream big and set bold goals. We began our fight against polio in 1979 with a project to immunize 6 million children in the Philippines. Today, polio remains endemic in only three countries — down from 125 in 1988.
            </p>
        
    </div>
    </div>
</asp:Content>
