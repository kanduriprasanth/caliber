<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BatchListPop.aspx.vb" Inherits="SAPBATSTS.BatchListPop" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
</head>
<body ms_positioning="GridLayout" onload="document.Form1.FindTxt.focus()" onblur="document.Form1.FindTxt.focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr class="SubHead">
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" style="height: 20px" id="Div1">
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
                            <tr class="HideRow">
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="1">
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                                </td>
                                <td colspan="3" class="MainTd">
                                    <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength="26">%</asp:TextBox>
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
                        onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Submit">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
    
    var flag=false
  	
  	function fnCrGetCode(RowCnt)
	{ 
        var BatID=document.getElementById ("KdId"+RowCnt).innerHTML
        var PrdCode=document.getElementById ("KfLable"+RowCnt).innerHTML
        var PrdDesc = document.getElementById ("Desc"+RowCnt).innerHTML
        var BatNo = document.getElementById ("BatNo"+RowCnt).innerHTML
        var SAPPltcode = document.getElementById ("SAPPltcode"+RowCnt).innerHTML
        opener.fnsetUservalue(BatID,PrdCode,PrdDesc,BatNo,SAPPltcode)
        flag=true
	}
	
	function fnCrCancel(){
	
		opener.fnsetproductvalue('','','','','')
		window.self.close()
 
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){
	if (flag==false) 
	{
	alert("Select value")
	return false
	}
	else
	{
	    window.self.close()
	}
		
	}
    </script>

</body>
</html>
