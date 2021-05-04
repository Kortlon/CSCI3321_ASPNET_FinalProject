<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddAuthors.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddAuthors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add Author</h3>
    <div class ="row">
           <!-- ------------------------- -->
         <div class ="col-md-3">
            Authors Last Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAutLast" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           <!-- ------------------------- -->
         <div class ="col-md-3">
            Authors First Name:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAutFirst" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           <!-- ------------------------- -->
         <div class ="col-md-3">
            Authors Gender:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtAutGender" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
           <!-- ------------------------- -->
         <div class ="col-md-3">
            Authors Birth Date:
          
            </div>
        <div class="col-md-9">
            
            <asp:TextBox ID="txtAutYear" runat="server" CssClass="form-control" Width="66px">YYYY</asp:TextBox>
            <asp:TextBox ID="txtAutMonth" runat="server"   CssClass="form-control" Width="66px">MM</asp:TextBox>
            <asp:TextBox ID="txtAutDay" runat="server" CssClass="form-control" Width="66px">DD</asp:TextBox>
            
        </div>
         <!-- ------------------------- -->
         <div class ="col-md-3">
 
            </div>
        <div class="col-md-9">
            
            <asp:Button ID="btnAut" runat="server" OnClick="btnAut_Click" Text="Submit" />
            
        </div>
    </div>
</asp:Content>
