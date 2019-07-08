<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QAActivites.aspx.cs" Inherits="ImageManipulation.QAActivites" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Image Viewer</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script type="text/javascript" src="ClientScripts/jquery.min.js"></script>
    <script src="ClientScripts/jquery.metadata.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="ClientScripts/jquery.maphilight.min.js"></script>

   <script type="text/javascript">$(function() {
		$('.map').maphilight();
	});
    </script>
    
   
</head>
<body>
    <form id="form1" runat="server">
        <div id="DImageHolder">
        </div>
        <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                        HorizontalAlign="center" ID="Table2">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                               
                            </asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold;" Text="Image Code"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold;" Text="Description"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ImageTd" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <div align="CENTER">
                                    <map name="map1">
                                        <%=MapText%>
                                    </map>
                                    <asp:Image ID="imgCrop" runat="server" usemap="#map1" class="map" />
                                </div>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                             
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


<script language=javascript>
function callme(Cnt,Url)
    {
        var recary = new Array(); 
          
            var xmlhttp;
            try
            {
                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
            }
            catch(ex)
            {
                try 
                {
                    xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                }
                catch(ex)
                {
                    try
                    {
                        xmlhttp=new XmlHttpRequest();
                    }
                    catch(ex)
                    {
                        alert("please update the webbrowser");
                    }
                }
            }
            xmlhttp.onreadystatechange=function()
            {
                if(xmlhttp.readystate==4)
                {
                    var DispTbl = xmlhttp.responseText;
                    document.getElementById("ChartDataTr").className="MainTD"
                    document.getElementById("ChartTD").innerHTML=DispTbl
                    xmlhttp =null;
                }
            }
            var url="ReadMenuStatus_Ajax.aspx?Url="  + Url
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
    }
</script>


</html>
