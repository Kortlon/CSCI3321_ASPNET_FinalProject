<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
         <!-- ------------------------- -->
        <div class="col-md-3">
            Book Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBkTitle" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
         <!-- ------------------------- -->
        <div class ="col-md-3">
            Author:
        </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="dsdAuthor" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, FirstName, LastName FROM Authors"></asp:SqlDataSource>
            
        </div>
         <!-- ------------------------- -->
        <div class="col-md-3">
           Price:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBkPrice" runat="server" CssClass ="form-control"></asp:TextBox>
        </div>
         <!-- ------------------------- -->
         <div class ="col-md-3">
            Publish Date:
          
            </div>
        <div class="col-md-9">
            
            <asp:TextBox ID="txtBkYear" runat="server" CssClass="form-control" Width="66px">YYYY</asp:TextBox>
            <asp:TextBox ID="txtBkMonth" runat="server"   CssClass="form-control" Width="66px">MM</asp:TextBox>
            <asp:TextBox ID="txtBkDay" runat="server" CssClass="form-control" Width="66px">DD</asp:TextBox>
            
        </div>
         <!-- ------------------------- -->
         <div class ="col-md-3">
           Publisher:
            </div>
        <div class="col-md-9">
         
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="dsdPublisher" DataTextField="PublisherName" DataValueField="PublisherID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdPublisher" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
         
        </div>
         <!-- ------------------------- -->
         <div class ="col-md-3">
            Genre:
          
            </div>
        <div class="col-md-9">
            
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="dsdGenre" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
            
        </div>
         <!-- ------------------------- -->
         <div class ="col-md-3">
            Total Word Count:
          
            </div>
        <div class="col-md-9">
            
            <asp:TextBox ID="txtBkWrd" runat="server" CssClass ="form-Control"></asp:TextBox>
            
        </div>
        <!-- ------------------------- -->
    <div class ="col-md-3">
            </div>
        <div class="col-md-9">
            <asp:Button ID="btnBkSub" runat="server" OnClick="btnBkSub_Click" Text="Submit" />
        </div>
         <!-- ------------------------- -->
   <div class ="col-md-3">
       Click to View Book Table:
            </div>
        <div class="col-md-9">
      
            <asp:Button ID="btnBooktbl" runat="server" Text="View" OnClick="btnBooktbl_Click" />
       
        </div>
    </div>
</asp:Content>
