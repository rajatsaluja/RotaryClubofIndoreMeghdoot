<%@ Page Title="" Language="C#" MasterPageFile="~/Design.Master" AutoEventWireup="true" CodeBehind="TProjects.aspx.cs" Inherits="RotaryClub.TProjects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <div class="p-3 mb-2 bg-dark text-white">
        <h2 style="text-align: center; text-decoration: solid">Activities: Projects</h2>
    </div>
    <div class="container">
        <div class="p-3 mb-2 bg-light text-dark">
            <p class="display-4" style="text-align: center">
                "Are you looking for a way to make a difference in your community or communities around the world? There’s a project happening that needs you."
            </p>
        </div>
        <div class="p-3 mb-2 bg-light text-dark">
            <p>We use our knowledge of local issues to identify areas of need, then apply our expertise and diverse perspectives to find a solution. Rotary members likely are working in your community right now to feed the hungry, tutor disadvantaged children, maintain parks and playgrounds, and much more. You can help.</p>
            <h3 style="text-align: center">Long Term Projects</h3>
        </div>
        <hr />
        
        <form runat="server">
        <asp:repeater runat="server">
    <div class="row">

        <div class="col">
            <img src="Eye1.jpg"/>
        </div>

        <div class="col">
            
        </div>

    </div>
         </asp:repeater>

        </form>


    </div>





</asp:Content>
