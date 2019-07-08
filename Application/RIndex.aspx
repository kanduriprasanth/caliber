<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RIndex.aspx.vb" Inherits="QAMS300BL.RIndex" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<html>
  <head>
    <title>RIndex</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name=vs_defaultClientScript content="JavaScript">
    
  </head>
  <body MS_POSITIONING="GridLayout">

    <form id="Form1" method="post" runat="server">
            <asp:TextBox runat="server" style="display:none" ID="UsrIdTxt"></asp:TextBox>
    </form>
<script language=javascript>
var SesExpPgFlg='<%=SesExpPgFlg%>'

if (SesExpPgFlg==1)
{

window.parent.parent.navigate("Login.aspx")
}
else
{
window.navigate("Login.aspx")
}
</script>
  </body>
</html>
