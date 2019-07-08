<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MsgDisplay.aspx.vb" Inherits="Dossier.MsgDisplay" %>

<%@ Register TagPrefix="uc1" TagName="MessageDisplay" Src="../CaliberCommonCtrls/MessageDisplay.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>MessagegDisplay</title>

    
     <link rel="stylesheet" href="../TRIMS.css">
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
        <uc1:MessageDisplay id="MessageDisplay1" runat="server">
        </uc1:MessageDisplay>
    </form>
</body>
</html>
