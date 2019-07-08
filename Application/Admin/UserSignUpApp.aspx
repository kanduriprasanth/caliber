<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserSignUpApp.aspx.vb" Inherits="Admin.UserSignUpApp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserSignUpApp</title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
        <script language="javascript" src='../JScript/Common3.js'></script>
<script language="javascript" src="../JScript/jquery.min.js"></script>
		
		<STYLE>.hide { DISPLAY: none; BACKGROUND-COLOR: #cccccc }
	.show { DISPLAY: block; BACKGROUND-COLOR: #cccccc }
	INPUT.down { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/down.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	INPUT.up { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 50%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/up.jpg); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 16px; HEIGHT: 16px; BORDER-RIGHT-WIDTH: 1px }
	.chkCls { BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; WIDTH: 18px; BORDER-BOTTOM: 2px groove; HEIGHT: 18px; BACKGROUND-COLOR: orange }
	.MainTDOver { PADDING-LEFT: 2px; FONT-SIZE: 9pt; FONT-FAMILY: Arial; BACKGROUND-COLOR: #ffdab9 }
		</STYLE>
		<SCRIPT language="javascript">
		    function check(src, args) {
		        var Flag = TestchkValid();
		        if (Flag == false) {
		            args.IsValid = false;
		            Page_IsValid = false;
		        }
		    }
		</SCRIPT>

	</HEAD>
	<body MS_POSITIONING="GridLayout" onblur="fnRestoreESign()" onfocus="fnRestoreESign()"
		onbeforeunload="fnKillESign()">
		<form id="f1" name="f1" method="post" runat="server" onsubmit="return fnCallESign();">
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" cellSpacing="0" cellPadding="0" width="600" align="center" border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD valign="top">
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="6"><ASP:LABEL Runat="server" ID='lblTitle'></ASP:LABEL></TD>
							</TR>
							<TR>
								<TD valign="top">
									<asp:DataGrid CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User Name">
												<ItemTemplate>
												<ASP:HYPERLINK id="Hyperlink2" Runat=server NavigateUrl='<%# "UserParticularsRD.aspx?LoginID=" &amp; DataBinder.Eval(Container, "DataItem.LoginID")%>' text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'>
												</ASP:HYPERLINK>
													
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Category"
												ItemStyle-Width="80">
												<ItemTemplate>
													<asp:Label id="Label13" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.CategoryName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Role">
												<ItemTemplate>
													<asp:Label id="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RoleName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Activate"
												ItemStyle-Width="50">
												<ItemTemplate>
													<asp:Label id="Label1" runat="server">
														<%# GetActiveList(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Hold Back"
												ItemStyle-Width="60">
												<ItemTemplate>
													<asp:Label id="Label2" runat="server">
														<%# GetHBackList(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:DataGrid>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></asp:button>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
			</TABLE>
			<asp:table id="tab1" CssClass="HideRow" Runat="server">
				<asp:TableRow>
					<asp:TableCell Runat="server" ID="CVD" CssClass="HideRow"  ForeColor=#ffffff></asp:TableCell>
				</asp:TableRow>
			</asp:table>
			<UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC>
		</form>
		<SCRIPT language="javascript">
<!--
		    function TestchkValid() {debugger
		        var aclflag = false;
		        var hblflag = false;

		        if ($("[id^='acl']:checked").length > 0) {
		            aclflag = true;
		        }
		        if ($("[id^='hbl']:checked").length > 0) {
		            hblflag = true;
		        }



		        if (!aclflag && !hblflag) {
		            return false;
		        }

		    }

		    function fnStatusChange(LoginID, Count, Pos) {	//alert(Count)

		        var Flag = false

		        Flag = window.event.srcElement.checked
		        if (Flag) {
		            var rnd = Math.round(Math.random() * 1000000)
		            var cReturnValue = window.showModalDialog('UserAccAthenticSample.aspx?r=' + rnd, 'thisTitle', 'dialogheight=12;dialogwidth=23;help=0;status=0;scroll=0;edge=raised;')

		            if ((cReturnValue).length > 0) {
		                $("#RSN" + LoginID).val(cReturnValue);
		                return false;
		            }
		        }


		        window.event.srcElement.checked = false;
		        return false;

		    }

		    /* Esing Activity and button name setting */
		    window.onload = new Function("fnSetEsingActivity('New User Account Activation','btnSubmit')")

		    //context menu		
		    //contextMenu


		    //Disable right click

		    //var message="";

//-->
		</SCRIPT>
	</body>
</HTML>
