<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SchuduleWrkItemAppList.aspx.vb" Inherits="TestEFormExecution.SchuduleWrkItemAppList" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AppList</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				   runat="server" id="Table1" EnableViewState="False"  Width="98%">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="CrTopTable">
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="6">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</asp:TableCell>
							</asp:TableRow>
							<asp:Tablerow CssClass="MainTD">
								<asp:TableCell CssClass="MainTD" ColumnSpan="6" Width="33%">
									<asp:LinkButton id="CRLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell  CssClass="HideRow" ColumnSpan="2" Width="33%">
									<asp:LinkButton id="MOLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="HideRow" ColumnSpan="2" Width="33%">
									<asp:LinkButton id="SCLb" Runat="server" Width="100%" Height="100%"></asp:LinkButton>
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
									<asp:TextBox ID="RecPerPageTxt"  MaxLength=3 Runat="server" Width="30px"   CssClass="TxtCls" AutoPostBack="False" onkeypress="return IsDigit1(event);">20</asp:TextBox>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Literal id="PgNoLtrl" Runat="server"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="PgNoTxt" Runat="server" Width="50px" MaxLength="5" CssClass="TxtCls" AutoPostBack="False" onkeypress="return IsDigit1(event);">1</asp:TextBox>
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
		
		<script language=javascript>
		    
            
            function IsDigit1(e)  ///Function To check Numeric values
            {
                if(e.shiftKey ==true)
                return false;
                var KeyIdentifierMap =
                {
                    End			: 35,
                    Home		: 36,
                    Left		: 37,
                    Right		: 39,
                    'U+00007F'	: 46		// Delete
                } 
                if ( !e )
                e = event ;

                var AvailableVal = window.event.srcElement.value.indexOf(".")
                var iCode = ( e.keyCode || e.charCode );

                if((iCode == 46) && (AvailableVal != -1))
                return false;
                if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

                if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                    iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
                if(iCode ==39 ) return false;
                return (
                    ( iCode >= 48 && iCode <= 57 )		// Numbers
                    || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
                    || iCode == 8						// Backspace
                    || iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
			    
            
                
            }
        
        
   
		</script>
	</body>
</HTML>
