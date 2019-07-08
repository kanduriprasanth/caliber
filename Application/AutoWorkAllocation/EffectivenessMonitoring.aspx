<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EffectivenessMonitoring.aspx.vb"
    Inherits="AutoWorkAllocation.EffectivenessMonitoring" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
    <meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
    <meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
    <meta content="JavaScript" name="vs_defaultClientScript">
    
    <link href="../TRIMS.css" rel="stylesheet">
    <script language="javascript" src="../JScript/Common2.js"></script>
</head>
<body>
    <form id="Form1" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                        <asp:TableRow CssClass ="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="RecListTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                                                                     
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                         </asp:TableRow>
                      </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow >
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <input type ="button" onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"
                                Width="70px" value ="Generate" onclick="Ajax_EffectnessMonitoring()" />
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
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


<script language="javascript">
            
//            function Ajax_EffectnessMonitoring()
//             {
//               var recary = new Array(); 
//              
//                    var xmlhttp;
//                    try
//                    {
//                        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//                    }
//                    catch(ex)
//                    {
//                        try 
//                        {
//                            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
//                        }
//                        catch(ex)
//                        {
//                            try
//                            {
//                                xmlhttp=new XmlHttpRequest();
//                            }
//                            catch(ex)
//                            {
//                                alert("please update the webbrowser");
//                            }
//                        }
//                    }
//                    
//                    xmlhttp.onreadystatechange=function()
//                    {
//                        if(xmlhttp.readystate==4)
//                        {
//                            var RtnStr="abc"
//                            var ReturnArr =new Array()
//                            RtnStr=xmlhttp.ResponseText
//                            document.Form1.submit ()
//                                                     
//                        }
//                    }  
//                    var url="..AutoWorkAllocation/WorkAllocationAndMailCFG.aspx?RequestType=4" 
//                    xmlhttp.open("POST",url,true);
//                    xmlhttp.send(null);
//             }


</script>

</html>
