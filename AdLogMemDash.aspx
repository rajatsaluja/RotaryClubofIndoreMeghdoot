<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="AdLogMemDash.aspx.cs" Inherits="RotaryClub.AdLogMemDash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <%--    Login nav bar begins now--%>
    <form id="form1" runat="server">
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Member Management</h2>
        </div>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
            </div>
            <asp:Button ID="ADash_btn" runat="server" Text="Dashboard" class="btn btn-secondary" type="button" OnClick="ADash_btn_Click" />
            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" OnClick="Lout_btn_Click" />
        </div>
        <br />
        <div class="container">
            <asp:Button ID="addgenmem_btn" Style="background-color: #5d7b9d" runat="server" Text="Add Members" class="btn btn-secondary" type="button" OnClick="addgenmem_btn_Click" />
&nbsp;&nbsp;
            <asp:Button ID="addbomem_btn" Style="background-color: #5d7b9d" runat="server" Text="Add Board Members" class="btn btn-secondary" type="button" OnClick="addgbomem_btn_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
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
            <asp:SqlDataSource ID="SqlDataSource1" EnableCaching="True" runat="server" ConnectionString="<%$ ConnectionStrings:RotaryClubConnectionString %>" SelectCommand="SELECT * FROM [Members]"></asp:SqlDataSource>
            <br />
            <div class="row">
                <div class="col">
                    Member's Email:
                    <asp:TextBox ID="TB1" Width="300px" runat="server" placeholder="Enter member's email address"></asp:TextBox>


                </div>
                <div class="col">
                    <asp:Button ID="Update_btn" ValidationGroup="valgrp1" runat="server" Text="Update" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Update_btn_Click" />
                    &nbsp;<asp:Button ID="Del_btn" runat="server" Text="Delete" class="btn btn-secondary" Style="background-color: #5d7b9d" type="button" OnClick="Del_btn_Click" />

                </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This is a reuired field, please try again!" ValidationGroup="valgrp1" ControlToValidate="TB1" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                             
                        <asp:RegularExpressionValidator ValidationGroup="valgrp1" ID="RegularExpressionValidator1" runat="server" ErrorMessage="The email id you entered is incorrect. Please refer the table above." ForeColor="Red" ControlToValidate="TB1" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>

                    </div>
                </div>


            
            <%--            update code beings--%>
            <%--<p>
                NOTE: All the registered members can update their own profile. Being an <em>Admin</em> you can only update their <em>position</em> in the club.
            </p>--%>
           <%-- <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
                <ContentTemplate>--%>

                    <asp:Label ID="DDLLabel" runat="server" Text="Update member's position to:"></asp:Label>&nbsp;<asp:DropDownList ID="DDL1" runat="server" >
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>Board Member</asp:ListItem>
                <asp:ListItem>General Member</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Rolelbl" runat="server" Text="Role in the Board: "></asp:Label>
            <asp:TextBox ID="Roletxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Save Changes" class="btn btn-secondary" BackColor="#5d7b9d" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <%--</ContentTemplate>--%>

            
            
            
        </div>


    </form>
</asp:Content>
