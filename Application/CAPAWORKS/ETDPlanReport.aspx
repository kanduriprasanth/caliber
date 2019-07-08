<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ETDPlanReport.aspx.vb"
    Inherits="CAPAWORKS.ETDPlanReport" %>

<%@ Register TagPrefix="uc1" TagName="Header" Src="../CaliberCommonCtrls/ReportHeader.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script src="../JScript/jquery.min.js" type="text/javascript"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False">
            <asp:TableRow Height="20" CssClass="SubHead">
                <asp:TableCell CssClass="MainHead" ColumnSpan="6">
                    <asp:Label ID="MainTitleLtrl" runat="server"></asp:Label>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Label ID="SubTitleLtrl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="HeadTD" ColumnSpan="6">
                                <asp:Label ID="SearchLbl" runat="server" Text="&nbsp;Search"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="SrhTbl" runat="server" HorizontalAlign="left" CellPadding="0" CssClass="SubTable"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="IsuCodeLbl" runat="server" Text="Plan Code like"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="IsseucodeTxt" runat="server" Text="%"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="IsuCatLbl" runat="server" Text="Issue Category"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:DropDownList ID="IsuCatDDL" runat="server"  EnableViewState="true">
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="InitBetwnLbl" runat="server" Text="Initiated Between"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <uc1:CaliberCalender id="FromDate" runat="server">
                                            </uc1:CaliberCalender>
                                            And
                                            <uc1:CaliberCalender id="ToDate" runat="server">
                                            </uc1:CaliberCalender>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                       
                                       
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="IncgrpLbl" runat="server" Text="Incharge Group"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="IncgrpTxt" runat="server" Text="%"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="WidthTXt" Text="12" runat="server" CssClass="hideRow"></asp:TextBox>
                                            <asp:Label ID="StatusLbl" runat="server" Text="Status"></asp:Label>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:RadioButtonList ID="StatusRBL" runat="server" RepeatDirection="horizontal" CssClass="MainTD">
                                                <asp:ListItem Text="All" Selected="true" Value="0"></asp:ListItem>
                                                <asp:ListItem Text="Under Approval" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Approved" Value="2"></asp:ListItem>
                                           </asp:RadioButtonList>
                                        </asp:TableCell>
                                         <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:Label ID="Label1" runat="server" Text="Department"></asp:Label>
                                        </asp:TableCell>
                                         <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:DropDownList ID="DeptDDl" runat="server"  EnableViewState="true">
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                        
                                        
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="RecPerPageLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" runat="server" AutoPostBack="False"
                                    Width="50px">20</asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="PgNoLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
                                    MaxLength="5">1</asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="GoBtn" runat="server" CssClass="ButCls" Text="Display" Visible="TRUE">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RecTabTR">
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="RecListTbl" Width="100%" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow">
                <asp:TableCell ColumnSpan="6">
                    <asp:TextBox ID="IsuCatTxt" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="DeptTxt" runat="server" Text="0"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
   
   function SaveIsuCat(obj){ //Saving Issue Category on postback
	        document.getElementById("IsuCatTxt").value= obj.value;
	    }
    
     function SaveDept(obj){ //Saving Department on postback
	        document.getElementById("DeptTxt").value= obj.value;
	    }


    function fnETDDetails(IsulogId,ActPlnId,WorkItemId,ETDType)
    {
        var pageURL = "../ModificationRequest/ETDDetails.aspx?IsulogId=" + IsulogId + "&ActPlnId=" + ActPlnId + "&WorkItemId=" + WorkItemId + "&Type=1" + "&ETDType=" + ETDType
        var features = "height=300,width=500,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnEventsDetails(EtdID)
        {
            var pageURL = "../ModificationRequest/ETDEventsDetails.aspx?EtdID=" + EtdID 
            
            var PWidth=500
            var PHeight=300
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        
        }

</script>

</html>
