<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanClosureList.aspx.vb" Inherits="PrsWorkFlow.PlanClosureList" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl3.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		 <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				runat="server" id="Table1" EnableViewState="False">
				<ASP:TABLEROW Height="20" CssClass="SubHead">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:Label id="MainTitleLtrl" Runat="server"></ASP:Label>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LabeL id="SubTitleLtrl" runat="server"></ASP:LabeL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW CssClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px" onkeypress="return IsDigit1(event);">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5" onkeypress="return IsDigit1(event);">1</ASP:TEXTBOX>&nbsp;&nbsp;&nbsp;&nbsp;
										<ASP:Button id="GoBtn" Runat="server" CssClass="ButCls" Text="Display" Visible="TRUE"></ASP:Button>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:TABLE id="DevCtrlTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table>
		</form>
		
		<script language=javascript>
		
		    function RasiSelAlert(IssueLogId,IssueTyepId,RowCnt)
		    {    
              UserStatusvalue(1,RowCnt)
		    }
    		
		   
            function UserStatusvalue(ReturnVal,Rowcnt)
            {
              window.navigate(document.getElementById("UrlValTXt_" +Rowcnt ).value)
            }

        </script>
		    
            
            
	</body>
</HTML>
