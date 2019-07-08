<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay1.aspx.vb" Inherits="TestEFormExecution.MsgDisplay1" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>MsgDispl</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript">

<!--
function GoBack(){
				window.history.back();
			}	
//-->
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table class="maintable" id="Table1" height="150" cellspacing="0" width="520" align="center"
            style="HEIGHT:150px; width:520px">
	<tr class="MainHead">
                <td align="left" colspan="4">
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Lucida Sans Unicode" Font-Size="17px"
                        ForeColor="Black">&nbsp;</asp:Label>&nbsp;<asp:Label ID="Label2"
                            runat="server" Font-Bold="True" Font-Names="Lucida Sans Unicode" Font-Size="14px"
                            ForeColor="Black"></asp:Label></td>
            </tr>
            <tr class="headtd">
                <td align="left" width="16%">
                    &nbsp;
                    <asp:Image ID="img1" BorderStyle="None" runat="server"></asp:Image></td>
                <td align="left" width="84%">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>&nbsp;&nbsp;</td>
            </tr>
        <tr height="25"  class="MainFoot">
		<TD class="maintd1" colSpan="4">
                    <div align="left">
                        &nbsp;&nbsp;
                        <input type="button" id="Back1" runat="server" onclick="GoBack()" value="  Back  "
                            class="butcls" name="Back1">
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Home" Width="55px" CssClass="HideRow"></asp:Button>&nbsp;
                        <asp:Button ID="NextPage" runat="server" Text="Next" Width="55px" CssClass="HideRow">
                        </asp:Button></div>
                    <asp:TextBox ID="txtback" CssClass="HideRow" runat="server" Width="10%"></asp:TextBox>
                    <div>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
