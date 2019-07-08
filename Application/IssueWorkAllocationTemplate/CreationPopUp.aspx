<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationPopUp.aspx.vb"
    Inherits="IssueWorkAllocationTemplate.CreationPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Parent Refs. Selection List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link href="../LIMS.css" type="text/css" rel="stylesheet">
</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="98%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    Parent List</td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" style="height: 20px" id="Div1">
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
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                                </td>
                                <td class="MainTd" colspan="3">
                                    <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                        <asp:ListItem Value="1" Selected="True">Kf 1</asp:ListItem>
                                        <asp:ListItem Value="2"> Kf 2</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                                </td>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
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
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		    var KdIdVal=document.all("KdId"+ RowCnt).innerText
		   	opener.fnCrSetToCode(KdIdVal,KfLableVal )
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
		opener.fnCrformSubmit()
		window.self.close()
	}
    </script>

</body>
</html>
