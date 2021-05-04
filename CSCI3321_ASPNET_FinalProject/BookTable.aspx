<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.BookTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Books</h3>
    <asp:Label ID="lblBooks" runat="server"></asp:Label>
    <asp:Table ID="tblBook" runat="server" CssClass="table table-stripe">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Book Title</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author First Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author Last Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publisher's Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Genre</asp:TableHeaderCell> 
        </asp:TableHeaderRow>
    </asp:Table>

    <br />

</asp:Content>
