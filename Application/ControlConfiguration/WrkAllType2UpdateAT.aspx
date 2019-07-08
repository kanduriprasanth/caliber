<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WrkAllType2UpdateAT.aspx.vb" Inherits="ControlConfiguration.WrkAllType2UpdateAT" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title> <%=MainTitleLtrl.Text%></title>
       
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
      <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="600" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainTD1" ID="AppRevierTd">
                    <asp:Table ID="DetailsTbl" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center"
                        runat="server" CssClass="SubTable">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                     	<INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onmouseout="this.className='ButCls'" type="button" value="Close" onclick="fnSpCloseWin()"> 
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <script language="javascript">

        function fnSpCloseWin() {
            opener.fnOpenControlCfgLst_Ret()
            window.self.close()
        }
	    </script>
	
</body>
</html>