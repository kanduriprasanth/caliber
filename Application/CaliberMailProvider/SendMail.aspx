

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMail.aspx.cs" Inherits="CaliberMailProvider.SendMail" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
    <asp:button runat="server" text="Send Internal Mails" id="InternalMailsBtn" Width="128px" OnClick="InternalMailsBtn_Click"/>&nbsp;<br />
        <br /><asp:button runat="server" text="Send External Mails" id="ExternalMailsBtn" Width="128px" OnClick="ExternalMailsBtn_Click"/><br />
        <br />
    <asp:button runat="server" text="Receive Mails" id="ReceiveMailsBtn" OnClick="ReceiveMailsBtn_Click" Width="128px"/>
    </div>
    </form>
</body>
</html>
