<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationList.aspx.vb"
    Inherits="IssueLogin.CreationList" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>CreationList</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript">
<!--
  var SpWinObj

 function fnOpenCrPopUp(){
    	var pageURL = "CreationPopUP.aspx"
	var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(KfIdVal,KfLableVal){
      var objId
      var obj
         
		
		 objId=  'KfId'
         obj=document.getElementById(objId)
		 obj.value = KfIdVal
		 
		  objId=  'KfLable'
         obj=document.getElementById(objId)
		 obj.value = KfLableVal
		 
		
	  
} 
	function fnCrformSubmit(){
	 document.all("GoBtn").click()
	}
	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" ID="Table1">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <table align="center" cellpadding="0" class="SubTable" cellspacing="1" width="100%">
                                    <tr>
                                        <td style="width: 150px" class="MainTd">
                                            Kf &nbsp;
                                            <input type="button" onclick="fnOpenCrPopUp()" class='RsnPUP' style="height: 20px">
                                        </td>
                                        <td class="MainTd">
                                            <asp:Label ID="KfLable" runat="server" CssClass="MainTd"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" class="HideRow">
                                            <asp:RequiredFieldValidator ID="ReqFieldValidator1" runat="server" ControlToValidate="KfId"
                                                Height="0" Width="0">&nbsp;</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="KfId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>
                                <asp:ImageButton ID="GoBtn" runat="server" ImageUrl="../IMAGES/Go.gif" CssClass="HideRow">
                                </asp:ImageButton>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
