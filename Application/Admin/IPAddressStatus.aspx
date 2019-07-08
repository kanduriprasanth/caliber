<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IPAddressStatus.aspx.vb" Inherits="Admin.IPAddressStatus" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>IPAddressStatus</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
	<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
	<SCRIPT language=javascript  src='../JScript/Common.js'></SCRIPT>	
	</HEAD>
	
	<BODY MS_POSITIONING="GridLayout" onblur="fnRestoreESign()" onfocus="fnRestoreESign()" onbeforeunload="fnCloseObject();fnKillESign()">
	
		<FORM id="f1" name="f1" method="post" runat="server" onsubmit="return fnCallESign();">
		<asp:ValidationSummary id="ValidationSummary2" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		
		<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="550" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead">Client Machine Status Setting</TD></TR>
		<TR><TD style="PADDING-BOTTOM:0px">
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead">Active Clients</TD></TR>
				<TR><TD>
						<asp:DataGrid CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False">
						<Columns>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
								<ItemTemplate>
									<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="IP Address">
								<ItemTemplate>
									<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.IPAddress") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>								
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Register By">
								<ItemTemplate>
									<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Register On">
								<ItemTemplate>
									<asp:Label id="Label2" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Change Status*" ItemStyle-Width="85" ItemStyle-HorizontalAlign=Center>
								<ItemTemplate>
									<asp:Label id="Label5" runat="server" Text='<%# GetRadioButton(DataBinder.Eval(Container, "DataItem.IPAddressID"),1) %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
						</Columns>
						</asp:DataGrid>
				</TD></TR>
				</TABLE>
				
		</TD></TR>
		
		<TR><TD>
		
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead">Deactivated Clients</TD></TR>
				<TR><TD>
						<asp:DataGrid CssClass="SubTable" id="Datagrid2" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False">
						<Columns>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
								<ItemTemplate>
									<asp:Label id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="IP Address">
								<ItemTemplate>
									<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.IPAddress") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>								
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Register By">
								<ItemTemplate>
									<asp:Label id="Label8" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Register On">
								<ItemTemplate>
									<asp:Label id="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
							<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Change Status*" ItemStyle-Width="85" ItemStyle-HorizontalAlign=Center>
								<ItemTemplate>
									<asp:Label id="Label10" runat="server" Text='<%# GetRadioButton(DataBinder.Eval(Container, "DataItem.IPAddressID"),2) %>'>
									</asp:Label>
								</ItemTemplate>
							</asp:TemplateColumn>
						</Columns>
						</asp:DataGrid>
				</TD></TR>
				</TABLE>
		</TD></TR>
				
		<TR><TD style="Padding-top:0px;">
			<TABLE style="" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0" style="border-style:groove;border-width:2px;">
				<TR><TD class="MainTD">
					<ASP:LABEL Runat="server" id="Label11" style="PADDING-LEFT:1px" Width="90">Reason
					<ASP:REQUIREDFIELDVALIDATOR id="Requiredfieldvalidator12" runat="server" Display="Dynamic" ErrorMessage="Enter Reason" ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
					</ASP:LABEL>
				</TD>
				<TD class="MainTD">
					<ASP:TEXTBOX ID=Reasons CssClass=TxtCls TextMode=MultiLine Runat=server Width=380></ASP:TEXTBOX>
					<INPUT type=button onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reason'>	
				</TD></TR>
			</TABLE>
			<BR>
			<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
					<TR><TD class=MainTD>
					<SPAN><FONT color=red size=2><B>*</FONT>Note:</B> For changing Client Machine Status, Click The Corresponding Radio Button, Select/Enter Reason and Click Submit.</SPAN> 
					</TD></TR>
			</TABLE>
		</TD></TR>
		
				
		<!-- MAIN FOOTER -->
		<TR><TD class="MainFoot">
		<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></asp:button>
		<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="width:60px;">
		</TD></TR>
		</TABLE>
		<UC1:ESIGNWEBUC id=ESignWebUC1 runat="server"></UC1:ESIGNWEBUC>	
</FORM>

<SCRIPT language="javascript">
<!--
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
	
	/* Esing Activity and button name setting */
	window.onload = new Function("fnSetEsingActivity('Change Client IP Address','btnSubmit')")
//-->
</SCRIPT>
</BODY>
</html>
