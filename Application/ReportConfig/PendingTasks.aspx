<%@ Page Language="vb" AutoEventWireup="false" Codebehind="PendingTasks.aspx.vb"
    Inherits="ReportConfig.PendingTasks" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Escalation Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <style>
     .ReportHeaderTd{
    border:solid #5fa8cf 1 pt;font-family:Microsoft Sans Serif,Arial;background:#54a2cc;font-weight:bold;font-size:11
    color :#fcfceb; 
            font-weight:600; 
            font-family:Verdana,Arial;
            font-size:8pt;
            Padding-Left:3px;
            Padding-Top:2px;
            Padding-Bottom:2px; 
            padding-right:3px;
    }
    </style>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="20in" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SrchCtrlTr" CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <uc1:SearchCtrl id="SearchCtrl4" runat="server">
                                </uc1:SearchCtrl>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TaskTabTd" Width="10%" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:DropDownList ID="TaskTabDDL" runat="server">
                                </asp:DropDownList>                         
                                <asp:TextBox CssClass="HideRow" ID="PgNoTxt" runat="server" AutoPostBack="False"
                                    Width="50px">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display" Visible="TRUE">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>                            
                             <asp:TableCell CssClass="MainTD" ColumnSpan="6" HorizontalAlign=left  BackColor=lightyellow  > 
                                <b><U><font color="#3333ff" size="3" face="sans-serif">Note:</font></U></b> <br /> <br />
                              <font color="#006600" size="2" face="sans-serif">For Permanent Change Control And Temporary Change Control :</font><br /><br />
                                &nbsp;&nbsp;&nbsp;F1-	Current Practice <br />
                                &nbsp;&nbsp;&nbsp;F2-	Proposed Change <br />
                                &nbsp;&nbsp;&nbsp;F3-	Justification <br /> <br />
                               <font color="#006600" size="2" face="sans-serif">For CAPA :</font><br /><br />
                                &nbsp;&nbsp;&nbsp;F1-	Event Description <br />
                                &nbsp;&nbsp;&nbsp;F2-	Description of CAPA<br />
                                &nbsp;&nbsp;&nbsp;F3-	Investigation and Root Cause Finding <br /> <br />
                              <font color="#006600" size="2" face="sans-serif">For Deviation :</font><br /><br />
                                &nbsp;&nbsp;&nbsp;F1-	Description of Deviation <br />
                                &nbsp;&nbsp;&nbsp;F2-	Investigation Findings<br />
                                &nbsp;&nbsp;&nbsp;F3-	Immediate Action Taken / To Be Taken <br />  <br />   

                            </asp:TableCell>  
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="RecTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell  ColumnSpan="6" Style="font-size: 14.0pt; background:SkyBlue" ID="myWorksLbl"
                                runat="server" Text="My Pending Works" CssClass="SubheadTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="MyWorksTab" Width="100%" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="2" >
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6" ID="TeamWorksLbl" Style="font-size: 14.0pt; background-color: SkyBlue;"
                                runat="server" Text="My Team Pending Works" CssClass="SubheadTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="TeamWorksTab" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="2" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
