<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Temp.aspx.vb" Inherits="ReportConfig.Temp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                  Text="Click"  Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" CausesValidation=false  ></asp:Button>
                              
    </div>
    </form>
</body>
</html>
