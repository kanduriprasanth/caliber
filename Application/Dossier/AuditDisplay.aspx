<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AuditDisplay.aspx.vb"
    Inherits="Dossier.AuditDisplay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>AuditDisplay</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
     <script type="text/javascript" src="../JScript/Common2.js"></script>
      <link rel="stylesheet" href="../TRIMS.css">
</head>
<body>
    <form id="Form1" method="post" runat="server" >
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center" cssclass="MainTable"
				Width="98%" runat="server" id="Table1">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table ID="Table2" runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center">
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTd" Width="20%" valign="top" ID="ATLinksTD">
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
</html>
