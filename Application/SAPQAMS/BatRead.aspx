<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BatRead.aspx.cs" Inherits="SAPQAMS.BatRead" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Read Batch Status</title>
    <LINK href="../TRIMS.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
     <div align="left"><asp:HyperLink ID="HyperLink4" runat=server Text="Back To The List" NavigateUrl= "~/SAPQAMS/index.aspx" /></div>
    <div>
     <ASP:TABLE id="Table" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="50%">
							
					<ASP:TableRow ID ="MatNoRw" CssClass ="MainTd">
					         <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Material Number
		                     </asp:TableCell>
							<ASP:TableCell>
							           <asp:TextBox ID ="MatNo"  Text ="1449" runat="server" CssClass ="TxtCls"/>
							 </ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow ID ="BatNoRw" CssClass ="MainTd">
							 <asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Batch Number
		                     </asp:TableCell>
							 <ASP:TableCell>
                                        <asp:TextBox ID ="BatNo" Text= "0000000414" runat="server" CssClass ="TxtCls"/>
                            </ASP:TableCell>
                     </ASP:TableRow>
      
                    <ASP:TableRow ID ="SAPUserIDRW" CssClass ="MainTd">
					<asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                               SAP USER ID
		                     </asp:TableCell>
                            <ASP:TableCell>
                                        <asp:TextBox ID ="SAPUserTXT" Text ="SAPUSER" runat="server" CssClass ="TxtCls" />
                                        
							</ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow ID ="PltNoRw" CssClass ="MainTd">
					<asp:TableCell CssClass="MainTd"  ColumnSpan="2">
		                                Plant Number
		                     </asp:TableCell>
                            <ASP:TableCell>
                                        <asp:TextBox ID ="Plant" Text ="1000" runat="server"  CssClass ="TxtCls"/>
                                        <asp:Button ID="Get" runat="server" Text="Get From SAP" OnClick="Get_Click" CssClass ="ButexCls"/>
							</ASP:TableCell>
					</ASP:TableRow>
					
					
					<ASP:TableRow CssClass ="HideRow" ID="DisTableTr">
                            <ASP:TableCell>
                                  <ASP:TABLE id="DisTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
							</ASP:TABLE>    
							</ASP:TableCell>
					</ASP:TableRow>
					
					<ASP:TableRow ID="BUTTTR" runat ="server"  CssClass ="HideRow">
                            <ASP:TableCell>
                                      <asp:Button ID="BatchStauts" runat ="server" Text="Get Batch Status" CssClass ="HideRow" OnClick="BatchStauts_Click" />  &nbsp&nbsp&nbsp&nbsp                            
                                      <asp:Button ID="IssueRaise" runat ="server" Text="Issue Raise" CssClass ="HideRow" OnClick="IssueRaise_Click" />                               &nbsp&nbsp&nbsp&nbsp                            
                                      <asp:Button ID="FinalStatus" runat ="server" Text="Final Status" CssClass ="HideRow" OnClick="FinalStatus_Click" />                               &nbsp&nbsp&nbsp&nbsp                            
                                      <asp:Label id ="sucesslbl" runat="server" Text = "Updated Sucessfully" ForeColor="green" CssClass ="HideRow" />
							</ASP:TableCell>
					</ASP:TableRow>
					

					
					<ASP:TableRow runat ="Server" ID ="ErroMsgTR" CssClass ="HideRow">
					    <ASP:TableCell runat ="server" CssClass ="MainTd">
					         <ASP:TABLE id="ERRTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
							
							</ASP:TABLE>   
					     <ASP:TABLE id="ButtonTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">   
									<ASP:TableRow>
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
