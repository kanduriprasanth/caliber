<%@ Page Language="vb" AutoEventWireup="false" Codebehind="IPAddressReg.aspx.vb" Inherits="Admin.IPAddressReg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
  <head>
    <title>IPAddressReg</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
	<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">
	<script language="javascript">
		//<!--
		function fnOnlyNumericals(){
			var KC = window.event.keyCode
			if(KC<48 || KC>57){
			window.event.cancelBubble = true;	
			return(false);
			}
		}
		//-->
		</script>
	</HEAD>
	
	<body MS_POSITIONING="GridLayout">
	
		<form id="f1" name="f1" method="post" runat="server">
		<asp:ValidationSummary id="ValidationSummary2" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
		
		<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="550" align="center" border="0">
		<!-- MAIN HEADER -->
		<TR><TD class="MainHead">Client IP Address</TD></TR>
		<TR><TD style="PADDING-BOTTOM:0px">
		
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR><TD class="SubHead">New Client IP Address Registration</TD></TR>
							<TR>
								<TD class="MainTD">
									<asp:Label Runat="server" id="Label1" style="PADDING-LEFT:5px" Width="150">New Client IP Address</asp:Label>
									<asp:textbox Runat="server" ID="IP1" CssClass="TxtCls" Width="40" MaxLength=3 onKeyPress="return fnOnlyNumericals()" onKeydown="if(event.keyCode==13){event.keyCode=9}"></asp:textbox> <B>.</B>
									<asp:textbox Runat="server" ID="IP2" CssClass="TxtCls" Width="40" MaxLength=3 onKeyPress="return fnOnlyNumericals()" onKeydown="if(event.keyCode==13){event.keyCode=9}"></asp:textbox> <B>.</B>
									<asp:textbox Runat="server" ID="IP3" CssClass="TxtCls" Width="40" MaxLength=3 onKeyPress="return fnOnlyNumericals()" onKeydown="if(event.keyCode==13){event.keyCode=9}"></asp:textbox> <B>.</B>
									<asp:textbox Runat="server" ID="IP4" CssClass="TxtCls" Width="40" MaxLength=3 onKeyPress="return fnOnlyNumericals()" onKeydown="if(event.keyCode==13){event.keyCode=9}"></asp:textbox>
																		
									<asp:RequiredFieldValidator id="Requiredfieldvalidator1" runat="server" Display="Dynamic" ErrorMessage="Enter IP Address" ControlToValidate="IP1">*</asp:RequiredFieldValidator>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator2" runat="server" Display="Dynamic" ErrorMessage="Enter IP Address" ControlToValidate="IP2">*</asp:RequiredFieldValidator>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator3" runat="server" Display="Dynamic" ErrorMessage="Enter IP Address" ControlToValidate="IP3">*</asp:RequiredFieldValidator>
									<asp:RequiredFieldValidator id="Requiredfieldvalidator4" runat="server" Display="Dynamic" ErrorMessage="Enter IP Address" ControlToValidate="IP4">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
						</TABLE>
			
			
			</TD></TR>			
			<!-- MAIN FOOTER -->
			<TR><TD class="MainFoot">
				<asp:button id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'" onmouseout="this.className='ButCls'" Width=60></asp:button>
				<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'" type="reset" value="Reset" style="width:60px;">
			</TD></TR>
			
			<TR><TD><br>
				<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
				<TR><TD class="SubHead" colspan=3>Existing Clients</TD></TR>
				<TR><TD>
						<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0" runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging=True PagerStyle-Mode=NumericPages PageSize=15 PagerStyle-CssClass=PagerTD PagerStyle-PageButtonCount=15 PagerStyle-HorizontalAlign=Center>
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
								<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Current Status">
									<ItemTemplate>
										<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Status") %>'>
										</asp:Label>
									</ItemTemplate>
								</asp:TemplateColumn>
							</Columns>
						</asp:DataGrid>
					</TD></TR>
					</TABLE>
				
			</TD></TR>
			</TABLE>
			
		</form>

  </body>
</html>
