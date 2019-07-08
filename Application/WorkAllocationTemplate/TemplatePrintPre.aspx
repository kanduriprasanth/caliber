<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TemplatePrintPre.aspx.vb"
    Inherits="WorkAllocationTemplate.TemplatePrintPre" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css">
    <link href="../eNoteBookEditor/editor/css/fck_editorarea.css" rel="stylesheet">

    <script language="javascript" src="../JScript/Doc_PrintPrev.js"></script>
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <script language="vbscript" src="../JScript/MsWordScript.vbs"></script>

</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="700px" runat="server">
            <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell2" runat="server">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="Center" ID="Table1">
                        <asp:TableRow ID="TableRow3" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="TableCell3" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HeaderTr" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="HeaderTd" CssClass="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BodyTr" runat="server">
                            <asp:TableCell ID="BodyTd" CssClass="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FooterTr" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="FooterTd" CssClass="MainTD" runat="server"></asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow7" runat="server">
                <asp:TableCell ID="TableCell9" runat="server">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="Center" ID="Table2" BorderWidth="0px">
                        <asp:TableRow ID="TableRow8" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="TableCell10" runat="server"></asp:TableCell>
                            <asp:TableCell ID="TableCell11" runat="server"></asp:TableCell>
                            <asp:TableCell ID="TableCell5" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow9" runat="server">
                            <asp:TableCell ID="TableCell12" CssClass="MainFoot" runat="server">
                             <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" 
							onmouseout="this.className='ButCls'" type="button" value="Preview" onclick="TpltPrintPre('Preview')">
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell6" CssClass="MainFoot" HorizontalAlign="center" runat="server">
                             <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" 
							onmouseout="this.className='ButCls'" type="button" value="Print" onclick="TpltPrintPre('Print')">
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell7" CssClass="MainFoot" HorizontalAlign="center" runat="server">
                            <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" 
							onmouseout="this.className='ButCls'" type="button" value="Back" onclick="window.history.back()">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow  CssClass ="HideRow">
            <asp:TableCell >
                <asp:TextBox ID="OrientationTxt" runat="server"></asp:TextBox>
            </asp:TableCell>
            </asp:TableRow>
            
            
        </asp:Table>
    </form>

    <script language="javascript">
     function TpltPrintPre(Type)
     {
             if(MSWordInstalled() ==true)
        {
            //alert("MS Word Installed")
        }
        else
        {
            alert("MS Word Not Installed")
            return false;
        }

        var Header = document.getElementById("HeaderTd").innerHTML 
        var Body =  document.getElementById("BodyTd").innerHTML 
        var Footer = document.getElementById("FooterTd").innerHTML
        var Orientation = document .getElementById ("OrientationTxt").value
        ShowMask()
        CreateDocument(Body,Header,Footer,Type,Orientation)
        window.setTimeout ("HideMask()",5000)
     }

    </script>

</body>
</html>
