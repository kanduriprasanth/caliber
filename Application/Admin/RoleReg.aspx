<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RoleReg.aspx.vb" Inherits="Admin.Role" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RoleReg</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="f1" name="f1" method="post" runat="server"  >
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="600" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD class="MainTD" width="230">
									<asp:Label Runat="server" id="NRoleLbl" style="PADDING-LEFT:5px" Width="60"></asp:Label>
									<asp:textbox Runat="server" ID="NewRole" CssClass="TxtCls" Width="155" MaxLength="25" title='Enter New Role'></asp:textbox>
									<asp:RequiredFieldValidator id="NRoleErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="NewRole">*</asp:RequiredFieldValidator>
								</TD>
								<TD class="MainTD" width="100">
									<asp:Label Runat="server" id="LevelLbl" style="PADDING-LEFT:5px" Width="30"></asp:Label>
									<asp:textbox Runat="server" ID="Level" CssClass="TxtCls" Width="40" MaxLength="4" title='Should be between 1 and 99.9'></asp:textbox>
									<asp:RequiredFieldValidator id="LevelErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="Level">*</asp:RequiredFieldValidator>
									<asp:RangeValidator ID="LevelRangeVal" Runat="server" Display="Dynamic" 
										ControlToValidate="Level" MinimumValue="1" MaximumValue="99.9" Type="Double">*</asp:RangeValidator>
								</TD>
								<TD class="MainTD">
									<asp:Label Runat="server" id="CatLbl" style="PADDING-LEFT:5px" Width="60"></asp:Label>
									<asp:DropDownList Runat="server" ID="CategoryList" AutoPostBack="False" Width="170"></asp:DropDownList>
									<asp:RequiredFieldValidator id="CatErrMsg" runat="server" Display="Dynamic" 
										ControlToValidate="CategoryList">*</asp:RequiredFieldValidator>
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
				<TR>
					<TD><br>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead" colspan="3"><asp:Literal ID="ExstRoleLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD>
									<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="10" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD"  ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn  HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Category">
												<ItemTemplate>
													<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.CategoryName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Role">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RoleName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Level" ItemStyle-Width="40">
												<ItemTemplate>
													<asp:Label id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.LevelRank") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Registered By">
												<ItemTemplate>
													<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</ASP:DATAGRID>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC>
		</form>
		<SCRIPT language="javascript">
<!--
	/* Esing Activity and button name setting */
	 
var formName = document.forms(0).name
document.body.attachEvent('onblur',fnRestoreESign)
document.body.attachEvent('onfocus',fnRestoreESign)
document.body.attachEvent('onbeforeunload',fnKillESign)
document.all(formName).attachEvent('onsubmit',fnCallESign)
 
 

	
	window.onload = new Function("fnSetEsingActivity('New Role Registration','btnSubmit')")
	//context menu	//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

 


//for disabling autocomplete
	
//-->
		</SCRIPT>
	</body>
</HTML>
