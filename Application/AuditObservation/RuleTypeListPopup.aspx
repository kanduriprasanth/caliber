<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RuleTypeListPopup.aspx.vb" Inherits="AuditObservation.RuleTypeListPopup" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
        <%=MainTitleLtrl.Text%>
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
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td style="width: 648px">
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
                            <td class="MainTd" colspan="1" Width="150px">
                                <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                            </td>
                            <td class="MainTd" colspan="3" Width="550px">
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                    CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                <asp:TextBox ID="FindTxt" MaxLength="30" runat="server" Width="180px" CssClass='TxtCls'
                                    Text="%"></asp:TextBox>
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
                                <div style="overflow: auto; height: 256px; background-color: gray">
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
        </table>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var ENBCodeVal=document.all("ENBCode"+ RowCnt).innerHTML
		    var ENBIdVal=document.all("ENBID"+ RowCnt).innerText
		    var SecIDsLst =document.all("ENBSecIDLst"+ RowCnt).innerText
		    var ENBAULID = document.all("ENBAULID"+ RowCnt).innerText
            var SectionUcodeLst  =document.all("ENBSecUCodeLst"+ RowCnt).innerText
            
            var SectionDescLst = document.all("ENBSecDescLst"+ RowCnt).innerText
            
		    document.getElementById("RBVal").value = ENBIdVal
		    		        
		   	opener.GetENoteBookVals(ENBIdVal,ENBCodeVal,SecIDsLst,SectionDescLst,ENBAULID)
	}
	function fnCrCancel(){
		opener.GetENoteBookVals('','','','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select " + "<%=eNoteBookVal%>" + "! ")
            return(false);
          }    
		window.self.close()
	}
    </script>

</body>
</html>
