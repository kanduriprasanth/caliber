<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ImageCropper.aspx.cs" Inherits="ImageManipulation.ImageCropper" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Crop Image</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link href="css/jquery.Jcrop.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="ClientScripts/jquery.min.js"></script>
    <script type="text/javascript" src="ClientScripts/jquery.Jcrop.min.js"></script>

    <script type="text/javascript">

    function ClosePopup()
    {
        if (typeof(window.parent.window.CropImageDone) == "function")
        {
            window.parent.window.CropImageDone()
        }
    }

    if("<%=IsCropped%>" == "True")
    {
        ClosePopup()
    }
  jQuery(document).ready(function() {
    jQuery('#imgCrop').Jcrop({
      onSelect: storeCoords
    });
  });

  function storeCoords(c) {
    jQuery('#X').val(c.x);
    jQuery('#Y').val(c.y);
    jQuery('#X2').val(c.x2);
    jQuery('#Y2').val(c.y2);
    jQuery('#W').val(c.w);
    jQuery('#H').val(c.h);
  };
    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Text="Image Dimensions" ID="ImageDimensionsTd" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="X" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="Y" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="X2" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="Y2" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="W" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>&nbsp;
                                <asp:TextBox ID="H" runat="server" Width="30" contenteditable=false CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <div align="CENTER">
                                    <asp:Image ID="imgCrop" runat="server"  />
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnCrop" runat="server" Text="Crop" OnClick="btnCrop_Click" onMouseOver="this.className='ButOCls_80'"
                                    Class='ButCls_80' onMouseOut="this.className='ButCls_80'" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
