<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CheckObjectValue_Ajax.aspx.vb"
    Inherits="IssueLogin.CheckObjectValue_Ajax" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>App</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    <link href="../TRIMS.css" rel="stylesheet">

    <script language="javascript">
 
	function fnCrGetCode(RowCnt)
	   { 	
	
            var MobileNo=document.getElementById("MobileNo"+ RowCnt).innerHTML	
            var ReptName=document.getElementById("ReptName"+ RowCnt).innerHTML
		    opener.fnSetToCode(ReptName,MobileNo) 
      }
     
  function funRedRefIsuewList(Count)
   	{
        var ReptName =document.getElementById("MobileNo"+ Count).innerHTML;	
        var MobileNo =document.getElementById("ReptName"+ Count).innerHTML;
        
        var pageURL="../IssueLogin/MultiIsuRefPopup_Ajax.aspx?ObjectType=13&MobileNo=" + MobileNo + "&ReptName=" + ReptName ;
        var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
        SpWinObj = window.open(pageURL,'STDReason1',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
   	}
   	
   	
   	function fnSpCloseWin(){
		window.self.close();
		 
	}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="Table3" runat="server" CellPadding="0" CellSpacing="0" BorderWidth="3"
            HorizontalAlign="center" CssClass="MainTable" EnableViewState="False" Width="98%">
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
                                <asp:Literal ID="SubTitleLtrl" runat="server">Caller Details</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="DataTab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                </asp:Table>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                       
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                         <asp:TableCell CssClass="MainFoot">
                                <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                            </asp:TableCell>
                        </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
