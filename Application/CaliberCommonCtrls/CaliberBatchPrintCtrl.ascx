<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CaliberBatchPrintCtrl.ascx.vb" Inherits="CaliberCommonCtrls.CaliberBatchPrintCtrl"  %>

<script language="javascript" src="../CaliberCommonCtrls/Reports2.js"></script>
 
<script language="javascript" id="clientEventHandlersJS"> 

function CaliberPrintCls1_AfterPrint() {
	//alert("Print Completed")
	 
}

function CaliberPrintCls1_BeforePrint() {
	//alert("Before Print")
}

function CaliberPrintCls1_PrinterError() {
alert("Print Error: " + document.all("CaliberPrintCls1").PrintErrDesc)

}
	</script>
		<script language="javascript" event="AfterPrint" for="CaliberPrintCls1">
CaliberPrintCls1_AfterPrint()
	</script>
		<SCRIPT language="javascript" event="BeforePrint" for="CaliberPrintCls1">
 CaliberPrintCls1_BeforePrint()
	</SCRIPT>
		<SCRIPT language="javascript" event="PrinterError" for="CaliberPrintCls1">
 CaliberPrintCls1_PrinterError()
	</SCRIPT>
		<OBJECT id="CaliberPrintCls1" CLASSID="CLSID:E05F63B2-5F0D-41E5-BB78-94E869334E81" name="CaliberPrintCls1"
		VIEWASTEXT>
		 
	</OBJECT>
			<input id="Button1" onclick="fnPrintMain()" type="button" value="Print" name="Button1">
		</P>
		<span id="ConvSpan" style="display:none"></span>
		<SCRIPT language="vbscript">
function GetEnabledString(tempStr)
tempStr = Replace(tempStr,"<SUP>","{SUP}")
tempStr = Replace(tempStr,"</SUP>","{/SUP}")
tempStr = Replace(tempStr,"<SUB>","{SUB}")
tempStr = Replace(tempStr,"</SUB>","{/SUB}")

document.all("ConvSpan").innerHTML =tempStr
tempStr=document.all("ConvSpan").innerText 
GetEnabledString = Replace(tempStr,vbcrlf," $$$$$ ")
end function
 function ReplacePx(pxSize)
 pxSize=lcase(pxSize)
ReplacePx=Replace( pxSize ,"px","")
end function
	</SCRIPT>

<script language=javascript>
<!--
var CompanyAddr='<%=replace(Session("CompanyAddr"),vbcrlf, " $$$$$ ")%>'
 
//-->
</script>