<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EditorAddons.aspx.vb"Inherits="eNoteBookEditor.EditorAddons" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Editor Addons</title>
    	<link rel="stylesheet" href="../TRIMS.css">
		
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" Text= "Select Data" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainTD" Width =100% Height=380px>
                    
                        <iframe id="iFrame1" src ="RawDataList.aspx"  runat="server" style="width: 100%; height: 100%"></iframe>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow Height="20px">
                <asp:TableCell CssClass="MainFoot">
             <input type =button id ="SubmitDtn" value ="Ok" onclick ="Close11()" style ="width :80px" />
                          <input type =button id ="Cancel" value ="Cancel" onclick ="Cancel11()" style ="width :80px" />

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <script language =javascript >
    function Close11()
    {
        var TextData = iFrame1.document.getElementById("BodyDiv").innerHTML ;
        opener.RawData(TextData);
        window.self.close();
    }
    function Cancel11()
    {
        window.self.close();
    }
    </script>
</body>
</html>
