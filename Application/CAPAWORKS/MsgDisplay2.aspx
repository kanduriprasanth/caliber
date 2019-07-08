<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay2.aspx.vb" Inherits="CAPAWORKS.MsgDisplay2" %>

<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MsgDisplay</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript">

<!--
function GoBack(){
				window.history.back();
			}	
			
			function Funclose()
			{
			 if (<%=ReturnStatus%> ==1)
			 {
			     if ((<%=TransType%> == 1))
                    { opener.RefreshList(); }
			      window.self.close();
			 } 
			}
			
			
		  Funclose()
//-->
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <%--  <uc1:MessageDisplay id="MessageDisplay1" runat="server">
        </uc1:MessageDisplay>--%>
        <center>
        <div class="Confirm-Set-Element-To-Center">
            <table class="MainTable" id="Table1" cellspacing="0" style="height: 150px; width: 520px" align="center">
                <tr class="MainHead">
                    <td align="left" colspan="4">
                        &nbsp;<asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="15px"
                            ForeColor="black">&nbsp;Caliber QAMS</asp:Label>&nbsp;<asp:Label ID="Label2" runat="server"
                                Font-Bold="True" Font-Names="Verdana" Font-Size="12px" ForeColor="black"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="MainTD" style="text-align: center">
                        &nbsp;
                        <asp:Label ID="MsgLbl" runat="server"></asp:Label>
                        <asp:Image ID="img1" BorderStyle="None" runat="server"></asp:Image></td>
                    </td>
                    <td class="MainTD" style="text-indent: 0px;"><br />
                        <asp:Label ID="lblSaveMessage" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr class="MainFoot">
                    <td colspan="4">
                        <div align="left">&nbsp;
                            <asp:Button ID="CloseBtn" runat="server" Text="Close" CssClass="ButCls"></asp:Button>&nbsp;
                            <asp:Button ID="NextBtn" runat="server" Text="Next" CssClass="ButCls"></asp:Button>&nbsp;
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        
        </center>
    </form>
</body>

<script type="text/javascript">
    $("#CloseBtn").click(function(){
       window.close();
    });
//    if (<%=TransType%> == 1)
//    setTimeout("opener.RefreshList()",500)

</script>

</html>
