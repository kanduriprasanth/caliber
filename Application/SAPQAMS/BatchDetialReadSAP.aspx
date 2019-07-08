<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchDetialReadSAP.aspx.cs" Inherits="SAPQAMS.BatchDetialReadSAP" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>Batch Detials</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <ASP:TABLE id="Table" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="70%">
					<ASP:TableRow ID ="MatNoRw" CssClass ="MainTd">
					         <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Material Number
		                     </asp:TableCell>
							<ASP:TableCell>
							           <asp:TextBox ID ="MatNo"  Text ="1449" runat="server" />
							 </ASP:TableCell>
					</ASP:TableRow>
					<ASP:TableRow ID ="BatNoRw" CssClass ="MainTd">
							 <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Batch Number
		                     </asp:TableCell>
							 <ASP:TableCell>
                                        <asp:TextBox ID ="BatNo" Text= "0000000414" runat="server" />
                            </ASP:TableCell>
                     </ASP:TableRow>
					<ASP:TableRow ID ="PltNoRw" CssClass ="MainTd">
					<asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Plant Number
		                     </asp:TableCell>
                            <ASP:TableCell>
                                        <asp:TextBox ID ="Plant" Text ="1000" runat="server" />
                                       <asp:Button ID="Get" runat="server" Text="Get From SAP" OnClick="Get_Click"  />
							</ASP:TableCell>
					</ASP:TableRow>
					<ASP:TableRow>
                            <ASP:TableCell ColumnSpan = 3>
                                  <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"  
							cellspacing="1" width="100%">   
							</ASP:TABLE>    
							</ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow>
                            <ASP:TableCell >
                                      <asp:Button ID="BatchStauts" runat ="server" Text="Get Batch Status" CssClass ="HideRow" OnClick="BatchStauts_Click" />    
							</ASP:TableCell>
					</ASP:TableRow>
					
	</ASP:TABLE>
	 
	                           
    </div>
    </form>
</body>
</html>
