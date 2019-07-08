<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonStatus.aspx.cs" Inherits="SAPQAMS.ButtonStatus" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Batch Status</title>
     <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ASP:TABLE id="MainTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
							<ASP:TableRow ID ="StatusTR">
							        <ASP:TableCell>
							               <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							                     cellspacing="1" width="100%">
							                   </ASP:TABLE>
							        </ASP:TableCell>
							</ASP:TableRow>
							<ASP:TableRow ID= "ButtonTR" CssClass ="MainTD">
							       <ASP:TableCell>
							           <asp:Button ID="Restricted" runat ="server" CSSClass = "ButexCls" Text="Un-Restricted" OnClick="Restricted_Click" />
							           <asp:Button ID="UnRestricted"  CSSClass = "ButexCls" runat ="server" Text="Restricted" OnClick="UnRestricted_Click"  />
							           <asp:Button ID="Back" runat ="server"  CSSClass = "ButexCls" Text="Back" OnClick="Back_Click" />
							           <asp:Label id ="sucesslbl" runat="server" Text = "Updated Sucessfully" ForeColor="green" CssClass ="HideRow" />
							       </ASP:TableCell>
							</ASP:TableRow>
							
							<ASP:TableRow runat ="Server" ID ="ErroMsgTR" CssClass ="HideRow">
					    <ASP:TableCell ID="TableCell1" runat ="server" CssClass ="MainTd">
					         <ASP:TABLE id="ERRTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
							
							</ASP:TABLE>   
					     <ASP:TABLE id="ButtonTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
									<ASP:TableRow CssClass ="MainTD">
									    <ASP:TableCell>
									         <asp:Button ID="ReTryBut" runat ="server" Text="Try Again" CssClass ="ButexCls" OnClick="ReTryBut_Click" />                              
                                             <asp:Button ID="TrouButton" runat ="server" Text="TroubleShoot" CssClass ="ButexCls" OnClick="TrouButton_Click" />
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
