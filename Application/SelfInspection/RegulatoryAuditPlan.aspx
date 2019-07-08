<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RegulatoryAuditPlan.aspx.vb"
    Inherits="SelfInspection.RegulatoryAuditPlan" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
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

	RequestPrefix='<%=me.ClientID%>'

    function RegPopUpFn()
    {
        var pageURL;
        pageURL ="../AuditPlanning/RegulatoryLst.aspx";

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
        
    function fnGetRegVal(KdIdVal,KfLableVal)
    {
        document.getElementById("RegId").value=KdIdVal
        document.getElementById("RegCodeTxt").value=KfLableVal 
        document.getElementById("RegCodeLbl").innerHTML=KfLableVal 
    }     
    
    function FnInsTeamPopUp()
    {
        var pageURL;
        pageURL ="UsrGrpPopUp.aspx?iCnt=" + 1 + "&jCnt=" + 1;

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnGetUserrpVal(KdIdVal,KfLableVal,KdDesVal,i,j)
    {
        
        document.getElementById("InsTeamLbl").value=KdDesVal
        document.getElementById("InsTeamTextBx").value=KdIdVal
        document.getElementById("InsTeamName").value=KdDesVal
        document.getElementById("InsTmNameLbl").innerHTML=KdDesVal
        document.getElementById("iCntTxt").value=i
        document.getElementById("jCntTxt").value=j
    }   
	
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
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
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="40%"></asp:TableCell>
                            <asp:TableCell ID="CodeTextTd" CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell ID="DescTextTd" CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuditTypeRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeCapTD">External Audit
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DeptTd"></asp:TableCell>
                            <asp:TableCell ID="NoOfDpttxtTd" CssClass="MainTD">
                                <asp:DropDownList ID="DeptDDL" AutoPostBack="true" runat="server" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ProcessTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ProcessDDL" runat="server" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RegTr">
                            <asp:TableCell CssClass="MainTD" ID="RegTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="RegCapTD">
                                <input type="button" id="RegPBtn" onclick="RegPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:Label ID="RegCodeLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="RegCodeTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="RegId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="UgpTD" CssClass="MainTD" Width="40%"></asp:TableCell>
                            <asp:TableCell ID="TableCell2" CssClass="MainTD">
                                <input id="InsTmBtn" class='RsnPUP' onclick="FnInsTeamPopUp()" style="height: 20px"
                                    title="Click Here" type="button">
                                    <asp:Label ID="InsTmNameLbl" runat=server ></asp:Label>
                                <asp:TextBox ID="InsTeamLbl" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="InsTeamTextBx" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="InsTeamName" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="iCntTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="jCntTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="TableCell3" CssClass="MainTD" Width="40%">Schedule Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell1" ColumnSpan="2">
                                <uc2:CaliberCalender id="StDate" runat="server">
                                </uc2:CaliberCalender>
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
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
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
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" onMouseOver="this.className='ButSelOCls'"
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
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
    //document.getElementById('CodeTxt').focus()

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
			
			
//-->
</script>

</html>
