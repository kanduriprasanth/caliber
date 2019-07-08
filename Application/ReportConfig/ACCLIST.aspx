<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ACCLIST.aspx.vb" Inherits="ReportConfig.ACCLIST" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
   <script language="javascript">
    
        function FnCreateXML(FileName,TransName)
        {
            var xmlHttp;
            try 
            {    
                //FF, Opera, Safari, Chrome, IE7+
                xmlHttp = new XMLHttpRequest();  
            } 
            catch(e) 
            {    
                try 
                {      
                    //IE6+
                    xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
                } 
                catch(e) 
                {
                    try 
                    {
                        //IE5+
                        xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                    } 
                    catch(e) 
                    {
                        xmlHttp  = null;
                    }
                }
            }  

            if (xmlHttp!=null)
            {
                xmlHttp.onreadystatechange=function()
                {
                    if(xmlHttp.readyState==4)
                    {  
                        var s = xmlHttp.responseText;
                        if(s=="1")
                        {
                           alert('File Created');
                        }
                        else if(s=="2")
                        {
                           alert('No Record Available');
                        }
                        else
                        {
                            alert('Failed');
                        }
                        
                    }
                        
                    
                }
            }  
        
            var url="CreateXML.aspx?FileName=" + FileName + "&TransName=" + TransName ;
            xmlHttp.open("GET",url,true);
            xmlHttp.send(null);
        }
        
    </script>
    

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Table ID="IssueTab" CssClass="SubTable" runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                                 BorderWidth="0"></asp:Table>
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
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Right">
                                <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <asp:TextBox ID="IssueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssueAulIdTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
