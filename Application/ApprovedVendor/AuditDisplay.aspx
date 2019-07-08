<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AuditDisplay.aspx.vb" Inherits="ApprovedVendor.AuditDisplay" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>AuditDisplay</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		
		<script type="text/javascript">
		    function OpenDocument(DocId) 
		    {
			    var yval = parseInt(screen.availHeight) - 100
			    var xval = screen.availWidth-500

			    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
			    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			    if (SpWinObj.opener == null) SpWinObj.opener = self;
			    SpWinObj.focus();
		    }
		     function fnOpenDocPopUp(BaseID){
		        var AvrId = BaseID
    	        var pageURL = "../AuditResponse/DocPopUP.aspx?AvrId="+AvrId+"&BID="
	            var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=100,left=100, right=100, bottom=100"
	            SpWinObj = window.open(pageURL,'SpecCodes',features)
	            if(SpWinObj.opener == null) SpWinObj.opener=self;
	            SpWinObj.focus();
		     }
		</script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server" >
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				  runat="server" id="Table1">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center">
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTd" Width="20%" valign="top">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
										HorizontalAlign="center" ID="ATLinksTab"  ></asp:Table>
								</asp:TableCell>
								<asp:TableCell CSSClass="MainTd" Width="80%"  valign="top">
									<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="0"
										HorizontalAlign="center" ID="ATDispTab">
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
													HorizontalAlign="Center"  ></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
									 
									 	<asp:TableRow>
											<asp:TableCell>
												<asp:Table ID="AppStsTab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
											<asp:TableRow ID="DataTab3Tr" Runat="server" CssClass="HideRow">
											<asp:TableCell>
												<asp:Table ID="DataTab3" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
													HorizontalAlign="Center"></asp:Table>
											</asp:TableCell>
										</asp:TableRow>
									</asp:Table>

								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
	</body>
</HTML>
