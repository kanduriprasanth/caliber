<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DocPrintList.aspx.vb" Inherits="AuditTemplate.DocPrintList" %>
<%@ Register TagPrefix="uc3" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx"  %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Attachment(s) List</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script type="text/javascript">

        function CheckFileType() {
            if(<%=LoadActivex %>==1)
            {
                GenerateBatchData();
            }
        }

        function isWordInstalled() {
            try {
                var ActiveXObjeIns = document.getElementById("HelloWorldControl1");
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
            var HelloWorldControl1Ins = document.getElementById("HelloWorldControl1");

            //Load The Tempalte. DAT File
            var TemplatePath = getTemplatePath();
            HelloWorldControl1Ins.LoadDocument(TemplatePath);
            HelloWorldControl1Ins.SetPassword("Caliber_09");
            HelloWorldControl1Ins.PreviewDocument(3);

        }
 
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Attachment(s) List</asp:Literal>
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
                            <asp:TableCell CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Attachment(s)</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">
                                 <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DocumentTab"></asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                     <asp:Table ID="PrevwTab" runat="server" CellPadding="0" CellSpacing="1" CssClass="HideRow"
                        HorizontalAlign="center" Width="100%">
                         <asp:TableRow ID="HTMlPreviewTd">
                        <asp:TableCell CssClass="MainTD">
                            <div style="overflow: auto; height: 500px; width: 100%;">
                                <iframe id="docFrame" runat="server" style="width: 100%; height: 460px;"></iframe>
                            </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="WordPreviewTd">
                        <asp:TableCell CssClass="MainTD">
                                <div style="overflow: auto;height: 500px;width:100%;" >
                                    <object id="HelloWorldControl1" classid="clsid:EFCF98EC-07DE-4127-97C2-76F3C2C4ECD5"
                                        height="500px" width="99%"></object>
                                </div>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow1">
                        <asp:TableCell CssClass="MainTD" HorizontalAlign="Center">
                             <uc3:caliberprintctrl id="CaliberPrintCtrl1" runat="server"></uc3:caliberprintctrl>
                        </asp:TableCell>
                    </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell><asp:Button ID="Btn" runat="server" /></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        </asp:TableRow>
                    </asp:Table>
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
    
//    function CallDms(RmrkVal)
//    {
//        var pageURL="../DMSManagement/PrintDocument.aspx?DocId=" + IndexId + "&BdyChldId=" + BdyChildId + "&Cnt=" + cnt + "&BdyId=" + BdyId + "&RgsId=" + RgsId + "&RmrkVal=" + RmrkVal;
//        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=700,width=900,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
//        if(SpWinObj.opener == null) SpWinObj.opener=self;
//        SpWinObj.focus();
//    }
    function PrintDoc(cnt,IndexId,BdyChildId,BdyId,RgsId,Flag)
    {  debugger
     if(Flag==1)
        {
            var pageURL="RsnRemark.aspx";
	        var RmrkVal=window.showModalDialog( pageURL ,'Caliber QAMS','dialogheight=7;dialogwidth=30;help=0;status=0;scroll=0;edge=raised;')
	        if(RmrkVal==undefined)
	        {
	            return false;
	        }
	        var pageURL="../DMSManagement/PrintDocument.aspx?DocId=" + IndexId + "&BdyChldId=" + BdyChildId + "&Cnt=" + cnt + "&BdyId=" + BdyId + "&RgsId=" + RgsId + "&RmrkVal=" + RmrkVal;
            var SpWinObj = window.open(pageURL,'DMSPopUp',"height=700,width=900,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            var pageURL="../DMSManagement/PrintDocument.aspx?DocId=" + IndexId + "&BdyChldId=" + BdyChildId + "&Cnt=" + cnt + "&BdyId=" + BdyId + "&RgsId=" + RgsId;
	        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=700,width=900,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
   
	    //window.showModalDialog( pageURL ,'Caliber QAMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	    //window.history.back()			
    }
    
//    function ShowMsg(BdyChldId,cnt,RgsId,BdyId,Status)
//    {
//        if(Status!="")
//        {
//            document.getElementById("PrntTd_" + cnt).innerHTML = Status;
//        }
//    }
    
function FnCallAjax(BdyChldId,cnt,RgsId,BdyId,RmrkVal,PrntCnt,PrntCpy,PrntCde)
    {
//		    RgsChildId = RgsChildId;
//		    Cnt = Cnt;
		    
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
                       document.getElementById("PrntTd_" + cnt).innerHTML="Print Taken";
                       Form1.submit();
                    }
                    else
                    {
                         alert('Print Upload Failed')                                 
                    }
                    
                }
                    
                
            }
        }            
        var url="Prnit_Ajax.aspx?BdyChldId=" + BdyChldId + "&RgsId=" + RgsId + "&BdyId=" + BdyId + "&PrntCnt=" + PrntCnt + "&PrntCpy=" + PrntCpy + "&PrntCde=" + PrntCde + "&RmrkVal=" + RmrkVal;
        xmlHttp.open("GET",url,true);
        xmlHttp.send(null);
		}
		
</script>
</html>
