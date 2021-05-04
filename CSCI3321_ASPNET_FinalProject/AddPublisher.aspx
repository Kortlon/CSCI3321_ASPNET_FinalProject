<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPublisher.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddPublisher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Publisher</h3>
    <div class ="row">
        <!-- ------------------------- -->
         <div class ="col-md-3">
            Publisher's Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPublisherName" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
          <div class ="col-md-3">
            Address:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubAddress" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
         <div class ="col-md-3">
            City:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubCity" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
         <div class ="col-md-3">
            Postal Code:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPubPostal" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
        <div class ="col-md-3">
            Country:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtCountry" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
         <div class ="col-md-3">
            Phone Number:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPhoneNum" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <!-- ------------------------- -->
          <div class ="col-md-3"> 
        </div>
        <div class ="col-md-9">
            
            <asp:Button ID="btnPub" runat="server" Height="34px" Text="Submit" CssClass ="btn btn-primary" Width="90px" OnClick="btnPub_Click" />
            
        </div>
       <!-- End of the Row --> 
    </div>

</asp:Content>
