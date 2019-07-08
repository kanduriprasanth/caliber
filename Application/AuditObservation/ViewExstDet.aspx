<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ViewExstDet.aspx.vb" Inherits="AuditObservation.ViewExstDet" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Audit Finding's Status Details</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Audit Finding's Status Details</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow ID="TableRow1">
                            <asp:TableCell CssClass="MainTD">Audit Finding Closing Status
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" Width="550px">
                                <asp:DropDownList ID="TypeDDL" runat="server" AutoPostBack="true" Width="150px">
                                    <asp:ListItem Value="0">All</asp:ListItem>
                                    <asp:ListItem Value="1">Closed</asp:ListItem>
                                    <asp:ListItem Value="2">Rejected</asp:ListItem>
                                    <asp:ListItem Value="3">Pending</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <%-- Added by P Suresh for Search ---Start---%>
                        <asp:TableRow>
							<asp:TableCell CSSClass="MainTD" ColumnSpan="1">
								<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
							</asp:TableCell>
						    <asp:TableCell CssClass="MainTd" HorizontalAlign="Left" ColumnSpan="1">
							    <asp:button id="BtnDisplay" cssClass='ButCls' accessKey="C" runat="server" text="Display" 
							        CausesValidation="False"></asp:button>
						    </asp:TableCell>
                        </asp:TableRow>
                       <%-- Added by P Suresh for Search ---END---%>
                        <asp:TableRow ID="LotInfo2Tr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="DetailsTab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainFoot">
                            <asp:TableCell CssClass="MainHead" ColumnSpan="2">
                    <input type="button" id="ClsBtn" value="Close" class="ButCls" onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" onclick="FnClose()" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script type="text/javascript">
        function FnClose()
        {
            window.close();
        }
    </script>

</body>
</html>
