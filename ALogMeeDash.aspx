<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="ALogMeeDash.aspx.cs" Inherits="RotaryClub.ALogMeeDash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" style="margin-left: 40px">

        <%--    Login nav bar begins now--%>
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Meeting Management</h2>
        </div>
        <div class="text-right" style="padding-right: 4px; padding-top: 4px;">
            <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>

            <asp:Button ID="MAccount_btn" runat="server" Text="Manage Account" class="btn btn-secondary dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" />

            <div class="dropdown-menu" aria-labelledby="MAccount_btn">
                <a class="dropdown-item" href="MemLogAccount.aspx">Account Settings</a>
                <a class="dropdown-item" href="MemLogProfile.aspx">Profile Settings</a>
            </div>

            <asp:Button ID="ADash_btn" runat="server" Text="Dashboard" class="btn btn-secondary" OnClick="ADash_btn_Click" />
            <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-secondary" />
        </div>

        <br />
        <br />


        <div class="container">

            <asp:Button ID="AddMeeting" runat="server" Style="background-color: #5d7b9d" Text="Add Meeting" class="btn btn-secondary" OnClick="AddMeeting_Click" />
            <br />
            <br />


            <asp:GridView Style="width: 100%" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                    <asp:BoundField DataField="Venue" HeaderText="Venue" SortExpression="Venue" />
                    <asp:BoundField DataField="Agenda" HeaderText="Agenda" SortExpression="Agenda" />
                    <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lnaConnectionString %>" SelectCommand="SELECT * FROM [Meetings]"></asp:SqlDataSource>


            <br />
            <br />


            <div class="row">
                <div class="col">
                    Meeting ID:
                    <asp:TextBox ID="TB1" Width="300px" runat="server" placeholder="Enter the meeting ID"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TB1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="TB1" ValidationExpression="^\d{1,2}$" runat="server" ForeColor="Red" ErrorMessage="Incorrect Meeting Id- Look the table above"></asp:RegularExpressionValidator>
                </div>
                <div class="col">
                    <asp:Button ID="Update_btn" runat="server" Text="Update" class="btn btn-secondary" type="button" Style="background-color: #5d7b9d" OnClick="Update_btn_Click" />
                    &nbsp;
                    <asp:Button ID="Del_btn" runat="server" Text="Delete" class="btn btn-secondary" Style="background-color: #5d7b9d" type="button" OnClick="Del_btn_Click" />

                    <asp:Label ID="statusLbl" runat="server" Text=""></asp:Label>

                </div>

            </div>






        </div>
    </form>
    


</asp:Content>
