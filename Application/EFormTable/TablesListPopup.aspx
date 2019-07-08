<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TablesListPopup.aspx.vb"
    Inherits="EFormTable.TablesListPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=Application("ENB115_" & Session("LANG")) %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">

    <link rel="stylesheet" href="../TRIMS.css">
   
    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead" style="width: 648px">
                    <b><b><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></b></b></td>
            </tr>
            <tr>
                    <td style="vertical-align: top">
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
                                <b><asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal></b>
                            </td>
                            <td class="MainTd" colspan="3">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <b><asp:Literal ID="FindLrl" runat="server">Find</asp:Literal></b>
                                <asp:TextBox ID="FindTxt" runat="server" Width="180px" CssClass='TxtCls' Text="%"
                                    MaxLength="30"></asp:TextBox>
                            </td>
                            <td class="MainTd" colspan="2">
                               <b><asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal></b>
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
                    <input class="ButCls" onmouseover="this.className='ButOCls'"
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var TblCodeVal=document.all("TblCode"+ RowCnt).innerHTML
		    var TblIdVal=document.all("TblID"+ RowCnt).innerText
		    var TblAULID = document.all("TblAULID"+ RowCnt).innerText

		    document.getElementById("RBVal").value = TblIdVal

		   	opener.fnSetVal_TblPopup(TblIdVal,TblCodeVal)
	}
	function fnCrCancel(){
		opener.fnSetVal_TblPopup('','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select eForm Table! ")
            return(false);
          }
		window.self.close()
		opener.Submitpage()
	}
    </script>

</body>
</html>
