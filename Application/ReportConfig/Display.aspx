<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Display.aspx.vb" Inherits="ReportConfig.Display" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" >

<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div align=center >
     <iframe id="Frame" runat="server" src="http://localhost/ChartApplication/Chart.aspx?BaseId=<%=BaseId%>" width=98% height="800px"></iframe>
    </div>
    </form>
</body>
</html>
