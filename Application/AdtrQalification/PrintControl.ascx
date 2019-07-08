<%@ Control Language="vb" AutoEventWireup="false" Codebehind="PrintControl.ascx.vb"
    Inherits="AdtrQalification.PrintControl" %>

<script type='text/javascript' src='../JScript/jquery.simplemodal.js'></script>

<script language="javascript">
    function CloseDocument()
    {
        if(IsActiveXInstalled() == true)
        {
            if(CaliberDocumentViewerIns.IsDocumentLoaded ==true)
            {
                CaliberDocumentViewerIns.CloseControl();
            }
        }
    }

    function IsActiveXInstalled()
    {
        if(typeof(CaliberDocumentViewerIns.RedApplicationPath) == "undefined")
        {
            alert("ActiveX Not Installed");
            return false;;
        }
        return true;
    }

    function OnError(Oevent)
    {
       
        alert(Oevent);
    }

    var CaliberDocumentViewerIns = document.getElementById("CaliberDocumentViewer");
    CaliberDocumentViewerIns.ScriptCallbackObjectForErrors = OnError;
    
    (function ($) {
        $(window).unload(function(){
            CloseDocument();
            DeleteTempDocument();
        });
    })(jQuery);

    

    var DeleteFiles = [];
    var DeleteFilesCnt =0;

 function DeleteTempDocument()
    {
        if(DeleteFiles.length > 0)
        {
            CaliberDocumentViewerIns.DeleteHTMLFiles(DeleteFiles.join("#*#"));
            DeleteFiles.length = 0;
        }
    }

    function MakeParameterList(paramArray) {

                 var paramList = '';

         if (paramArray.length > 0) {

             for (var i = 0; i < paramArray.length; i += 2) {

                 if (paramList.length > 0) paramList += ',';

                 paramList += '"' + paramArray[i] + '":"' + paramArray[i + 1] + '"';

             }

         }

         paramList = "{" + paramList + "}";

         return paramList;

     }

  function CheckData()
 {
 
    var PrinterName = document.getElementById("PrinterSelList").value;
    if (PrinterName !='')
    {
        
        var ActiveXObjeIns  = document.getElementById("CaliberDocumentViewer")
        var PrinterProperties = ActiveXObjeIns.ReadPrinterProperties(PrinterName,"");
        PrinterProperties = PrinterProperties.replace( /\\/gi, '@@@@@' ) ;
        
        var JSONObj = jQuery.parseJSON(PrinterProperties);
        var  DriverName=JSONObj.DriverName
        
        //added for ip address
        var IpAddress=JSONObj.SystemName
       DriverName=DriverName+"("+IpAddress+")"
      //  alert(JSONObj.AvailableJobSheets.replace( /@@@@@/gi, '\\'));
       
        document.getElementById("SelPrintTD").className="HideRow"
        document.getElementById("ChangePrintTD").className="ButexCls"
        AjaxLoadPage(PrinterName,DriverName)
        //document.forms(0).submit();
        
    }   
    else
     {
      alert ("Select Printer")
     } 
        
   } 
     // function To buld Session
        
    function AjaxLoadPage(PrinterName,DriverName) {
         $.ajax({
             type: "POST",
             
             url: "BuildPrintSession.aspx",
             data:"PrinterName=" +  PrinterName  +  "&DriverName=" + DriverName ,
             success: function (data) {
                    $.modal.close();
                    PrinterNameSet(PrinterName);
                    DriverNameSet(DriverName);
                    document.getElementById("PrintCtrl_DisplayValueDiv").className="HideRow" 
             }
             ,
             error:  function (xhr, errorType) {
                var Error = xhr.responseText;
                alert(Error);
            }
         });
         return false;
     }


function CancelPrint()
{
  document.getElementById("PrintCtrl_DisplayValueDiv").className="HideRow" ;
  //$.modal.close();
}
        
    function SelectPrinter()
   {
    document.getElementById("PrintCtrl_DisplayValueDiv").className="MainTD"
    $('#PrintCtrl_DisplayValueDiv').modal();     
   }
   
</script>

<div id="DisplayValueDiv" runat="server" style="width: 20%; height: 10%" class="HideRow">
    <asp:Table ID="PrintSeltab" CssClass="SubTable" runat="server" Width="15%" Height='10%'>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
          
            <span id="Span1" >
                <select id="PrinterSelList" >
                 <option value=""> [ Select ] </option>
                 </select>
            </span>

            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
             <input id="SubmitBtn" type="button" value="Submit" onmouseover="this.className='ButOCls'"
        class='ButCls'  onmouseout="this.className='ButCls'"   onclick="CheckData()"/>
        
         <input id="CanCelBtn" type="button" value="Cancel" onmouseover="this.className='ButOCls'"
        class='ButCls' onmouseout="this.className='ButCls'"   onclick="CancelPrint()"/> 
        
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</div>
<input id="SelPrintTD" type="button" value="Select Printer" onmouseover="this.className='ButexOCls'"
    class='ButexCls' onmouseout="this.className='ButexCls'" onclick="SelectPrinter()" />
<input id="ChangePrintTD" type="button" value="Change Printer" onmouseover="this.className='ButexOCls'"
    class='HideRow' onmouseout="this.className='ButexCls'" onclick="SelectPrinter()" />

<script language="javascript">
 
     function LoadPrinters(ActiveXId,PrinterSelddlId)
    {
        try
        {
            var ActiveXObjeIns = document.getElementById(ActiveXId);
            if(ActiveXObjeIns.IsWordInstalled()==true)
            {
                var PrintestList = new Array();
                PrintestList = ActiveXObjeIns.ReadPrinters().split("#*#");
                var PrinterSelObj = document.getElementById(PrinterSelddlId);
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
    LoadPrinters("CaliberDocumentViewer", "PrinterSelList");
    
    function getDocFilePath(DocFilePath) {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.substring(0,window.location.href.lastIndexOf(".")).split("/")
        for (var i = 0; i < THrefArr.length - 2; i++) {
            HrefArr[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        return Href + DocFilePath.replace("..", "");
    }
    
     function getTemplatePath()
    {
        var THrefArr = [];
        var HrefArr = [];
        var HrefArr1 = [];
        THrefArr = window.location.href.split("/");

        for(var i=0;i< THrefArr.length - 2;i++)
        {
            HrefArr[i] = THrefArr[i];
        }

        for(var i=0;i< THrefArr.length - 3;i++)
        {
            HrefArr1[i] = THrefArr[i];
        }
        var Href = HrefArr.join("/");
        var Href1 = HrefArr1.join("/");

        return Href1 + "/HtmlFiles/Template.dot"; //HtmlFiles/Template.dot"; ///HtmlFiles/SampleTemplate.dot";
    }
    
    
     function disablePrint()
    {
       if("<%=Request.QueryString("PrintFlag")%>" =="1" && ("<%=Request.QueryString("MrStatus")%>"=="0"||"<%=Request.QueryString("MrStatus")%>"==''||"<%= Session("MRstatus")%>"=="0") ) 
        {
          if ("<%=Session("PrinterName") %>" != '')
          {
             document.getElementById("SelPrintTD").className ="HideRow"   
             document.getElementById("ChangePrintTD").className ="ButexCls"   
             document.getElementById("PrintCtrlTD").className ="" 
               
          }
        }
        else{
         document.getElementById("PrintCtrlTD").className ="HideRow"  ; 
          document.getElementById("PrintTD").className ="HideRow" ;
          }
        
    }
   disablePrint()

var PrinterName;
var DriverName;
    
    
   function _printDocument()
    {

 
    DriverName=DriverNameVal();
    PrinterName=PrinterNameVal();
        if(PrinterName !="")
        {
             //ShowMask();
            setTimeout("_printDocumentCall()",1000);
        }
        else
        {
          alert("Select Printer")
        }
    }
    
   
</script>

<script type="text/vbscript">
   
   dim  MPrinterNameVal
   dim MDriverNameVal
    Public function PrinterNameVal()
        PrinterNameVal = MPrinterNameVal
    end function

   Public  function DriverNameVal()
        DriverNameVal = MDriverNameVal 
    end function
    
   Public function PrinterNameSet(Byval Val)
           MPrinterNameVal = Val
    end function

    Public function DriverNameSet(Byval Val)
        MDriverNameVal = Val
    end function
    PrinterNameSet("<%=Session("PrinterName")%>")
    DriverNameSet("<%=Session("DriverName")%>")

</script>

