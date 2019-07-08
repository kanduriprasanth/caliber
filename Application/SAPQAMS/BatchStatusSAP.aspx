<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchStatusSAP.aspx.cs" Inherits="SAPQAMS.BatchStatusSAP" %>

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
							cellspacing="1" width="70%">
							<ASP:TableRow>
							        <ASP:TableCell>
							               <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							                     cellspacing="1" width="100%">
							                   </ASP:TABLE>
							        </ASP:TableCell>
							</ASP:TableRow>
							<ASP:TableRow>
							       <ASP:TableCell>
							        
							        <asp:Button ID="Restricted" runat ="server" Text="Restricted" OnClick="Restricted_Click" />
							           <asp:Button ID="UnRestricted" runat ="server" Text="Un-Restricted" OnClick="UnRestricted_Click" />
							            <asp:label runat="server" id="SAPStatus" visible="false"  ForeColor="Green"></asp:label>
							            <asp:label runat="server" id="SAPStatus1" visible="false"  ForeColor="red"></asp:label>
							       </ASP:TableCell>
							</ASP:TableRow>
	</ASP:TABLE>
	
	   
    </div>
    </form>
</body>
</html>
