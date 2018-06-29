<%@ Page Title="" Language="C#" MasterPageFile="~/AdLog.Master" AutoEventWireup="true" CodeBehind="AdLogContactUs.aspx.cs" Inherits="RotaryClub.AdLogContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: #F8F9FA;
        }

        .address-icon i {
            font-size: 36px;
            line-height: 32px;
        }

        .address-icon i {
            font-size: 36px;
            line-height: 32px;
        }

        .icons i {
            color: #fff;
            padding: 8px 0px;
            text-align: center;
            height: 30px;
            width: 30px;
            margin-right: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <%--   Login nav bar begins now--%>

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

        <%--         login mini bar ends--%>
        <div class="p-3 mb-2 bg-dark text-white">
            <h2 style="text-align: center; text-decoration: solid">Contact Us</h2>
        </div>
        <div class="container">

            <div class="row">
                <div class="col-lg-8 offset-lg-2 col-12">

                    <div class="row bg-light pt-3 pb-3 mb-4">
                        <div class="col-lg-12">
                            <h6>ADDRESS :</h6>
                        </div>
                        <div class="col-lg-4 col-4">
                            17/2 Manoramama Gunj,
                        Palasia,
                        Indore, India 452001                          
                        </div>

                        <div class="col-lg-6 col-6">
                            <p class="m-0 text-danger">
                                <i class="fa fa-phone-square" aria-hidden="true" style="padding: 0px;"></i>
                                +91 9756709890
                            </p>
                            <p class="m-0 text-info">
                                <i class="fa fa-envelope" aria-hidden="true" style="padding: 0px;"></i>
                                rotary_meghdoot@gmail.com
                            </p>

                        </div>

                        <div class="col-lg-2 col-2 address-icon text-center text-danger">
                            <i class="fa fa-map-marker" aria-hidden="true" style="padding: 0px;"></i>
                        </div>
                    </div>

                    <div class="row bg-light pt-3 pb-3 mb-4">
                        <div class="col-lg-6 col-12">
                                <div class="form-row mb-3">
                                    <div class="col">

                                        <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="First Name"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="v1" ErrorMessage="Not a valid first name" ControlToValidate="TextBox1" ValidationExpression="^[a-zA-z]{0,20}$"></asp:RegularExpressionValidator>
                                        <small id="passwordHelpBlock1" class="form-text text-muted">This field is optional</small>

                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Last Name"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationGroup="v1" ErrorMessage="Not a valid last name" ControlToValidate="TextBox2" ValidationExpression="^[a-zA-z]{0,20}$"></asp:RegularExpressionValidator>
                                        <small id="passwordHelpBlock2" class="form-text text-muted">This field is optional</small>

                                    </div>
                                </div>
                                <div class="form-row mb-3">
                                    <div class="col">
                                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationGroup="v1" ErrorMessage="Not a valid email id" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z]+)\.([a-zA-Z]{2,5})$" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>
                                        <small id="passwordHelpBlock3" class="form-text text-muted">This field is optional</small>

                                    </div>
                                    <div class="col">
                                        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Phone Number"></asp:TextBox>
                                        <small id="passwordHelpBlock4" class="form-text text-muted">This field is optional</small>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ValidationGroup="v1" ErrorMessage="Not a valid phone number" ValidationExpression="^\d{10}$" ControlToValidate="TextBox4"></asp:RegularExpressionValidator>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextArea5" TextMode="multiline" class="form-control" Rows="4" runat="server" placeholder="Leave your comment(s)/feedback here." />
                                    <asp:RequiredFieldValidator ID="rfvmess" ControlToValidate="TextArea5" runat="server" ForeColor="Red" ErrorMessage="This field is required!" ValidationGroup="v1"></asp:RequiredFieldValidator>
                                </div>
                                <asp:Button ID="submit_btn" runat="server" class="btn btn-danger mb-4" Text="Submit" ValidationGroup="v1" OnClick="submit_btn_Click" />
                        </div>
                        <div class="col-lg-6 col-12">
                            <div style="width: 100%">
                                <iframe width="100%" height="235px;" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;q=Palasia.%20Indore.%20India+(Rotary%20Meghdoot)&amp;ie=UTF8&amp;t=&amp;z=15&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0">
                                    <a href="https://www.maps.ie/create-google-map/">Add map to website
                                    </a>

                                </iframe>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </form>

</asp:Content>
