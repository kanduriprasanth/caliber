<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RITrf.aspx.vb" Inherits="InstCategory.RITrf" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RITrf</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
			<!--
			RequestPrefix='<%=me.ClientID%>'
			function fnSetToReasons(argValue){
  
   
		document.getElementById('RemarksTxt').value = argValue
	}

			//-->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table3" runat="server" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"   EnableViewState="False">
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
								<asp:TableCell CssClass="MainTD" id="FromUserCpTd" Runat="server" Width="154px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" id="FromUserValTd" Runat="server"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" id="UserTd" Runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:DropDownList Runat="server" ID="TrfUser"></asp:DropDownList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="RemarksTd" Runat="server">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
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
						<asp:Table runat="server"  width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell >
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" ></asp:Button>
								</asp:TableCell>
								<asp:TableCell  HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" Height="20px" onMouseOver="this.className='ButSelOCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" ID="ValidSummaryTD" Runat="server">
									<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 344px"
										runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
