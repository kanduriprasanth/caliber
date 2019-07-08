<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AuditFindingAdt.aspx.vb"
    Inherits="AuditResponse.AuditFindingAdt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Escalation Level Modify List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript">

    function AuditDetails1(HisID, BaseID,AuditType,NextHisId)
   {
        var pageURL = "../IssueLogin/AuditFindingAdt.aspx?BaseID="+ BaseID  + "&AuditType=" + AuditType + "&HisID=" + HisID + "&NextHisId=" + NextHisId
        var features = "height=700,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
        SpWinObj = window.open(pageURL,'TemplatePreview',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
   }
   
   	 function fnOpenDocPopUp(){
	    var BID = "<%=BIDStr%>"
    	var pageURL = "DocPopUP.aspx?BID="+BID + "&AvrId=" 
	    var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=100,left=100, right=100, bottom=100"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
    }
    
 //To Open issue ob clicking Issue Code
function FnOpenRpt(NCID,BdyId,IsuTypeId,IsuLogID)
{
    SetPopDimensions()
    var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + IsuLogID + "&IsuTypeId=" + IsuTypeId  + "&PrsType=2" ;
    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
    SpWinObj = window.open(pageURL,'SpecCodes',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}
    
    
    function AFRvPopUp(ChilId,ObsCat,RulTyp,RulDes,RevNo,ObsId,BaseId,BdyID)
{
    var pageURL = "AFrevPartPopUp.aspx?ChilId="+ChilId + "&ObsCat=" + ObsCat + "&RulTyp=" + RulTyp  + "&RulDes=" + RulDes + "&RevNo=" + RevNo  + "&ObsId=" + ObsId  + "&BaseId=" + BaseId + "&BdyID=" + BdyID 
	var features = "height=460,width=950,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=50,left=50, right=50, bottom=50"
	var winObj = window.open(pageURL,'SpecCodes',features)
	if(winObj.opener ==null)winObj.opener = self;
		winObj.temp="asdf"
}


    </script>
     <script type="text/javascript">
            function OpenDocument(DocId)
            {
                var yval = parseInt(screen.availHeight) - 250
                var xval = screen.availWidth-500

                var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
                SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
                if (SpWinObj.opener == null) SpWinObj.opener = self;
                SpWinObj.focus();
            }
        </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable"  runat="server" ID="Table1" EnableViewState="False">
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
                        <asp:TableRow>
                               <asp:TableCell CssClass="MainTd" Width="100%" valign="top">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                                    HorizontalAlign="center" ID="DetailsTab">
                                    <asp:TableRow>
                                        <asp:TableCell>
                                            <asp:Table ID="RecTable" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                                CellSpacing="1" HorizontalAlign="Center">
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                       
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:LinkButton ID="ActLb" Height="100%" runat="server" Width="100%"></asp:LinkButton>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="4">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="RecTable1" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
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
