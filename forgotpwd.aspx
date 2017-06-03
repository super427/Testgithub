<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage1.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
    <fieldset style="height: 105px">
  
            <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
        <br />
            
          <table>
            <tr>
                <td><asp:TextBox ID="txtemail" runat="server" CssClass="textbox" Height="28px" Width="286px"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
             <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" CssClass="button" OnClick="btnsubmit_Click" Height="28px" Width="86px" />&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" CssClass="button" OnClick="btncancel_Click" Height="28px" Width="86px"/>
              </td>
            </tr>
         </table>
         </fieldset>
        </form>
</asp:Content>

