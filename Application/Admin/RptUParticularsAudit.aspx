<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptUParticularsAudit.aspx.vb" Inherits="Admin.RptUParticularsAudit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RptUParticularsAudit</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<link rel="stylesheet" href="CUSTOM.CSS" type="text/css">--%>
        <script language="javascript" src='../JScript/Common.js'></script>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language="javascript">
		function chk()
		{
			var cnt=0;
			var len=document.all("ChkDiff").length;
			var i;
			for(i=0;i<len;i++)
			{
				if(document.all("ChkDiff")(i).checked)
					cnt++;
				if(cnt==3)
				{
					alert('Select Atmost Two Versions');
					document.getElementById('Form1').reset();
					return
				}
			}
		}

		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="600" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Audit Trail</TD>
				</TR>
				<TR>
					<TD valign="top">
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="SubHead" colspan="2">User Particulars Revision Audit Trail</TD>
							</TR>
							<tr>
								<td class="MainTD" style='WIDTH:80px'>User Name</td>
								<td class="MainTD"><b>:</b>
									<asp:Label ID="lblUserName" Runat="server"></asp:Label></td>
							</tr>
							<tr>
								<td class="MainTD" style='WIDTH:80px'>Role</td>
								<td class="MainTD"><b>:</b>
									<asp:Label ID="lblRoleName" Runat="server"></asp:Label></td>
							</tr>
							<tr>
								<td class="MainTD" style='WIDTH:80px'>Category</td>
								<td class="MainTD" style='WIDTH:90%'><b>:</b>
									<asp:Label ID="lblCategoryName" Runat="server"></asp:Label></td>
							</tr>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP:0px" valign="top">
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD STYLE="BACKGROUND-COLOR:gray" valign="top">
									<DIV valign="top" STYLE="DISPLAY:block;OVERFLOW:scroll;HEIGHT:300px">
										<asp:DataGrid CssClass="SubTable" id="Datagrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
											runat="server" Width="100%" AutoGenerateColumns="False">
											<Columns>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40"
													ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Particulars Set By">
													<ItemTemplate>
														<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Particulars Set On"
													ItemStyle-Width="140">
													<ItemTemplate>
														<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Version No."
													ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label8" runat="server" Text='<%# GetVersionNo() %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Select*" ItemStyle-Width="80"
													ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label9" runat="server" Text='<%# GetCheckbox(DataBinder.Eval(Container, "DataItem.UserHistID")) %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
										</asp:DataGrid>
									</DIV>
								</TD>
							</TR>
						</TABLE>
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD">
									<SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> Select <B>1</B> Version To 
										View The Settings or Any <B>2</B> Versions For Comparison.</SPAN>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Show Details" CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" Width="90"></asp:button>&nbsp; <input onclick="window.history.back()" class="ButCls" onmouseover="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" type="button" value="Back" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
	<script language=javascript>
	//context menu		
//contextMenu


if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}


//Disable right click

//var message="";

/////////////////////////////////////
//for disabling autocomplete


//-->
</script>
</HTML>
