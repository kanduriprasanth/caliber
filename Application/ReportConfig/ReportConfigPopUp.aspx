<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ReportConfigPopUp.aspx.vb"
    Inherits="ReportConfig.ReportConfigPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Report Config List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript">
		function TemplatPreview(TemplateId)
		{
	 pageURL ="TemplatePreview.aspx?TemplateId=" + TemplateId
	  SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=75,left=75");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

        }
    </script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <b><b>
                        <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></b></b></td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="0" cellpadding="0" align="center">
                        <tr class="HideRow">
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="1">
                                <b>
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal></b>
                            </td>
                            <td class="MainTd" colspan="3">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <b>
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal></b>
                                <asp:TextBox ID="FindTxt" runat="server" Width="180px" MaxLength="20" CssClass='TxtCls'>%</asp:TextBox>
                            </td>
                            <td class="MainTd" colspan="2">
                                <b>
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal></b>
                                <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'"></asp:Button>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="4">
                                <div style="overflow: auto; height: 200px; background-color: gray">
                                    <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                                </div>
                            </td>
                        </tr>
                        <tr class="HideRow">
                            <td id="RBVal">
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
                        type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnCrCancel()"
                        onmouseout="this.className='ButCls'" type="button" value="Cancel">
                    <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
	
		var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		var KdIdVal=document.all("KdId"+ RowCnt).innerText
 		document.getElementById("RBVal").value = KdIdVal
		
		opener.fnRptConfigVal(KdIdVal,KfLableVal)
	}
	function fnCrCancel(){
		opener.fnRptConfigVal('','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select Report Id!")
            return(false);
          }
		window.self.close()
	}
    </script>

</body>
</html>
