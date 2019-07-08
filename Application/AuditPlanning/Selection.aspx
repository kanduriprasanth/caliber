<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Selection.aspx.vb" Inherits="AuditPlanning.Selection" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="OtherDetRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="DetailsTab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="btnPreview" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' onMouseOut="this.className='ButCls'" Text="Take Print" Width="70"
                                    CausesValidation="false"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="DeptTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ProcessTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CheckLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AudtitorTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditeeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditorNametxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditeenameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="DateTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="HideRow"></asp:TextBox>
                    <%--<asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>--%>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

    function FnCheckListPopUp(DeptId,PrcsId,DeptCnt,PrcsCnt)
    {	   	
    SetPopDimensions()
    var pageURL = "ChckListPopUp.aspx?DeptId=" + DeptId + "&PrcsId=" + PrcsId + "&DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt;
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetCheckListVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
        document.getElementById("CheckListLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        var Cnt = <%=Cnt%>
        document.getElementById("CheckListTxt_" + DeptCnt + "_" + PrcsCnt).value =  KdIdVal
          
    }
      
    
    function FnAuditorPopUp(DeptCnt,PrcsCnt)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditorPopUp.aspx?DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt;
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditorVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
      
        document.getElementById("AuditorLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        document.getElementById("AuditorNametxt").value+="#*#" +KfLableVal
        document.getElementById("AuditorTextBx_" + DeptCnt + "_" + PrcsCnt).value=KdIdVal
        
    }
    
    function FnAuditeePopUp(DeptCnt,PrcsCnt)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditeePopUp.aspx?DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt;
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditeeVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
       
        document.getElementById("AuditeeLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        document.getElementById("AuditeenameTxt").value+="#*#" +KfLableVal
        document.getElementById("AuditeeTextBx_" + DeptCnt + "_" + PrcsCnt).value=KdIdVal
       
    }

    
</script>

<script language="javascript">
	function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }		
<!--
document.getElementById('CodeTxt').focus()
//-->
</script>

</html>
