<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RIList.aspx.vb" Inherits="Dossier.RIList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>RIList</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../TRIMS.css">
     <script type="text/javascript">
         $(document).ready(function () {
             $("#CRLb").attr("href", "javascript:__doPostBack('CRLb','')");
             $("#MOLb").attr("href", "javascript:__doPostBack('MOLb','')");
         });
    </script>
</head>
<body>
    <form autocomplete="off" id="Form1" method="post" runat="server">
   	<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center" cssclass="MainTable"
				 runat="server" id="Table1" EnableViewState=false >
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="CrTopTable" EnableViewState=False >
						<asp:TableRow>
					<asp:TableCell CSSClass="SubHead" ColumnSpan=6>
						<asp:Literal id="SubTitleLtrl" runat="server" ></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				           <asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<asp:Tablerow>
								<asp:TableCell CssClass="MainTD" ColumnSpan="6">
									<asp:LinkButton id="CRLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="HideRow">
									<asp:LinkButton id="MOLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								</asp:Tablerow>
									<asp:Tablerow>
									<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="MaxRecCntLtrl" Runat="server">0</asp:Literal>
								</asp:TableCell>
									<asp:TableCell CssClass="MainTD">
									<asp:Literal id="RecPerPageLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="RecPerPageTxt" Runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False">10</asp:TextBox>
								</asp:TableCell>
								
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="PgNoLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" CssClass="TxtCls" AutoPostBack="False">1</asp:TextBox>
								</asp:TableCell>
							
							</asp:Tablerow>
						
							<asp:TableRow>
															<asp:TableCell ColumnSpan="6">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="DisTable"></asp:Table>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
    </form>
</body>
</html>
