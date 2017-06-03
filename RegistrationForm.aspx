<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" MaintainScrollPositionOnPostback="true" Inherits="RegistrationForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>registration form</title>
    <style type="text/css">

        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            width: 133px;
            height: 25px;
        }
        .style2
        {
            width: 133px;
            height: 6px;
        }
                
        .style1
        {
            width: 133px;
        }
        .auto-style10 {
            width: 193px;
            height: 25px;
        }
        .auto-style11 {
            width: 392px;
            height: 25px;
        }
        .auto-style12 {
            height: 25px;
            width: 234px;
        }
        .auto-style13 {
            width: 234px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <table style="width: 98%; height: 399px;" border="1">
            <tr>
                
                <td class="auto-style10">
                    <asp:Label ID="lblfname" runat="server" Text="FirstName" Font-Bold="False" 
                        Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtfname" runat="server" Width="158px"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="FirstName Must Be Required" ForeColor="#FF3300" ControlToValidate="txtfname">*</asp:RequiredFieldValidator>
                </td>
                
                <td class="auto-style12">
                    <asp:Label ID="lbllname" runat="server" Font-Size="Large" Text="LastName"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtlname" runat="server" Width="160px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="LastName Must Be Required" ForeColor="#FF3300" ControlToValidate="txtlname">*</asp:RequiredFieldValidator>
                </td>
            </tr>
           
            
            <tr>
                <td class="auto-style10">
                    <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdob"></asp:CalendarExtender>
                    <asp:Label ID="lbldob" runat="server" Text="Date Of Birth" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtdob" runat="server" TextMode="Date" Width="164px"></asp:TextBox>
                </td>
 
                <td class="auto-style12">
                    <asp:Label ID="lblgender" runat="server" Text="Gender" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:RadioButton ID="radMale" runat="server" Checked="True" GroupName="Gender" Text="Male" />
&nbsp;&nbsp;
                    <asp:RadioButton ID="radfemale" runat="server" GroupName="Gender" Text="Female" />
                    <br />
                </td>
            </tr>
         
            
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblcontno" runat="server" Text="ContactNo" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                  <asp:TextBox ID="txtcontno" runat="server" Width="164px" MaxLength="10"></asp:TextBox>
                </td>
                
                <td class="auto-style12">
                    <asp:Label ID="lbladd" runat="server" Text="Address" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtaddress" runat="server" Width="164px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblemailid" runat="server" Text="Email_Id" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtemail" runat="server" TextMode="Email" Width="164px" Height="16px" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must Be Required" ForeColor="#FF3300" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
               
                <td class="auto-style12">
                    <asp:Label ID="lblpwd" runat="server" Text="Password" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="164px"></asp:TextBox>
                    <asp:PasswordStrength ID="txtpwd_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpwd">
                    </asp:PasswordStrength>
                </td>
            </tr>
            
          
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblcountry" runat="server" Font-Size="Large" Text="Country"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged">
                    </asp:DropDownList>
                    
                </td>
                <td class="auto-style12">
                    <asp:Label ID="lblstate" runat="server" Font-Size="Large" Text="State"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlstate" runat="server"></asp:DropDownList>
                   
                </td>
            </tr>
            
          
            <tr>
                <td class="auto-style10">
                    <asp:Label ID="lblcity" runat="server" Font-Size="Large" Text="City"></asp:Label>
                </td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtCity" runat="server" Height="16px" Width="162px"></asp:TextBox>
                   
                </td>
                <td class="auto-style13">
                    
                </td>
                <td></td>

               
            </tr>
            
          
            <%--<tr>
                <td class="auto-style1" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" Width="221px" />
                </td>
            </tr>--%>
            
          
            <tr>
                <td class="auto-style3" colspan="4">
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" Width="112px" OnClick="Button1_Click" Height="31px" />
                    &nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="112px" OnClick="Button2_Click" Height="31px" />
                    </td>
                <%--<td class="auto-style9"> 
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
                    
                </td>--%>
            </tr>
           
        </table>
    
    </div>
    
   

    
    </form>
</body>
</html>

</asp:Content>

