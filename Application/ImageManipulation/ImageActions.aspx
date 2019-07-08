<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ImageActions.aspx.cs" Inherits="ImageManipulation.ImageActions" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title>Untitled Page</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link href="css/jquery.Jcrop.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="ClientScripts/jquery.min.js"></script>

    <script type="text/javascript" src="ClientScripts/jquery.Jcrop.min.js"></script>

    <script type="text/javascript">

//    function ClosePopup()
//    {
//        if (typeof(window.parent.window.CropImageDone) == "function")
//        {
//            window.parent.window.CropImageDone()
//        }
//    }

//    if("False" == "True")
//    {
//        ClosePopup()
//    }
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

    <script language="javascript">

    function SetImageAction()
    {
        var Width = jQuery('#W').attr("value");
        var Height = jQuery('#H').attr("value");
        var X1Cordinate = jQuery('#X').attr("value");
        var Y1Cordinate = jQuery('#Y').attr("value");
        var X2Cordinate = jQuery('#X2').attr("value");
        var Y2Cordinate = jQuery('#Y2').attr("value");
        var str = ""
        if(jQuery('#W').attr("value") == "0" && jQuery('#H').attr("value") == "0")
            str = "Re select Image Range" + "\n- ";
        if(jQuery('#CaptionTxt').attr("value") == '')
            str += "Enter Value For: Caption" + "\n- ";
        if(jQuery('#RedirectURLTxt').attr("value") == '')
            str += "Enter Value For: Redirect URL" + "\n- ";

        if(str!="")
        {	
            alert("- " + str.substring(0,str.length-3));
            return;
        }

        var SHAPE = "RECT";
        var COORDS = X1Cordinate + "," + Y1Cordinate + "," + X2Cordinate + "," + Y2Cordinate;
        var TITLE = jQuery('#CaptionTxt').attr("value");
        var ALT = jQuery('#CaptionTxt').attr("value");
        var HREF = jQuery('#RedirectURLTxt').attr("value");
        window.parent.window.SetActionsDone(SHAPE,COORDS,TITLE,ALT,HREF);
    }
    
    function FnUrlSelePoup()
    {
        var SpWinObj;
        var pageURL ="UrlCfgPopup.aspx?Category=" + <%=Category %>
        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnSetActions(MenuName,MenuUrl)
    {
      $('#RedirectURLTxt').val("../" + MenuUrl);
      $('#CaptionTxt').val(MenuName);
    }
    

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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Text="Image Dimensions" ID="ImageDimensionsTd" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                X1<asp:TextBox ID="X" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>&nbsp;
                                Y1<asp:TextBox ID="Y" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>&nbsp;
                                X2<asp:TextBox ID="X2" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>&nbsp;
                                Y2<asp:TextBox ID="Y2" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>&nbsp;
                                W<asp:TextBox ID="W" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>&nbsp;
                                H<asp:TextBox ID="H" runat="server" Width="30" contenteditable="false" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="RedirectURLTd" runat="server" CssClass="MainTD" Text="Redirect URL"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                    <input type=button class="RsnPUP" onclick="FnUrlSelePoup()" />
                                 <asp:TextBox ID="RedirectURLTxt" runat="server" Width="200" MaxLength="300" CssClass="TxtCls" ReadOnly=true></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell ID="CaptionTd" runat="server" CssClass="MainTD" Text="Caption"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CaptionTxt" runat="server" Width="200" MaxLength="300" CssClass="TxtCls" ReadOnly=true></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <div align="CENTER">
                                    <asp:Image ID="imgCrop" runat="server" />
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
                                  <input type="button" onclick="SetImageAction()" value="Set Action" onMouseOver="this.className='ButOCls_80'" Class='ButCls_80' onMouseOut="this.className='ButCls_80'"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
