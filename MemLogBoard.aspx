<%@ Page Title="" Language="C#" MasterPageFile="~/MemHomepage.Master" AutoEventWireup="true" CodeBehind="MemLogBoard.aspx.cs" Inherits="RotaryClub.MemLogBoard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <form runat="server">
    <div class="text-right">
        <asp:Label ID="NameLabel" runat="server" Text="" class="btn"></asp:Label>
        <asp:Button ID="Profile_btn" runat="server" Text="My Profile" class="btn btn-link" />
                <asp:Button ID="Lout_btn" runat="server" Text="Logout" class="btn btn-link" OnClick="Lout_btn_Click" />
        </div>
        </form>
<%--    Mem Header over--%>
     <br />
    <div class="p-3 mb-2 bg-dark text-white">
    <h2 style="text-align:center;text-decoration:solid" >Meet Our Board...</h2>
    </div>

    <div class="container">  
        <div class="p-3 mb-2 bg-light text-dark">
            <p>The Board establishes policy for Rotary Indore Meghdoot and provides guidance that helps our clubs thrive. We elect the members of the board every year at the international convention with each director serving for two years.</p>
            </div>
    <hr />
<%--Grid 1--%>
            <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Sarita Agrawal</h5>
            <h6 class="card-subtitle mb-2 text-muted">President</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn.Ghanshyam Singh</h5>
            <h6 class="card-subtitle mb-2 text-muted">Hon. Secretary</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Kulbhushan Chopra</h5>
            <h6 class="card-subtitle mb-2 text-muted">Club Trainer</h6>
          </div>
                </div>
    </div>
  </div>
</div>
            <br />
<%--Grid 2--%>
           <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Ruby Malhotra</h5>
            <h6 class="card-subtitle mb-2 text-muted">IPP</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. S.N Ghosh</h5>
              <h5 class="card-title">Rtn. Sunita Papalal</h5>
            <h6 class="card-subtitle mb-2 text-muted">Vice President</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
           <h5 class="card-title">Rtn. Harinder Mahal</h5>
            <h6 class="card-subtitle mb-2 text-muted">Executive Secretary</h6>
          </div>
                </div>
    </div>
  </div>
</div>
            <br />
<%--Grid 3--%>
           <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
           <h5 class="card-title">Rtn. Meenu Upadhyay</h5>
              <h5 class="card-title">Rtn. Manish Sharma</h5>
            <h6 class="card-subtitle mb-2 text-muted">Joint Secretary</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
             <h5 class="card-title">Rtn. Sunita Agrawal</h5>
              <h5 class="card-title">Rtn. Narendra Agrawal</h5>
              <h5 class="card-title">Rtn. Vinod Verma</h5> 
               <h5 class="card-title">Rtn. Vinod Verma</h5> 
               <h5 class="card-title">Rtn. Vinay Gupta</h5> 
               <h5 class="card-title">Rtn. Hitesh Thakur</h5>  
            <h6 class="card-subtitle mb-2 text-muted">Club Service Director</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Rachna Shukla</h5>
            <h6 class="card-subtitle mb-2 text-muted">Community Service Director</h6>
          </div>
                </div>
    </div>
  </div>
</div>     
            <br />          
<%--Grid 4--%>
           <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
           <h5 class="card-title">Rtn. Suraj Gulhati</h5>
              <h5 class="card-title">Rtn.Sunita Gupte</h5>
            <h6 class="card-subtitle mb-2 text-muted">Vocational Service Director</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Rashmi Gulhati</h5>
              <h5 class="card-title">Rtn. Nisha Jaisinghani</h5>
            <h6 class="card-subtitle mb-2 text-muted">International Service Director</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Santosh Mundra</h5>
              <h5 class="card-title">Rtn. Swati Agrawal</h5>
              <h5 class="card-title">Rtn. Aruna Gupta</h5>
            <h6 class="card-subtitle mb-2 text-muted">Youth Service Director</h6>
          </div>
                </div>
    </div>
  </div>
</div>    
            <br />          
                       
<%--Grid 5--%>
           <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
             <h5 class="card-title">Rtn. Veena  Mehta</h5>
              <h5 class="card-title">Rtn. Varsha Soni</h5>
              <h5 class="card-title">Rtn. Jasmeet Wasu</h5>
              <h5 class="card-title">Rtn. Preeti Jain</h5>
            <h6 class="card-subtitle mb-2 text-muted">Women In Rotary</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
             <h5 class="card-title">Rtn. Tejesh Mehta</h5>
            <h6 class="card-subtitle mb-2 text-muted">Health Service Advisor</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
           <h5 class="card-title">Rtn. Ramesh Vijayvargiya</h5>
              <h5 class="card-title">Rtn. S.N.Patwari</h5>
            <h6 class="card-subtitle mb-2 text-muted">Health Service Director</h6>
          </div>
                </div>
    </div>
  </div>
</div>  
            <br />          
                          
<%--Grid 6--%>
           <div class="container">
  <div class="row">
    <div class="col-sm">
     <div class="card" style="width: 18rem;">
          <div class="card-body">
          <h5 class="card-title">Rtn. Sadhna Singh</h5>
              <h5 class="card-title">Rtn. Ashok Shukla</h5>
            <h6 class="card-subtitle mb-2 text-muted">Public Image Director</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
           <h5 class="card-title">Rtn. Seema Syal</h5>
            <h6 class="card-subtitle mb-2 text-muted">Sergeant At Arms</h6>
          </div>
                </div>
    </div>
    <div class="col-sm">
      <div class="card" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">Rtn. Brajesh Agrawal</h5>
            <h6 class="card-subtitle mb-2 text-muted">President Elect</h6>
          </div>
                </div>
    </div>
  </div>
</div>    
            <br />                                            
<%--Grid Over--%>

</div>
</asp:Content>
