<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WordFormatReport_pdf.aspx.vb"
    Inherits="CAPAWORKS.WordFormatReport_pdf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD  HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>Issue Report</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
</head>
<body>
    <form id="Form1" method="post" runat="server">
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Panel ID="HeaderDiv" runat="server" Width="100%" HorizontalAlign="Left" Style="background-color: White"
                                    EnableViewState="False">
                                </asp:Panel>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="EditorTd" runat="server" CssClass="MsoTableGrid" ColumnSpan="2"
                                Width="100%">
                                <asp:Table ID="TemplateTab" runat="server" CssClass="SubTable" CellPadding="0" Width="100%"
                                    CellSpacing="0" BackColor="white" BorderColor="white" Style='border-right: medium none;
                                    border-top: medium none; border-left: 0px; width: 100%; border-bottom: medium none;
                                    border-collapse: collapse; background-color: white; width: 100%;'>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Panel ID="FooterDiv" runat="server" Width="100%" HorizontalAlign="Left" EnableViewState="False"
                                    Style="background-color: White">
                                </asp:Panel>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" Style="background-color: White">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="IsuLogTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ClserTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ClserTrTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="BatchTD" runat="server">
                                <asp:Literal ID="SampleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                             <input type =button onclick="ExternalPdfCreation()" value="Chick Me For The Gift" />
                                <asp:Button CssClass="HideRow" runat="server" ID="IssClsBtn" onMouseOver="this.className='ButSelOCls'"
                                    AccessKey="C" onMouseOut="this.className='ButSelCls'" Text="" Width="100"></asp:Button>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Back"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:TextBox ID="TempIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TempTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <input type="text" id="HeaderTxt" />
                    <input type="text" id="BodyTxt"" />
                    <input type="text" id="FooterTxt" />
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="TempValTab">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
  function WordFormatCorrections(WordContent)
    {
        WordContent = WordContent.replace(/<(\w[^>]*) src="\s*([^/userfiles]*)([^>]*)/gi, "<$1 src=\""+window.location.href.substring(0, window.location.href.indexOf(window.location.pathname))+"$3") ;
        WordContent = WordContent.replace( /<SPAN ([^>]*) fieldtype="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) calfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        WordContent = WordContent.replace( /<SPAN ([^>]*) workflowfld="([^>"]*)"*>([\s\S]*?)<\/SPAN>/gi,"<span style='color:\"Blue\";display:\"inline\";font-size:\"11px\";font-weight:\"normal\";text-align:\"left\";font-family:\"Verdana\";font-style:\"oblique\";'>$3</span>");
        return WordContent;
        var ValFld = window.location.href.substring(0, window.location.href.indexOf(window.location.pathname)+1) + window.location.pathname.substring(1,window.location.pathname.substring(1).indexOf("/")+1) + "/userfiles"
        WordContent = WordContent.replace( /<(\w[^>]*) src=([^http:\/\/]*)userfiles\s?([^>]*)/gi, "<$1 src=\""+ValFld+"$3") ;
        return WordContent;
    }
    
function ExternalPdfCreation()
    {
        var TempIdLst =document.getElementById("TempIdTxt").value
        var TempIdLst1 =document.getElementById("TempTxt").value
        
        TempIdLst=TempIdLst.substring(1)
        TempIdLst1=TempIdLst1.substring(1)
        
        var TempIdArr=new Array()
        var TempIdArr1=new Array()
        var FilePathArr=new Array()
        
        TempIdArr=TempIdLst.split(",");
        TempIdArr1=TempIdLst1.split(",");
        
        var FilePath = "" 
        var Content = ""
        var DataContent = ""
        
        for(var TempId=0;TempId<TempIdArr.length;TempId++)
        {
          if(TempIdArr[TempId]!="0" && <%=ClstempId%> != TempIdArr[TempId] )
            {
                Content = document.getElementById("Body_"+TempIdArr[TempId] + "_" + TempIdArr1[TempId]).innerHTML;
                Content = Content == "" ? " " : Content;
                DataContent += Content + "<p class=MsoNormal><o:p></o:p></p>";
             }
        }
        
        if (<%=ActPlnStatus%> !=0)
        {
          var PlanCout=<%=PlanCout%>
          for(var i=0;i<PlanCout;i++)
          {
            Content = document.getElementById("PlanBody_" + <%=ClstempId%> + "_" +  i).innerHTML;
            Content = Content == "" ? " " : Content;
            DataContent += Content //+ "<p class=MsoNormal><o:p></o:p></p>";
          }  
        
        }
        Content = document.getElementById("Body_"+<%=ClstempId%> + "_" +  <%=Request.QueryString("IsuLogID")%>).innerHTML;
        Content = Content == "" ? " " : Content;
        DataContent += Content
        
        DataContent=WordFormatCorrections(DataContent)
        document.getElementById("BodyTxt").value=DataContent
        
        Content = document.getElementById("Header").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        document.getElementById("HeaderTxt").value=Content

        Content = document.getElementById("Footer").innerHTML;
        Content = Content == "" ? " " : Content;
        Content=WordFormatCorrections(Content)
        document.getElementById("FooterTxt").value=Content
        
    }
    
    
</script>

</html>
