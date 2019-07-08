<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BatDetials.aspx.vb" Inherits="SAPBATSTS.BatDetials" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Batch Details </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">


   
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
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
                                <asp:Literal ID="SubTitleLtrl" runat="server"> Batch Details</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                       <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BATDetTD">
                            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                HorizontalAlign="center" ID="BatDetTab">
                                <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BatchTd" width ="35%"> Batch No.</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" >
                                <asp:Label ID="BatchNoLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="BatchNoTxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="PlantNoTr"> SAP Plant No.</asp:TableCell>
                            <asp:TableCell CssClass="MainTD"  >
                                <asp:Label ID="PltNoLbl" runat="server" Text=""></asp:Label> 
                                <asp:TextBox ID="PltNotxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MfgdateTd" > Mfg. Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD"  >
                                <asp:Label ID="MfgdateLbl" runat="server" Text=""></asp:Label>
                                 <asp:TextBox ID="MfgdateTxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ExpdateTd"  > Exp. Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="ExpdateLbl" runat="server" Text=""></asp:Label>
                                  <asp:TextBox ID="ExpdateTxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QualityTd">Quality Inspection No./A. R. No</asp:TableCell>
                            <asp:TableCell CssClass="MainTD"  >
                                <asp:Label ID="QualityLbl" runat="server" Text=""></asp:Label> 
                                <asp:TextBox ID="QualityTxt" runat="server" CssClass="HideRow" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          
                        <asp:TableRow CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="OtherDetailsTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="OtherDetailsLbl" runat="server" Text=""></asp:Label> 
                                <asp:TextBox ID="OtherDetailsTxt" runat="server" CssClass="Hiderow" TextMode="MultiLine"
                                    onkeypress="taLimit()" onkeyup="taCount()" MaxLength="250" Width="200px" TabIndex="6"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
          
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" 
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
