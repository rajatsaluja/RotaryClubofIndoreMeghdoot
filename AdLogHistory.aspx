﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogHistory.aspx.cs" Inherits="RotaryClub.AdLogHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--  Login nav bar begins now--%>
    <form runat="server">
       
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
<%--   login nav ends--%>
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >History: Rotary International</h2>
    </div>
    <div class="container">  
     
        <div class="p-3 mb-2 bg-light text-dark">
        <p class="display-4" style="text-align:center">
                    "Rotary is a global network of 1.2 million neighbors, friends, leaders, and problem-solvers."

        </p>
<hr />
            <br />
    <div class="container">  
        <div class="p-3 mb-2 bg-light text-dark">
        <p>
            For more than 110 years, Rotary members have been addressing challenges around the world.<br /><br />

Grassroots at the core, Rotary links 1.2 million members to form an organization of international scope. It started with the vision of one man — Paul Harris. The Chicago attorney formed the Rotary Club of Chicago on 23 February 1905, so professionals with diverse backgrounds could exchange ideas, form meaningful, lifelong friendships, and give back to their communities.<br /><br />

Rotary’s name came from the group’s early practice of rotating meetings among the offices of its members.<br />
        </p>
            <h4>Paul Harris</h4>
            <br />
            <img src="Paul Harris 1600x1600.jpg" class="rounded mx-auto d-block" alt="Picture of Paul Harris Fellow">
            <br />
            <p>Rotary started with the vision of one man — Paul Harris. The Chicago attorney formed the Rotary Club of Chicago on 23 February 1905, so professionals with diverse backgrounds could exchange ideas, form meaningful, lifelong friendships, and give back to their communities.</p>
            <h4>Paul Harris Society</h4>
            <p>
                The Paul Harris Society recognizes Rotary members and friends of The Rotary Foundation who elect to contribute $1,000 or more each year to the Annual Fund, PolioPlus Fund, or approved global grants.<br />

The purpose of the Paul Harris Society is to honor and thank individuals for their generous, ongoing support of The Rotary Foundation.<br />

Rotary districts often honor new members of the Paul Harris Society by presenting them with a certificate and chevron at a district or club event.<br />
            </p>
            <h4>What your giving supports</h4>
            <p>By giving from your heart each and every year, you’ll support families and change lives. Paul Harris Society gifts have helped provide:</p>
            <ul>
                <li>Vocational training for teachers establishing an early childhood education center in South Africa</li>
                <li>Water filters, toilets, and hygiene training to prevent fluorosis, diarrhea, and other diseases in India</li>
                <li>A scholarship for a medical professional in Italy to research treatments that minimize mortality rates among premature babies</li>
                <li>Peace-building seminars for 200 teachers and 1,300 students in Uganda</li>
                <li>Treated mosquito nets and medical services that prevent malaria in Mali</li>
            </ul>
                        <a class="btn btn-primary" href="https://rotary.qualtrics.com/jfe/form/SV_eCYMZ3u8qeCZALb" style="background-color:#00246C;border:none;" role="button">Join the Paul Harris Society</a><br />

        </div>
        </div>
            </div>
        </div>
    
</asp:Content>
