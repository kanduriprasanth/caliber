<%@ Page Language="C#" AutoEventWireup="true" Codebehind="DMSSourceConfig.aspx.cs"
	Inherits="DMSManagement.DMSSourceConfig" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
	<title>DMS Source Configuration</title>
	<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
	<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
	<meta name="vs_defaultClientScript" content="JavaScript">
	
	<link rel="stylesheet" href="../TRIMS.css">

	<script type='text/javascript' src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
	<form id="Form1" method="post" runat="server">
		<asp:Table ID="tt" CellPadding="0" CellSpacing="0" HorizontalAlign="center" CssClass="MainTable"
			runat="server">
			<asp:TableRow CssClass="MainHead">
				<asp:TableCell>
					<asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow>
				<asp:TableCell>
					<!-----------Base table------------->
					<asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
						HorizontalAlign="center" ID="Table1">
						<asp:TableRow CssClass="HideRow" Height="0">
							<asp:TableCell Width="40%"></asp:TableCell>
							<asp:TableCell></asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell CssClass="SubHead" ColumnSpan="2">
								<asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell Width="40%" CssClass="MainTD" Style="font-weight: bold;" ID="RepositoryTypeTd"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
								<asp:DropDownList ID="RepositoryTypeDdl" runat="server" CssClass="RBList" Width="200px"
									AutoPostBack="true" OnSelectedIndexChanged="RepositoryTypeDdl_SelectedIndexChanged">
								</asp:DropDownList>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell ID="DocRepTd" CssClass="MainTD" Style="font-weight: bold;"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
								<input type="button" onclick="FnENBSelLstPopUp()" class='RsnPUP' tabindex="5">
								<asp:Label ID="ENBUCodeLab" runat="server" Text=""></asp:Label>
								<asp:TextBox ID="ENBUCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
								<asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
								<asp:TextBox ID="ENBCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
								<asp:TextBox ID="SectionIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
								<asp:TextBox ID="SectionDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold;"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
								<asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="50" Width="200px"
									AccessKey="D" TabIndex="1"></asp:TextBox>
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>
					<!-----------End of Base table------------->
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow CssClass="MainFoot">
				<asp:TableCell>
					<asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
						ID="Table2" BorderWidth="0">
						<asp:TableRow CssClass="HideRow" Height="0">
							<asp:TableCell></asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell>
								<asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
									Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" OnClick="btnConfirm_Click">
								</asp:Button>
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow CssClass="HideRow" Height="0">
				<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
					<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
						ShowMessageBox="True"></asp:ValidationSummary>
				</asp:TableCell>
			</asp:TableRow>
		</asp:Table>
	</form>

	<script type='text/javascript'>
	function FnENBSelLstPopUp()
	{
	var pageURL ="EnotebookListPopUp.aspx"
	SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=75,left=75");
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
	}

	function GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)
	{
		document.getElementById("ENBUCodeTxt").value = ((ENBDesc=="") || (SecDesc=="")) ? "" : ENBDesc + " / " + SecDesc
		document.getElementById("ENBUCodeLab").innerHTML =  document.getElementById("ENBUCodeTxt").value
		document.getElementById("ENBIDTxt").value =ENBId
		document.getElementById("ENBCodeTxt").value =ENBAulId
		document.getElementById("SectionIdTxt").value =Secid
		document.getElementById("SectionDescTxt").value =SecDesc
	}

	
	</script>

</body>
</html>
