<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RevHisPopUp.aspx.vb" Inherits="CAPAWORKS.RevHisPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title>Revised Target Date List</title>
    <link rel="stylesheet" href="../TRIMS.css" />
    <script language="javascript" src="../JScript/Common2.js"></script>
    <style type="text/css" >
        .MainTDTemp
        {
 	        color :Black; font-weight:normal; Background-Color:#fff;;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;
        }
    </style>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" >
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="DisTab">
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>           
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server"  Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>                                
                                <input class="ButCls" onmouseover="this.className='ButOCls'" 
                                onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Close">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            
        </asp:Table>
    </form>
</body>
<script language="javascript" type="text/javascript">
function fnCrCancel()
   { 
     window.self.close()
   }
</script>
</html>
