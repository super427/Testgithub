<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Collection.aspx.cs" Inherits="Collection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server" style="color: #C0C0C0; border-style: solid">
   <asp:LinkButton ID="lnkmen" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#CCCCCC" Height="23px" Width="62px" PostBackUrl="~/Men.aspx">Men</asp:LinkButton>&nbsp 
    <asp:LinkButton ID="lnkwomen" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#CCCCCC" Height="23px" Width="62px" PostBackUrl="~/Women.aspx">Women</asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp
    <asp:LinkButton ID="lnkkids" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="#CCCCCC" Height="23px" Width="62px" PostBackUrl="~/Children.aspx">Children</asp:LinkButton>
    </form>
</asp:Content>

