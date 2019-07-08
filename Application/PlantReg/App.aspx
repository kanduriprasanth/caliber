<%@ Page Language="vb" AutoEventWireup="false" Codebehind="App.aspx.vb" Inherits="PlantReg.App" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>App</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
<!--
 RequestPrefix='<%=me.ClientID%>'

//-->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table3" runat="server" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"  EnableViewState="False">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AduitTD" ColumnSpan="2">
									<asp:Table ID="Atab" cssclass="MainTD" Runat="server" width="100%" cellpadding="0" cellspacing="0"
										HorizontalAlign="center" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-BOTTOM:0px;PADDING-TOP:0px">
										<asp:TableRow>
											<asp:TableCell>
												<asp:Table ID="DataTab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
										<asp:TableRow ID="DataTab2Tr" Runat="server" CssClass="HideRow">
											<asp:TableCell>
												<asp:Table ID="DataTab2" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
										<asp:TableRow>
											<asp:TableCell>
												<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
										<asp:TableRow>
											<asp:TableCell>
												<asp:Table ID="AppStsTab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
									</asp:Table>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" id="DecisionTd" Runat="server">
									<asp:Literal Runat="server" ID="DecisionLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:RadioButtonList id="Approve" runat="server" RepeatDirection="Horizontal" CellPadding="0" class="RBList"
										CellSpacing="0" Height="18px"></asp:RadioButtonList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="RemarksTd" Runat="server">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R" ></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="true"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButOSelCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" id="ValidatorsTd" Runat="server">
									<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 344px"
										runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table></form>
	</body>
	

</HTML>
