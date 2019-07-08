<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EScCodeConfig.aspx.vb" Inherits="ReportConfig.EScCodeConfig" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>
    
    <script language="javascript">
    
        function FnOpenHelpDoc()
        {
            var pageURL = "HelpDocEsc.aspx"
            var features = "height=650,width=950,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function FnRevAppColPopUp()
        {
            var pageURL;
            pageURL ="ColorPopUp.aspx"
            var SpWinObj;
            SpWinObj = window.open(pageURL,'SpecCodes',"height=600,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        function SetColSelValues(Col)
        {
            document.getElementById("ColorCodeTxt").value =Col
            document.getElementById("ColorDispLbl").style.backgroundColor = Col
           // document.getElementById(ColLabTxtIdVal).innerHTML ="Col"
        }

    
    </script>
    
    <style type="text/css">
        HelpCss	{	
	        background-image:url(Help-icon.png);
	    }	
    </style>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" Width="200px" MaxLength="30" CssClass="UCTxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" Width="200px" MaxLength="250" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" ID="TaskInchgTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type=button id="Btn" onclick="FnRevAppColPopUp()" class="RsnPUP" />
                                <asp:TextBox ID="ColorCodeTxt" runat="server" onblur="FnAssignColor()" CssClass="HideRow" Width="80px"></asp:TextBox> &nbsp;&nbsp;
                                <asp:Label ID="ColorDispLbl" runat="server" BorderStyle=solid BorderWidth=1 Width="30px"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" ID="MailGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type=button id="Button2" class='RsnPUP' onclick='fnOpenUgpPopUp()' /> 
                                <asp:Label ID="MailUgpLbl" runat="server" CssClass="LblCls"></asp:Label>
                                  <asp:TextBox ID="MailUgpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MailUgpDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="HideRow" Style="font-weight: bold" ColumnSpan=2>Task Table Chart Configuration</asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FilRw" CssClass="HideRow">
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Table ID="TaskTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
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
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" Text="Submit" onMouseOut="this.className='ButCls'">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="right">
                              <asp:Button ID="ViewExtBtn" runat="server" onMouseOver="this.className='ButSelOCls'"
                                    Class='ButSelCls' AccessKey="C" Text="View Existing Record" CausesValidation=false  onMouseOut="this.className='ButSelCls'">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <script language=javascript>
            
            function FnAssignColor()
            {
                document.getElementById("ColorDispLbl").style.backgroundColor=document.getElementById("ColorCodeTxt").value;
            }
            
            function fnOpenUgpPopUp()
	        {
	            var MailUgpIdTxt=document.getElementById("MailUgpIdTxt").value;
	            var pageURL = "UgpPopup.aspx?Type=1&icnt=" + 0 + "&jcnt=" + 0 + "&FromNodeCfg=1" + "&MailUgpIdLst=" + MailUgpIdTxt
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                SpWinObj = window.open(pageURL,'SpecCodes',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
	        }
	    
	        function fnCrSetUgpCode(BaseId,UgpDesc,icnt,jcnt)
            {
                 document.getElementById("MailUgpLbl").innerHTML=UgpDesc
                 document.getElementById("MailUgpIdTxt").value=BaseId
                 document.getElementById("MailUgpDescTxt").value=UgpDesc
            }
            
        </script>
    </form>
</body>
</html>

