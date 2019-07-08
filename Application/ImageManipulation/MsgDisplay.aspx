<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MsgDisplay.aspx.cs" Inherits="ImageManipulation.MsgDisplay" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link href="../TRIMS.CSS" rel="stylesheet">

    <script language="javascript">
<!--

function GoBack(){

window.history .back () ;
				 
				
			}	
//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <br>
        <br>
        <table class="maintable" id="Table1" cellspacing="0" cellpadding="0" style="height: 150px;
            width: 520px" align="center">
            <tr class="MainHead">
                <td align="left" colspan="4">
                    &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="15px"
                        ForeColor="black">&nbsp;Caliber QAMS</asp:Label>&nbsp;<asp:Label ID="Label2" runat="server"
                            Font-Bold="True" Font-Names="Verdana" Font-Size="12px" ForeColor="black"></asp:Label></td>
            </tr>
            <tr class="MainTD">
                <td align="left" width="16%">
                    &nbsp;
                    <asp:Image ID="img1" BorderStyle="None" runat="server"></asp:Image></td>
                <td align="left" width="84%">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>&nbsp;&nbsp;</td>
            </tr>
            <tr height="25" class="MainFoot">
                <td class="maintd1" colspan="4">
                    <div align="left">
                        &nbsp;&nbsp;
                        <input type="button" id="Back1" runat="server" onclick="GoBack()" value="  Back  "
                            class="butcls">
                        &nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Home" CssClass="butcls" OnClick="Button2_Click"></asp:Button>&nbsp;
                        <asp:Button ID="NextPage" runat="server" Text="Next" Visible="False" CssClass="butcls" OnClick="NextPage_Click">
                        </asp:Button></div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
