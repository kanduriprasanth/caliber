<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Config.aspx.vb" Inherits="IssueTypeTemplate.Config" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Config</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<LINK href="../TRIMS.css" rel="stylesheet">
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
			<asp:table id="tt" runat="server"  Width="98%" cssclass="MainTable" HorizontalAlign="center"
				BorderWidth="3" CELLSPACING="0" CELLPADDING="0">
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
								<asp:TableCell width="30%"></asp:TableCell>
								<asp:TableCell width="20%"></asp:TableCell>
								<asp:TableCell width="20%"></asp:TableCell>
								<asp:TableCell width="30%"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="4">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ColumnSpan=3>
									<asp:TextBox id="CodeTxt" runat="server" CssClass="TxtCls" MaxLength="25" Width="100px" AccessKey="C" ></asp:TextBox>
								</asp:TableCell>
						 	 	</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CallEsignTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="RegistrationTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ChangeTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="StatusChgTD" runat="server"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="InitiationTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtCreatInit" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtModifyInit" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtStatusChangeInit" runat="server"></asp:checkbox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ApprovalTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtCreatAppr" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtModifyAppr" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="isEsignAtStatusChangeAppr" runat="server"></asp:checkbox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="NarTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="RNarTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="MNarTD" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="SNarTD" runat="server"></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="NARAtCreat" runat="server" Width="50px">
										<asp:ListItem Value="0">0</asp:ListItem>
										<asp:ListItem Value="1">1</asp:ListItem>
										<asp:ListItem Value="2">2</asp:ListItem>
										<asp:ListItem Value="3">3</asp:ListItem>
										<asp:ListItem Value="4">4</asp:ListItem>
										<asp:ListItem Value="5">5</asp:ListItem>
										<asp:ListItem Value="6">6</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="NARAtModify" runat="server" Width="50px">
										<asp:ListItem Value="0">0</asp:ListItem>
										<asp:ListItem Value="1">1</asp:ListItem>
										<asp:ListItem Value="2">2</asp:ListItem>
										<asp:ListItem Value="3">3</asp:ListItem>
										<asp:ListItem Value="4">4</asp:ListItem>
										<asp:ListItem Value="5">5</asp:ListItem>
										<asp:ListItem Value="6">6</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="NARAtStatusChange" runat="server" Width="50px">
										<asp:ListItem Value="0">0</asp:ListItem>
										<asp:ListItem Value="1">1</asp:ListItem>
										<asp:ListItem Value="2">2</asp:ListItem>
										<asp:ListItem Value="3">3</asp:ListItem>
										<asp:ListItem Value="4">4</asp:ListItem>
										<asp:ListItem Value="5">5</asp:ListItem>
										<asp:ListItem Value="6">6</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
							</asp:TableRow>
							 
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="MsgTrfTd" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" >
									<asp:checkbox id="Alert" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="IMail" runat="server"></asp:checkbox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:checkbox id="OMail" runat="server"></asp:checkbox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="UsrGrpTd" runat="server"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="CrGrpId" runat="server" Width="50px">
										<asp:ListItem Value="0">NA</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="MoGrpId" runat="server" Width="50px">
										<asp:ListItem Value="0">NA</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:dropdownlist id="ScGrpId" runat="server" Width="50px">
										<asp:ListItem Value="0">NA</asp:ListItem>
									</asp:dropdownlist>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="RemarksRow" Runat="server">
								<asp:TableCell CssClass="MainTD" ColumnSpan="1">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="4" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CssClass="MainFoot">
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
			</asp:table></form>
	</body>
</HTML>
