<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationPopUp.aspx.vb"
    Inherits="VenAppCertificate.CreationPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
    <title>Vendor Qualification List</title>
   <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Vendor Qualification List</asp:Literal></td>
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
                                <td class="MainTd" style="font-weight:bold ">
                                    <asp:Literal ID="SearchOptionLtrl" runat="server">Search Option</asp:Literal>
                                </td>
                                <td class="MainTd" colspan = 3>
                                <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                        <asp:ListItem Value="1" Selected="True">Vendor Qualification No.</asp:ListItem>
                                        <asp:ListItem Value="2">Vendor</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="2" style="font-weight:bold ">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="180px" MaxLength="20" CssClass='TxtCls'>%</asp:TextBox>
                                </td>
                                <td class="MainTd" colspan="2" style="font-weight:bold ">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                                    <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                    <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                        onmouseout="this.className='ButCls'"></asp:Button>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="4">
                                        <div style="overflow: auto; height: 200px; background-color: gray">
                                            <asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                                CellPadding="0" CssClass="SubTable">
                                            </asp:table></div>
                                </td>
                            </tr>
                            <tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr class="MainFoot">
                <td >
                    <input class="ButCls" onmouseover="this.className='ButOCls'" 
                        onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" 
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                    <asp:TextBox ID="TemplateType" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IdsTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{
		    var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		    var KdIdVal=document.all("KdId"+ RowCnt).innerText
		    var ItemIdVal=document.all("ItemId"+ RowCnt).innerText
		    document.getElementById("RBVal").innerHTML = KdIdVal
		   	opener.fnCrSetToCode(KdIdVal,KfLableVal,ItemIdVal)
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','','')
		window.self.close()
		 
	}
	
	function FnOpenPopUp(RgsId)
	{
		SetPopDimensions()
//        var pageURL = "ShowAudit.aspx?RgsId=" + RgsId;
        var pageURL = "../ApprovedVendor/Particulars.aspx?BId=" + RgsId;
        var features = "height= 450,width= 850,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	if(document.getElementById("RBVal").innerHTML == undefined || document.getElementById("RBVal").innerHTML == "")
	{
		alert('Select: Vendor Qualification No.');
		return(false);
	}
	    opener.fnCrformSubmit()
		window.self.close()
	}
    </script>

</body>
</html>
