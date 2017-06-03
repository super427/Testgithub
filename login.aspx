<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="USER_Login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 806px;
        }
        .style3
        {
            width: 806px;
            height: 40px;
        }
        .style4
        {
            width: 806px;
            height: 39px;
        }
        .auto-style3 {
            width: 1097px;
        }
        .auto-style4 {
            width: 1097px;
            height: 34px;
        }
        .auto-style5 {
            width: 1097px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <asp:ScriptManager ID="scriptmanager1" runat="server"></asp:ScriptManager>  
    <div style="height: 493px">
        <fieldset>
            <asp:Label ID="lblmsg" runat="server" Font-Italic="True" Font-Names="Calibri" Font-Size="Large"></asp:Label>
    <table>
        
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
            </tr>
            <tr>
                
                <td class="auto-style4"><asp:TextBox ID="txtemail" runat="server" CssClass="textbox"  Width="234px" Height="25px" ></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtemail_TextBoxWatermarkExtender" runat="server" WatermarkText="E-Mail Id" Enabled="True" TargetControlID="txtemail">
                    </asp:TextBoxWatermarkExtender>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
             <asp:TextBox ID="txtpassword" runat="server" CssClass="textbox" TextMode="Password" Width="283px" Height="26px"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtpassword_TextBoxWatermarkExtender" runat="server" WatermarkText="password" Enabled="True" TargetControlID="txtpassword">
                    </asp:TextBoxWatermarkExtender>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                     
                <asp:Button ID="btnlogin1" runat="server" Text="LOGIN" CssClass="button" OnClick="btnlogin1_Click" Font-Bold="True" Font-Size="Large" Height="37px" />&nbsp&nbsp&nbsp&nbsp&nbsp
                    <asp:Button ID="btncancel" runat="server" Text="CANCEL" CssClass="button" OnClick="btncancel_Click" Font-Bold="True" Font-Size="Large" Height="37px" />
                
                &nbsp;
                    
                
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:LinkButton ID="lkforgot" runat="server" Text="Forgot Password?" PostBackUrl="~/ForgotPassword.aspx"  Font-Bold="True" Font-Underline="True" Font-Size="Large" OnClick="lkforgot_Click"></asp:LinkButton> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:LinkButton ID="lkchange" runat="server" Text="Change Password" PostBackUrl="~/user/ChangePassword.aspx"></asp:LinkButton>&nbsp&nbsp&nbsp&nbsp&nbsp--%>
                    <asp:LinkButton ID="lkregister" runat="server" Text="Create New Account" PostBackUrl="~/user/registerr.aspx" Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:LinkButton>
                 
                
                 
                </td>
            </tr>
          
        </table>
             </fieldset>
        <img src="image/banners/1.jpg" style="width: 1044px" alt="login page"/>
 
   </div>

    </form>
</body>
</html>

</asp:Content>

