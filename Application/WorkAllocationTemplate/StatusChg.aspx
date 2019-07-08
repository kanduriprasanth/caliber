<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="StatusChg.aspx.vb" Inherits="WorkAllocationTemplate.StatusChg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>StatusChg</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	//-->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
				cssclass="MainTable"  Width="98%" runat="server" EnableViewState=False >
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
									<asp:TableCell  ColumnSpan="2" CssClass="MainTD"><asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
									HorizontalAlign="center"  ID="DataTab">
									</asp:Table>
							</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CurStatusTD" Runat=server>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="CurStatusValTD" Runat=server>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ChgStatusTD" Runat=server>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ChgStatusValTD" Runat=server>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainFoot">
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
								</asp:TableCell>
								<asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" AccessKey="V"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
