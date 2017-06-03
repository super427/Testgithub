<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
     <link href="css/style.css" rel="stylesheet" />
 <div class="body2">
			<div class="main">
				
					<div class="wrapper" style=" border: thin double #000000; float:left; width:900px; background-color:lightgoldenrodyellow;">
						
							<div class="pad2">
								<h2 class="pad_bot1 pad_top1" style="height: 51px">Contact Us</h2>
								
									<div>
						
                                        <div class="textbox-encloser" style="height: 51px"> 
                                            <span>Your Name:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtname" runat="server" Width="242px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        <div class="controls-clear"></div>
                                        <div class="textbox-encloser" style="height: 51px"> 
                                            <span>Your Email:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtmail" runat="server" Height="16px" Width="243px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Email" ControlToValidate="txtmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                             </div>
                                        <div class="controls-clear"></div>
										<div class="textbox-encloser" style="height: 52px"> 
                                            <span>Your Message:</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Width="239px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter message" ControlToValidate="txtmsg" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
										<div class="controls-clear" style="height: 23px"></div>
										<br />
										<span>&nbsp;</span>
                                        <div class="button-submit" style="height: 65px; width: 896px">
                <asp:Button ID="btnSend" runat="server" Text="Send"  CssClass="button" OnClick="btnSend_Click" Height="39px" Width="80px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnCancel" runat="server" Text="Cancel"  CssClass="button"  OnClick="btnCancel_Click" Height="38px" Width="101px"/>
            </div>
										<%--<a href="#" class="button" onClick="document.getElementById('ContactForm').reset()">Clear</a>
										<a href="#" class="button" onClick="document.getElementById('ContactForm').submit()">Send</a>--%>
									</div>
								
							</div>
					</div>
					<div class="wrapper">
						
							<div class="pad1">
								<h3>&nbsp;</h3>
                                <h3>&nbsp;</h3>
                                <h3>Our Contacts</h3>
								<div class="address">
                                     Miss Rinku <br />
                                    Neetu Sharma<br />
                                    Harjot Kaur<br />
                                   
                                    <br />
                                    SEBIZ FINISHING SCHOOL ,(MOHALI)<br/>
									<span>
										Telephone: 9876050427,9646867420 <br/>
										E-mail:
									<a href="mailto:">rinkudhiman33@gmail.com<br />&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp jollyneetu49@gmail.com</a>
									</span><br/>
										
								
							</div>
					</div>
			</div>
		</div>
     </form>
</asp:Content>

