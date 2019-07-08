<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UserNotSignUp.aspx.vb" Inherits="Admin.UserNotSignUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD id="Head1">
		<title>Un-Signed User List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
        <script language="javascript" src='../JScript/Common3.js'></script>
		<script language="javascript" src="../CaliberCommonCtrls/Reports.js"></script>
		<STYLE>v\:* { BEHAVIOR: url(#default#VML) }
		</STYLE>
	</HEAD>
	<body>
		<form id="form1" runat="server">
			<asp:Table ID="tt" CssClass="MainTable" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
				 runat="server">
				<asp:TableRow Height="10">
					<asp:TableCell CssClass="MainHead" ColumnSpan="4">
						<asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table ID="SelRepsTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0"
							CellSpacing="1" HorizontalAlign="center" >
							<asp:TableRow>
								<asp:TableCell CssClass="SubHead" ColumnSpan="4">
									<asp:Literal ID="SubTitleLtrl" runat="server">User List</asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CssClass="MainTd" ColumnSpan="4">
						<asp:Table ID="table1" CellPadding="0" CellSpacing="1" BorderWidth="0" HorizontalAlign="center"
							Width="500" runat="server">
							<asp:TableRow>
								<asp:TableCell ColumnSpan="4" CssClass="MainTd">
									<%--     <input type=button onMouseOver="this.className='ButOCls'" Class='ButCls' accessKey="C" onMouseOut="this.className='ButCls'" value="Back" onclick="JavaScript:window.history.back();" />--%>
								</asp:TableCell>
								<asp:TableCell ColumnSpan="1" CssClass="MainTd"></asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:Table>
		</form>
	</body>
</HTML>
