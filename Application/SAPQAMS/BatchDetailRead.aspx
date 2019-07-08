<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatchDetailRead.aspx.cs" Inherits="SAPQAMS.BatchDetailRead" %>

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
							cellspacing="1" width="100%">
					<ASP:TableRow ID ="MatNoRw" CssClass ="MainTd">
					         <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Enter Material Number
		                     </asp:TableCell>
							<ASP:TableCell>
							           <asp:TextBox ID ="MatNo"  Text ="1449" runat="server" />
							 </ASP:TableCell>
					</ASP:TableRow>
					<ASP:TableRow ID ="BatNoRw" CssClass ="MainTd">
							 <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Enter Batch Number
		                     </asp:TableCell>
							 <ASP:TableCell>
                                        <asp:TextBox ID ="BatNo" Text= "0000000414" runat="server" />
                            </ASP:TableCell>
                     </ASP:TableRow>
					<ASP:TableRow ID ="PltNoRw" CssClass ="MainTd">
					<asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Enter Plant Number
		                     </asp:TableCell>
                            <ASP:TableCell>
                                        <asp:TextBox ID ="Plant" Text ="1000" runat="server" />
                                        <asp:Button ID="Get" runat="server" Text="Get From SAP" OnClick="Get_Click"  />
							</ASP:TableCell>
					</ASP:TableRow>
					<ASP:TableRow>
                            <ASP:TableCell>
                                  <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
							</ASP:TABLE>    
							</ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow>
                            <ASP:TableCell>
                                      <asp:Button ID="BatchStauts" runat ="server" Text="Get Batch Status" CssClass ="HideRow" OnClick="BatchStauts_Click" />                              
                                      <asp:Button ID="IssueRaise" runat ="server" Text="Issue Raise" CssClass ="HideRow" OnClick="IssueRaise_Click" />                              
                                      <asp:Button ID="FinalStatus" runat ="server" Text="Final Status" CssClass ="HideRow" OnClick="FinalStatus_Click" />                              
							</ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow >
                            <ASP:TableCell CssClass ="HideRow" ID= UpdateTD>
                                    <asp:TextBox ID ="UPDATETxt" Text ="Updated Successfully " runat="server" CssClass = "HideRow"/>
                                     <asp:TextBox ID ="UPDATEERRTxt" Text ="Unable To Connnect" runat="server" CssClass = "HideRow"/>
                                     <asp:TextBox ID ="ConnTxt" Text ="Connecting......." runat="server" CssClass = "HideRow"/>
                                     <asp:TextBox ID ="UpdatingTxt" Text ="Connecting......." runat="server" CssClass = "HideRow"/>
                            </ASP:TableCell>
					</ASP:TableRow>
					
	</ASP:TABLE>
	
	
   
    </div>
    </form>
</body>
</html>
