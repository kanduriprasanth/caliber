<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DataSheetsPopup.aspx.vb"
    Inherits="ControlConfiguration.DataSheetsPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html lang="en">
<head>
    <title>Data Sheet List </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </td>
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
                                <asp:TextBox ID="FindTxt" onfocusout="CheckDescVal('FindTxt')" runat="server" Width="180px" CssClass='TxtCls' MaxLength="20">%</asp:TextBox>
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
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnSpCloseWin()"
                        onmouseout="this.className='ButCls'" type="button" value="Ok" />
                    <input class="ButCls" onmouseover="this.className='ButOCls'" onclick="fnCrCancel()"
                        onmouseout="this.className='ButCls'" type="button" value="Cancel" />
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
    var flag=0;
  	function fnCrGetCode(RowCnt)
	{ 
        var SheetIdVal=document.getElementById("SheetId"+ RowCnt).innerHTML
        var SheetCode=document.getElementById("SheetCode"+ RowCnt).innerText
        var SheetType=document.getElementById("SheetType"+ RowCnt).innerText
        opener.fnOpenDataSheetPopUp_Ret(SheetIdVal,SheetCode,SheetType,"<%=Request.QueryString("SheetTypeId")%>")
        flag=1;
	}

	function fnCrCancel(){
		opener.fnOpenDataSheetPopUp_Ret('','','',"<%=Request.QueryString("SheetTypeId")%>")
		window.self.close()
	}

	document.oncontextmenu=new Function("return false");

	function fnSpCloseWin(){
		if (flag==1)
		{
		    window.self.close()
		}
		else
		{
		    alert("Select Data Sheet")
		    return false;
		}
	}
	
	function myTrim(str)
   {
   return str.replace(/^\s+|\s+$/gm,'')
   }
   function CheckDescVal(id,cap) 
   {
           var expmsg = ""
           var Flag=0
     if(document.getElementById(id).value !='' )
     {
       
       document.getElementById(id).value= myTrim(document.getElementById(id).value)     
   }
 }
    </script>

</body>
</html>
