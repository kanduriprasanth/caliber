<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintDocument.aspx.cs" Inherits="DMSManagement.PrintDocument" %>

<!DOCTYPE html/>
<html lang="en">
<head runat="server">
    <title>Untitled Page</title>
     <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript">

        function CheckFileType() {
            if(<%=LoadActivex %>==1)
            {
                GenerateBatchData();
            }
        }

        function isWordInstalled() {
            try {
                var ActiveXObjeIns = document.getElementById("CaliberDocumentViewer");
                if (ActiveXObjeIns.IsWordInstalled() == false) {
                    //alert("MS Word Not Installed!")
                    return false;
                }
            }
            catch (e) {
                alert("ActiveX Component Not Installed");
                return false;
            }
            return true;
        }

        function getTemplatePath() {
           
            var THrefArr = [];
            var HrefArr = [];
            var HrefArr1 = [];
            THrefArr = window.location.href.split("/");

            for (var i = 0; i < THrefArr.length - 2; i++) {
                HrefArr[i] = THrefArr[i];
            }

            for (var i = 0; i < THrefArr.length - 3; i++) {
                HrefArr1[i] = THrefArr[i];
            }
            var Href = HrefArr.join("/");
            var Href1 = HrefArr1.join("/");
            var FilePath = "<%=FilePath%>";

            if(FilePath != "")
            {
                var TFilePathArr = [];
                var T1FilePathArr = [];
                TFilePathArr = FilePath.split("\\");

                for(var i=2;i<TFilePathArr.length;i++)
                {
                    T1FilePathArr[i-1] = TFilePathArr[i];
                }
                FilePath = T1FilePathArr.join("\\")
            }

            return Href + FilePath;
        }

        function GenerateBatchData() {
            //Creating HTML Files at Client Location
            var HelloWorldControl1Ins = document.getElementById("CaliberDocumentViewer");

            //Load The Tempalte. DAT File
            var TemplatePath = getTemplatePath();
            HelloWorldControl1Ins.LoadDocument(TemplatePath);
            HelloWorldControl1Ins.InsertFooter("<%=FooterString%>");
            HelloWorldControl1Ins.SetPassword("Caliber_09");
            HelloWorldControl1Ins.PreviewDocument(3);      
    }
 
    
     
    </script>
    
</head>
<body>
    <form autocomplete="off" id="form1" runat="server">
        <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" Width="100%" runat="server">
        <asp:TableRow>
            <asp:TableCell CssClass="MainHead">
                <asp:Literal ID="MainTitleLtrl" runat="server">Preview</asp:Literal>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <!-----------Base table------------->
                <asp:Table ID="DataTab" runat="server" CssClass="SubTable" HorizontalAlign="center" Width="100%">
                    <asp:TableRow ID="HTMlPreviewTd" CssClass="HideROw">
                        <asp:TableCell>
                            <div style="overflow: auto; height: 500px; width: 100%;">
                                <iframe id="docFrame" runat="server" style="width: 100%; height: 460px;"></iframe>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="WordPreviewTd" CssClass="HideRow">
                        <asp:TableCell>
                                <div id="ActiveXDiv" style="height: 620px;width:100%;overflow-y:hide;" >
                                <%  
                                    Response.WriteFile("../DMSManagement/ActiveX.inc");
                                %>
                                </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow1">
                        <asp:TableCell CssClass="MainTd" HorizontalAlign="Center">
                             <span id="PrinterOptSpan">
                                    <select id="PrinterSelList" style="width:150px">
                                        <option value=""> [ Select ] </option>
                                    </select>
                                     <input id="BtnPrint" type="button" value="Print" onmouseover="this.className='ButOCls'"
                                    class='ButCls' accesskey="C" onmouseout="this.className='ButCls'" onclick="PrintDocument()"/>
                            </span>
                            <asp:TextBox ID="cntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="DocIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="BdyChldId" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="RgsId" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="BdyId" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="PrntCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="PrntCpytxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            <asp:TextBox ID="PrntCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="MainFoot">
            <asp:TableCell>
              
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </form>
</body>
<script type="text/javascript">
//    var yval = parseInt(screen.availHeight) - 20
//    document.getElementById("docFrame").style.height = yval;
//    document.oncontextmenu = new Function("return false")
    //    document.onclick = new Function("return false")
    CheckFileType();
</script>

<script type="text/javascript">
    function LoadPrinters()
    {
        try
        {
            var ActiveXObjeIns = document.CaliberDocumentViewer
            if(ActiveXObjeIns.IsWordInstalled()==true)
            {
                var PrintestList = new Array();
                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById("PrinterSelList");
                for (var k =0;k<PrintestList.length;k++)
                {
                    var oOption = document.createElement("OPTION");
                    oOption.text= PrintestList[k];
                    oOption.value= PrintestList[k];
                    PrinterSelObj.add(oOption)
                }
            }
        }
        catch (e)
        {
            alert("ActiveX Component Not Installed!");
            return false;
        }
    }
    
    var ActiveXObjeIns = document.CaliberDocumentViewer

    LoadPrinters()
    
    function PrintDocument()
    {   
         if(document.getElementById("PrinterSelList").value!="")
         {
             var ActiveXObjeIns = document.getElementById("CaliberDocumentViewer");
             var PrntSts=ActiveXObjeIns.PrintDocument1(document.getElementById("PrinterSelList").value);
            
                opener.FnCallAjax(document.getElementById("BdyChldId").value,document.getElementById("cntTxt").value,document.getElementById("RgsId").value,document.getElementById("BdyId").value,"<%=RmrkVal%>",document.getElementById("PrntCntTxt").value,document.getElementById("PrntCpytxt").value,document.getElementById("PrntCodeTxt").value);
                var pageURL="../AuditTemplate/WSPConfirm.aspx";
	            window.showModalDialog( pageURL ,'Caliber QAMS','dialogheight=6;dialogwidth=10;help=0;status=0;scroll=0;edge=raised;')
           
             window.close();
         }
         else
         {
            alert('Select Printer');
         }
    }
    
    function CloseWindow()
    {
        window.close();
    }
</script>


</html>
