<%@ Page Language="vb" AutoEventWireup="false" Codebehind="VendorAdtList.aspx.vb"
    Inherits="SelfInspection.VendorAdtList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>External Audit Plan</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
    
    function moveImgBtn() 
{ 
    var ScrTop =window.event.srcElement.scrollTop;
    
    document.getElementById("Prev").style.top = ScrTop + (350/2)
    document.getElementById("Prev").style.left = "2.1px"
    document.getElementById("Nxt").style.right = "2.1px"
    document.getElementById("Nxt").style.top = ScrTop + (350/2)

}
    
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="form1" runat="server">
        &nbsp; &nbsp;&nbsp;
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0" Width="90%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Vendor Audit Plan Schedule</asp:Literal>
                    <asp:TextBox ID="Txt1" runat="server" CssClass="HideRow" Width="1"></asp:TextBox>
                    <asp:TextBox ID="YrTxt" runat="server" CssClass="HideRow" Width="1"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <div style="width: 850; height: 500; overflow: auto" class="MainTable">
                        <asp:Table ID="Table2" runat="server" HorizontalAlign="center" BackColor="#f7ffff"
                            CellPadding="0" CssClass="MainTable" CellSpacing="1" Width="100%">
                            <asp:TableRow Width="100%">
                                <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle" ColumnSpan="3">
                                    Audit Type &nbsp;&nbsp;
                                    <asp:DropDownList ID="AdtTypeDDL" runat="server" Width="200px" AutoPostBack="true">
                                        <asp:ListItem Value="1">Self Inspection Audit</asp:ListItem>
                                        <asp:ListItem Value="2">External Audit</asp:ListItem>
                                        <asp:ListItem Value="1">Vendor Audit</asp:ListItem>
                                    </asp:DropDownList>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow Width="100%">
                                <asp:TableCell HorizontalAlign="Center" VerticalAlign="Middle" ColumnSpan="3">
                                    <asp:ImageButton Visible="true" ID="CurrentOcc" runat="server" ImageUrl="../IMAGES/currentoccupancy.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow Width="100%">
                                <asp:TableCell VerticalAlign="Middle" HorizontalAlign="Center">
                                    <asp:ImageButton Visible="true" ID="Prev" Style="position: absolute;" runat="server"
                                        ImageUrl="../IMAGES/previousoccupancy.jpg" />
                                </asp:TableCell>
                                <asp:TableCell Width="96%">
                                    <asp:Table ID="MTable" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                                        CellSpacing="1" Width="100%">
                                        <asp:TableRow Width="100%" CssClass="HideRow">
                                            <asp:TableCell CssClass="MainTD">
                                                <asp:TextBox ID="dateTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow Width="100%" CssClass="HideRow">
                                            <asp:TableCell CssClass="MainTD">
                                                <asp:TextBox ID="TextBox1" CssClass="HideRow" runat="server" AutoPostBack="False"
                                                    Width="50px"></asp:TextBox>
                                                <asp:TextBox ID="TypeTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"></asp:TextBox>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow ID="MonthRow" Height="20" Width="100%" CssClass="HideRow">
                                            <asp:TableCell ID="MonthTD" ColumnSpan="4" HorizontalAlign="Center" VerticalAlign="Middle">
                                                <span id="NextMonth" class="HideRow" runat="server" style="font-weight: normal"></span>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <span id="PrevMonth" runat="server" style="font-weight: normal" />
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow Width="100%" CssClass="HideRow" ID="DDlRow">
                                            <asp:TableCell CssClass="MainTd">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:DropDownList runat="server" ID="MonthDdl" AutoPostBack="true">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:DropDownList runat="server" ID="YearDdl" AutoPostBack="true">
                                                </asp:DropDownList>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell ColumnSpan="4">
                                                <asp:Table ID="DisTable" EnableViewState="false" runat="server" HorizontalAlign="center"
                                                    CellPadding="0" CssClass="SubTable" CellSpacing="1" Width="100%">
                                                </asp:Table>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </asp:TableCell>
                                <asp:TableCell VerticalAlign="Middle" HorizontalAlign="Center">
                                    <asp:ImageButton Visible="true" ID="Nxt" Style="position: absolute;" runat="server"
                                        ImageUrl="../IMAGES/nextoccupancy.jpg" />
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
