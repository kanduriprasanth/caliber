<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SAPTroubleshootpop.aspx.vb" Inherits="SAPBATSTS.SAPTroubleshootpop" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Read Batch Status</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <ASP:TABLE id="Table" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
					
					
					<ASP:TableRow runat ="Server" ID ="ErroMsgTR" CssClass ="MainTD">
					    <ASP:TableCell ID="TableCell1" runat ="server" CssClass ="MainTd">
					         <ASP:TABLE id="ERRTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%"> 
							<ASP:TableRow CssClass ="MainTd">
							<ASP:TableCell ID ="SucesTR" CssClass ="HideRow"> 
							 <asp:Label ID="ERPStatus" runat="server" Width="200px" AccessKey="C" CssClass="MainTd"
                                    BackColor="Transparent" ForeColor="green" Font-Bold="true" Text="Updated Sucessfully"></asp:Label>
							</ASP:TableCell>
							</ASP:TableRow>  
							
							</ASP:TABLE>   
					     <ASP:TABLE id="ButtonTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
									<ASP:TableRow>
									    <ASP:TableCell CssClass ="MainTd">
									         <asp:Button ID="ReTryBut" runat ="server" Text="Try Again" CssClass ="HideRow" />                              
                                             <asp:Button ID="TrouButton" runat ="server" Text="TroubleShoot" CssClass ="HideRow" />
                                             <asp:Button ID="Confirm" runat ="server" Text="Confirm" CssClass ="HideRow" />
									    </ASP:TableCell>
									</ASP:TableRow>				
							</ASP:TABLE>  
					    </ASP:TableCell>
					</ASP:TableRow>
					
	</ASP:TABLE>
	
	
   
    </div>
    </form>
</body>
</html>