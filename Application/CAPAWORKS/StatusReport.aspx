<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="StatusReport.aspx.vb" Inherits="CAPAWORKS.StatusReport" %>

<%@ Register TagPrefix="uc2" TagName="CaliberPrintCtrl" Src="../CaliberCommonCtrls/CaliberPrintCtrl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.Text%></title>
    
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link href="../TRIMS.css" rel="stylesheet">
    <style type="text/css">
    
    
     .down1 { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 30%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/down.gif); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 15px; BORDER-RIGHT-WIDTH: 1px }
.up1 { BORDER-TOP-WIDTH: 1px; BACKGROUND-POSITION: center 30%; BORDER-LEFT-WIDTH: 1px; BACKGROUND-IMAGE: url(../Images/up.gif); BORDER-BOTTOM-WIDTH: 1px; WIDTH: 15px; BACKGROUND-REPEAT: no-repeat; HEIGHT: 15px; BORDER-RIGHT-WIDTH: 1px }
    .chkCls { BORDER-RIGHT: 1px groove; BORDER-TOP: 1px groove; BORDER-LEFT: 1px groove; WIDTH: 18px; BORDER-BOTTOM: 1px groove; HEIGHT: 18px; BACKGROUND-COLOR: #f7fbff; BORDER-COLOR:#f7fbff }
    
    .InputTxtCls{Border-Style:none;Border-Color:#ffffff;Border-Width:1px;font-family:Microsoft Sans Serif,Arial;font-size:9pt;color:'#96987d';Font-weight:bold;}
.OccClass
{
	width: 30%;
	height: 5px;
	border-bottom: black 0.2pt solid;
	border-left: black 0.2pt solid;
	border-top: black 0.2pt solid;
	border-right: black 0.2pt solid;
}

.OccClass1
{
	width: 10%;
	height: 100%;
	border-bottom: black 0.2pt solid;
	border-left: black 0.2pt solid;
	border-top: black 0.2pt solid;
	border-right: black 0.2pt solid;
}
    
    .BackImgTD
    
{
    background-image:url(../images/bg_hd.gif);
}

.EqpListTable{

Color:#00000;Height:20px;Font-weight:normal;font-family:Verdana,Arial;font-size:8.6pt;Padding-bottom:5px;

}

.StyleTD
{
Background-Color:#FFFFFF;font-family:Verdana,Arial;font-size:8pt;Padding-Left:3px;Padding-Top:2px;Padding-Bottom:2px; padding-right:3px;

}


</style>

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>

</head>
<body ms_positioning="GridLayout" onload="javascript:GraphSel()">
    <form id="form1" runat="server" >
        <asp:Table ID="Table1" runat="server" CssClass="MainTable" HorizontalAlign="center"
            BorderWidth="3" CellSpacing="0" CellPadding="0" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead" ForeColor="black">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                    <asp:Panel ID="Panel1" runat="server" CssClass="HideRow" Width="100%" HorizontalAlign="Left"
                        EnableViewState="False">
                        <asp:Label ID="H1" Style="padding-right: 0px; padding-left: 0px; font-size: 12px;
                            padding-bottom: 0px; margin-left: 0px; padding-top: 0px; background-color: white;
                            text-align: center; font-bold: true" Width="100%" runat="server">&nbsp; &nbsp;</asp:Label>
                        <asp:Table ID="H2" Style="font-size: 10px; margin-left: 0px; font-family: Arial"
                            BorderWidth="0" Width="100%" runat="server" CssClass="HideRow" CellSpacing="1"
                            CellPadding="1">
                            <asp:TableRow>
                                <asp:TableCell ID="Title1" HorizontalAlign="Center" Style="width: 720; font-size: 16;
                                    font-family: Times New Roman; font-weight: bold; padding: 0px; background-color: white;
                                    text-align: center">SESSION(S) DURATION REPORT</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </asp:Panel>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow CssClass="HideRow" > 
             <asp:TableCell CssClass="MainTD">
               <asp:Table ID="ValueTab" runat="server" HorizontalAlign="center" CellPadding="0" CssClass="SubTable"
                        CellSpacing="1" Width="100%"></asp:Table>
             </asp:TableCell>
            </asp:TableRow>
                     
            
            <asp:TableRow ID="ReportRow">
              <asp:TableCell runat="server" BackColor="#f7fbff" CssClass="MainTD" ID="Tablecell5" >
                <TABLE id="TABLE2"  BORDER="0" CELLSPACING="1" CELLPADDING="1" class="MainTable"
							align="center">
							<TR class="HideRow">
								<TD  style="font-size:x-small ; background-color:#f7fbff; color:#96987d" >&nbsp;&nbsp;&nbsp;Label Column No.&nbsp;&nbsp;<input name="TxtCol" class="TxtCls" value="2">
								</TD>
								<TD style="font-size:x-small ; background-color:#f7fbff; color:#96987d">&nbsp;&nbsp;Value Column No(s).&nbsp;&nbsp;<input name="NumCol" class="TxtCls" value="<%=ChartCol %>">
								</TD>
								
							</TR>
							<TR>
								<TD style="width:20%; font-size:x-small ; background-color:#f7fbff; color:#96987d">&nbsp;&nbsp;&nbsp;Chart&nbsp;Type&nbsp;&nbsp;&nbsp;<SELECT id="GraphSelect" name="GraphSelect" class="TxtCls" enableviewstate="false" onchange="GraphSel()">										
										<OPTION value="0">Column 3D</OPTION>
										<OPTION value="1" selected="selected">Column Clustered</OPTION>
										<OPTION value="2">Column Clustered 3D</OPTION>
										<OPTION value="3">Column Stacked</OPTION>
										<OPTION value="6">Column Stacked 3D</OPTION>
										<OPTION value="7">Bar 3D</OPTION>
										<OPTION value="8">Bar Clustered</OPTION>
										<OPTION value="9">Bar Clustered 3D</OPTION>
										<OPTION value="10">Bar Stacked</OPTION>
										<OPTION value="13">Bar Stacked3D</OPTION>
										<OPTION value="15">Doughnut</OPTION>
										<OPTION value="16">Doughnut Exploded</OPTION>
										<OPTION value="17">Line</OPTION>
										<OPTION value="18">Line 3D</OPTION>
										<OPTION value="19">Line Markers</OPTION>
										<OPTION value="20">Line Overlapped 3D</OPTION>
										<OPTION value="21">Line Stacked</OPTION>
										<OPTION value="25">Line Stacked 3D</OPTION>
										<OPTION value="26">Line Stacked Markers</OPTION>
										<OPTION value="27">Pie</OPTION>
										<OPTION value="28">Pie 3D</OPTION>
										<OPTION value="29">Pie Exploded</OPTION>
										<OPTION value="30">Pie Exploded3D</OPTION>
										<OPTION value="31">Pie Stacked</OPTION>
										<OPTION value="32">Polar Line</OPTION>
										<OPTION value="33">Polar LineMarkers</OPTION>
										<OPTION value="34">Polar Markers</OPTION>
										<OPTION value="35">Polar SmoothLine</OPTION>
										<OPTION value="36">Polar Smooth Line Markers</OPTION>
										<OPTION value="37">Radar Line</OPTION>
										<OPTION value="38">Radar Line Filled</OPTION>
										<OPTION value="39">Radar Line Markers</OPTION>
										<OPTION value="40">Radar Smooth Line</OPTION>
										<OPTION value="41">Radar Smooth Line Markers</OPTION>
										<OPTION value="42">Scatter Line</OPTION>
										<OPTION value="43">Scatter Line Filled</OPTION>
										<OPTION value="44">Scatter Line Markers</OPTION>
										<OPTION value="45">Scatter Markers</OPTION>
										<OPTION value="46">Scatter Smooth Line</OPTION>
										<OPTION value="47">Scatter Smooth Line Markers</OPTION>
										<OPTION value="48">Smooth Line</OPTION>
										<OPTION value="49">Smooth Line Markers</OPTION>
										<OPTION value="50">Smooth Line Stacked</OPTION>
										<OPTION value="53">Smooth Line Stacked Markers
										</OPTION>
										<OPTION value="54">Stock HLC</OPTION>
										<OPTION value="55">Stock OHLC
										</OPTION>
									</SELECT></TD>
								<TD style="width:20px;font-size:x-small ; background-color:#f7fbff; color:#96987d">Width</TD><TD style="width:30px;font-size:x-small ; background-color:#f7fbff; color:#96987d"><input type="button" class="ButCls"  value="+" onclick="WidthIn()"></TD><TD style="width:30px;font-size:x-small ; background-color:#f7fbff; color:#96987d"><input type="button" width="30px" class="ButCls" value="-" onclick="WidthOut()"></TD>
									<TD style="width:20px;font-size:x-small ; background-color:#f7fbff; color:#96987d">Height</TD><TD style="width:30px;font-size:x-small ; background-color:#f7fbff; color:#96987d"> <input type="button" class="ButCls" width="30px" value="+" onclick="HeightIn()"></TD><TD style="width:30px;font-size:x-small ; background-color:#f7fbff; color:#96987d"><input type="button"  class="ButCls" value="-" onclick="HeightOut()"></TD>
									<TD style="width:40px;font-size:x-small ; background-color:#f7fbff; color:#96987d"><input type="button" id="Button1"  class="ButSelCls" value="Display Chart" onclick="GraphSel()"></TD>
							</TR>
							
							</TABLE>
              </asp:TableCell>
            </asp:TableRow>
            
               <asp:TableRow ID="ChatrCompTr" >
                    <asp:TableCell ID="GraphTD" CssClass="MainTD" BackColor="#f7fbff" Style="width: 99%">
						<div id="div1" style="POSITION: relative;BORDER-RIGHT: #f7fbff solid; BORDER-TOP: #f7fbff  solid; BORDER-LEFT: #f7fbff  solid; WIDTH: 1000px; BORDER-BOTTOM: #f7fbff  solid; HEIGHT: 550px; background-color:#f7fbff "
							align="center">
							<object id="ChartSpace1" style="background-color:#f7fbff;BORDER-RIGHT: f7fbff solid;BORDER-TOP: f7fbff  solid;BORDER-LEFT: f7fbff  solid;BORDER-BOTTOM: f7fbff  solid " classid="clsid:0002E55D-0000-0000-C000-000000000046" width="99%"
		 					    height="100%" >
				    			<param name="XMLData" value='<xml xmlns:x="urn:schemas-microsoft-com:office:excel"> <x:WebChart><x:OWCVersion>11.0.0.5531</x:OWCVersion><x:Width>15239</x:Width><x:Height>10160</x:Height>  <x:Chart><x:PlotArea> <x:Graph><x:Type>Column</x:Type><x:SubType>Clustered</x:SubType><x:ScaleID>76618452</x:ScaleID><x:ScaleID>76618592</x:ScaleID><x:Overlap>0</x:Overlap><x:GapWidth>150</x:GapWidth><x:FirstSliceAngle>0</x:FirstSliceAngle></x:Graph> <x:Axis><x:AxisID>76618732</x:AxisID><x:ScaleID>76618592</x:ScaleID><x:Type>Value</x:Type>  <x:MajorGridlines></x:MajorGridlines><x:MajorTick>Outside</x:MajorTick><x:MinorTick>None</x:MinorTick><x:Placement>Left</x:Placement> </x:Axis><x:Axis>  <x:AxisID>76619128</x:AxisID><x:ScaleID>76618452</x:ScaleID><x:Type>Category</x:Type><x:MajorTick>Outside</x:MajorTick><x:MinorTick>None</x:MinorTick><x:Placement>Bottom</x:Placement> </x:Axis></x:PlotArea>  </x:Chart>  <x:Scaling><x:ScaleID>76618452</x:ScaleID>  </x:Scaling><x:Scaling><x:ScaleID>76618592</x:ScaleID></x:Scaling> </x:WebChart></xml>'>
								<param name="ScreenUpdating" value="-1">
								<param name="EnableEvents" value="-1">
							</object>
						</div>
                    </asp:TableCell>
                </asp:TableRow>
                
                <asp:TableRow ID="ChartDataTr" CssClass="HideRow">
                  <asp:TableCell ID="ChartTD" CssClass="MainTD">
                  </asp:TableCell>
                </asp:TableRow>
                                    
        </asp:Table>
                
        <div style="display: block">
            <asp:Panel ID="HeaderDiv" Style="border-right: black thin solid; border-top: black thin solid;
                margin-left: 20px; border-left: black thin solid; border-bottom: black thin solid;
                text-align: left" runat="server" CssClass="HideRow" Width="720">
                <asp:TextBox ID="HeaderObjIDs" Style="visibility: hidden" runat="server" Width="0"
                    Text="H1,H2" Height="0"></asp:TextBox>
                <asp:TextBox ID="HeaderObjTypes" Style="visibility: hidden" runat="server" Width="0"
                    Text="P,DL" Height="0"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="BodyDiv" Style="border-right: black thin solid; border-top: black thin solid;
                margin-left: 20px; border-left: black thin solid; border-bottom: black thin solid;
                text-align: left" runat="server" CssClass="HideRow" Width="720">
                <asp:TextBox ID="BodyObjIDs" Style="visibility: hidden" runat="server" Width="0"
                    Text="ListTable,ChartSpace1" Height="0"></asp:TextBox>
                <asp:TextBox ID="BodyObjTypes" Style="visibility: hidden" runat="server" Width="0"
                    Text="TH" Height="0"></asp:TextBox>
                <asp:TextBox ID="BodyObjTabHeadRows" Style="visibility: hidden" runat="server" Width="0"
                    Text="1" Height="0"></asp:TextBox>
            </asp:Panel>
            <asp:Panel ID="FooterDiv" Style="border-right: black thin solid; border-top: black thin solid;
                margin-left: 20px; border-left: black thin solid; border-bottom: black thin solid;
                text-align: left" runat="server" CssClass="HideRow" Width="720">
                <asp:Table ID="F1" Style="font-size: 12px; margin-left: 0px; font-family: Arial"
                    BorderWidth="0" Width="100%" runat="server" CssClass="HideRow" CellSpacing="1"
                    CellPadding="1">
                </asp:Table>
                <asp:TextBox ID="FooterObjIDs" Style="visibility: hidden" runat="server" Width="0"
                    Text="F1" Height="0"></asp:TextBox>
                <asp:TextBox ID="FooterObjTypes" Style="visibility: hidden" runat="server" Width="0"
                    Text="TH" Height="0"></asp:TextBox>
            </asp:Panel>
        </div>
    </form>
</body>

<!-----------Script  For Graph------------->


<script language=javascript>
	
	 	function RasiSeAlert(DepWrklst)
		{
		  var ExpMsg
		  ExpMsg= "This Work  Is Depends on " + DepWrklst + " Work Item(s) \n"
		  ExpMsg = ExpMsg+ "Must Complete The work Item(s) Execution"
		  alert( ExpMsg )
		}
	</script>
	
<script language="javascript">
<!--


var HtmlStr
		function GraphSel(){
		HtmlStr=""
        
		HtmlStr="<TABLE  style='WIDTH:100%' BORDER='1' CELLSPACING='1' CELLPADDING='1' class='MainTable' align='center' width='100%'>"
		
		 handleOnLoad()
		
		 HtmlStr=HtmlStr +   " </TABLE>"
		 /*StatDisplayTab.innerHTML=HtmlStr */
		}
		
		function WidthIn(){
		  if((parseInt(div1.style.width)>2000)){return(false)}
			div1.style.width= parseInt(div1.style.width) + 50
 	    }
		
	    function WidthOut(){
	      if((parseInt(div1.style.width)<700)){return(false)}
		    div1.style.width= parseInt(div1.style.width) - 50
	    }
	    
	    function HeightIn(){
		  if((parseInt(div1.style.height)>2000)){return(false)}
		     div1.style.height= parseInt(div1.style.height) + 50		
		}
		
	    function HeightOut(){
	      if((parseInt(div1.style.height)<100)){return(false)}
 	    div1.style.height= parseInt(div1.style.height) - 50	    
	    }
//-->
</script>

<script language="jscript">

var ExcelTypeAry=new Array()
var OldValue;
var OldSelection = null;
var OldSelectionType = -1;
var bOld = false;

var ota = new Array();
var ota2 = new Array();

function handleOnLoad()
{    
	var TableObjId= "ValueTab"
	var r,n
	var rCount=document.all(TableObjId).rows.length
	if(rCount<2){ return(false)}
	var  ColCount=parseInt(document.all(TableObjId).rows(0).cells.length)

	var txtCol=document.getElementById("TxtCol").value
	var numColList=document.getElementById("NumCol").value
	
	var ChartColName="<%=ChartColName %>"
	 var ColCount = <%=ColCount%>
	 
	
	 var numColAry=new Array() 
     numColAry=numColList.split(',')
     
     var ChartColNameAry =new Array()
     ChartColNameAry=ChartColName.split('#*#')
     
    //numColAry=ChartColName.split('#*#')
	
//	txtCol=parseInt(txtCol)-1
//	if((txtCol-ColCount>0)){
////	alert("Enter Column Value & Not More Than Total Columns: " + ColCount)
////	return(false)
//	}
//	if((txtCol< 0)){
////	alert("Enter Column Value Not Less Than 1")
////	return(false)
//	}
	var numCol
//	for(n=0;n<numColAry.length;n++){
//	numCol=numColAry[n]
//	   if(isNaN(numCol)){
////		alert("Enter Numeric Value For Value Column & Not More than Total Columns: " + ColCount)
////		return(false)
//	   }
//	   numCol=parseInt(numCol)
//		if((numCol-ColCount>0)){
////		alert("Enter Column Value & Not More than Total Columns: " + ColCount)
////		return(false)
//		}
//		if((numCol< 0)){
////		alert("Enter Column Value Not Less Than 1")
////		return(false)
//		}
	//}

////////////////////////////
	var categories=new Array();
	var values;
	var ChartObj= document.getElementById("ChartSpace1")
	var c = ChartObj.Constants;
	var CharTypeAry=new Array()
		
        CharTypeAry[0]=c.chChartTypeColumn3D ;
        CharTypeAry[1]=c.chChartTypeColumnClustered ;
        CharTypeAry[2]=c.chChartTypeColumnClustered3D ;
        CharTypeAry[3]=c.chChartTypeColumnStacked ;
        CharTypeAry[4]=c.chChartTypeColumnStacked100 ;
        CharTypeAry[5]=c.chChartTypeColumnStacked1003D ;
        CharTypeAry[6]=c.chChartTypeColumnStacked3D; 
        CharTypeAry[7]=c.chChartTypeBar3D ;
        CharTypeAry[8]=c.chChartTypeBarClustered ;
        CharTypeAry[9]=c.chChartTypeBarClustered3D ;
        CharTypeAry[10]=c.chChartTypeBarStacked ;
        CharTypeAry[11]=c.chChartTypeBarStacked100 ;
        CharTypeAry[12]=c.chChartTypeBarStacked1003D ;
        CharTypeAry[13]=c.chChartTypeBarStacked3D  ;
        CharTypeAry[14]=c.chChartTypeCombo3D ;
        CharTypeAry[15]=c.chChartTypeDoughnut ;
        CharTypeAry[16]=c.chChartTypeDoughnutExploded ;
        CharTypeAry[17]=c.chChartTypeLine ;
        CharTypeAry[18]=c.chChartTypeLine3D ;
        CharTypeAry[19]=c.chChartTypeLineMarkers ;
        CharTypeAry[20]=c.chChartTypeLineOverlapped3D;
        CharTypeAry[21]=c.chChartTypeLineStacked ;
        CharTypeAry[22]=c.chChartTypeLineStacked100 ;
        CharTypeAry[23]=c.chChartTypeLineStacked1003D ;
        CharTypeAry[24]=c.chChartTypeLineStacked100Markers ;
        CharTypeAry[25]=c.chChartTypeLineStacked3D ;
        CharTypeAry[26]=c.chChartTypeLineStackedMarkers ;
        CharTypeAry[27]=c.chChartTypePie ;
        CharTypeAry[28]=c.chChartTypePie3D ;
        CharTypeAry[29]=c.chChartTypePieExploded ;
        CharTypeAry[30]=c.chChartTypePieExploded3D ;
        CharTypeAry[31]=c.chChartTypePieStacked ;
        CharTypeAry[32]=c.chChartTypePolarLine ;
        CharTypeAry[33]=c.chChartTypePolarLineMarkers ;
        CharTypeAry[34]=c.chChartTypePolarMarkers; 
        CharTypeAry[35]=c.chChartTypePolarSmoothLine ;
        CharTypeAry[36]=c.chChartTypePolarSmoothLineMarkers; 
        CharTypeAry[37]=c.chChartTypeRadarLine ;
        CharTypeAry[38]=c.chChartTypeRadarLineFilled ;
        CharTypeAry[39]=c.chChartTypeRadarLineMarkers ;
        CharTypeAry[40]=c.chChartTypeRadarSmoothLine ;
        CharTypeAry[41]=c.chChartTypeRadarSmoothLineMarkers ;
        CharTypeAry[42]=c.chChartTypeScatterLine ;
        CharTypeAry[43]=c.chChartTypeScatterLineFilled; 
        CharTypeAry[44]=c.chChartTypeScatterLineMarkers ;
        CharTypeAry[45]=c.chChartTypeScatterMarkers ;
        CharTypeAry[46]=c.chChartTypeScatterSmoothLine ;
        CharTypeAry[47]=c.chChartTypeScatterSmoothLineMarkers ;
        CharTypeAry[48]=c.chChartTypeSmoothLine ;
        CharTypeAry[49]=c.chChartTypeSmoothLineMarkers ;
        CharTypeAry[50]=c.chChartTypeSmoothLineStacked; 
        CharTypeAry[51]=c.chChartTypeSmoothLineStacked100 ;
        CharTypeAry[52]=c.chChartTypeSmoothLineStacked100Markers ;
        CharTypeAry[53]=c.chChartTypeSmoothLineStackedMarkers ;
        CharTypeAry[54]=c.chChartTypeStockHLC ;
        CharTypeAry[55]=c.chChartTypeStockOHLC ;

 // build an assoc array of object types

        ota["chSelectionAxis"] = c.chSelectionAxis;
        ota["chSelectionCategoryLabel"] = c.chSelectionCategoryLabel;
        ota["chSelectionChart"] = c.chSelectionChart;
        ota["chSelectionChartSpace"] = c.chSelectionChartSpace;
        ota["chSelectionDataLabel"] = c.chSelectionDataLabel;
        ota["chSelectionDataLabels"] = c.chSelectionDataLabels;
        ota["chSelectionDropZone"] = c.chSelectionDropZone;
        ota["chSelectionErrorbars"] = c.chSelectionErrorbars;
        ota["chSelectionField"] = c.chSelectionField;
        ota["chSelectionGridlines"] = c.chSelectionGridlines;
        ota["chSelectionLegend"] = c.chSelectionLegend;
        ota["chSelectionLegendEntry"] = c.chSelectionLegendEntry;
        ota["chSelectionNone"] = c.chSelectionNone;
        ota["chSelectionPlotArea"] = c.chSelectionPlotArea;
        ota["chSelectionPoint"] = c.chSelectionPoint;
        ota["chSelectionSeries"] = c.chSelectionSeries;
        ota["chSelectionSurface"] = c.chSelectionSurface;
        ota["chSelectionTitle"] = c.chSelectionTitle;
        ota["chSelectionTrendline"] = c.chSelectionTrendline;
        ota["chSelectionUserDefined"] = c.chSelectionUserDefined;

        ota2[c.chSelectionAxis] = "chSelectionAxis";
        ota2[c.chSelectionCategoryLabel] = "chSelectionCategoryLabel";
        ota2[c.chSelectionChart] = "chSelectionChart";
        ota2[c.chSelectionChartSpace] = "chSelectionChartSpace";
        ota2[c.chSelectionDataLabel] = "chSelectionDataLabel";
        ota2[c.chSelectionDataLabels] = "chSelectionDataLabels";
        ota2[c.chSelectionDropZone] = "chSelectionDropZone";
        ota2[c.chSelectionErrorbars] = "chSelectionErrorbars";
        ota2[c.chSelectionField] = "chSelectionField";
        ota2[c.chSelectionGridlines] = "chSelectionGridlines";
        ota2[c.chSelectionLegend] = "chSelectionLegend";
        ota2[c.chSelectionLegendEntry] = "chSelectionLegendEntry";
        ota2[c.chSelectionNone] = "chSelectionNone";
        ota2[c.chSelectionPlotArea] = "chSelectionPlotArea";
        ota2[c.chSelectionPoint] = "chSelectionPoint";
        ota2[c.chSelectionSeries] = "chSelectionSeries";
        ota2[c.chSelectionSurface] = "chSelectionSurface";
        ota2[c.chSelectionTitle] = "chSelectionTitle";
        ota2[c.chSelectionTrendline] = "chSelectionTrendline";
        ota2[c.chSelectionUserDefined] = "chSelectionUserDefined";


	ChartObj.Clear();
	ChartObj.Charts.Add();
	
       
//    for(r=1;r<rCount;r++)
//    {
//	    categories[r-1]=document.all(TableObjId).rows(r).cells(parseInt(txtCol-1)).innerText	
//    } 

    
    var yVal;
    var codVal;
    for(n=0;n<numColAry.length;n++){
			
        numCol=numColAry[n]
        numCol=parseInt(numCol)-1
        ChartObj.Charts(0).SeriesCollection.Add();
        var ColHeader  = document.all(TableObjId).rows(0).cells(numCol+1).innerText;
        ChartObj.Charts(0).SeriesCollection(n).Caption=ColHeader;
        var valuesAry=new Array();
        //var codeAry=new Array();
        for(r=1;r<rCount;r++)
        {
            yVal=document.all(TableObjId).rows(r).cells(numCol).innerText
            //codVal=document.all(TableObjId).rows(r).cells(numCol+2).innerText
            if(yVal==''){yVal=0}
            if(isNaN(yVal)){yVal=0}
            valuesAry[r-1]=yVal
            //codeAry[r-1]=codVal

        } //for-rr-r
        
        ChartObj.Charts(0).Axes(1).HasTitle = true
        ChartObj.Charts(0).Axes(1).Title.Font.Size = 5
        ChartObj.Charts(0).Axes(1).Title.Caption = 'Count'
        ChartObj.Charts(0).Axes(1).Font.Size = 5  
        
        ChartObj.Charts(0).Axes(0).HasTitle = false
//        ChartObj.Charts(0).Axes(0).Title.Font.Size = 5
//        ChartObj.Charts(0).Axes(0).Title.Caption = 'Title'
        ChartObj.Charts(0).Axes(0).Font.Size = 5                
        
        ChartObj.Charts(0).SeriesCollection(n).SetData (c.chDimValues, c.chDataLiteral, valuesAry);
        ChartObj.Charts(0).SeriesCollection(n).SetData (c.chDimCategories, c.chDataLiteral, ChartColNameAry);       
        
        if (document.getElementById("GraphSelect").value > 26 && document.getElementById("GraphSelect").value<32) //If it is pie
        {
        ChartObj.Charts(0).HasLegend = true;	
        ChartObj.Charts(0).Legend.Font.Size = 5	        
        }else{
        
            ChartObj.Charts(0).HasLegend = false;	        
        }
        
        var valList=valuesAry.join(',')
        AddStatRow(ColHeader,valList)
    } 
               
	//ChartObj.Charts(0).HasLegend = true;	

	    ChartObj.Charts(0).Type =CharTypeAry[document.getElementById("GraphSelect").value];	    
	        
	
	//alert("onLoad complete")
}
</script>

<script language="javascript" id="clientEventHandlersJS">
<!--
function ChartSpace1_SelectionChange() {
ChartSpaceSelChange()
}


//-->
</script>

<script language="javascript" event="SelectionChange" for="ChartSpace1">
<!--
 ChartSpace1_SelectionChange()
//-->
</script>

<script language="jscript">
 function ChartSpaceSelChange(){
var ChartObj= document.getElementById("ChartSpace1")
	
	var c = ChartObj.constants;

//	if (bOld) {
//		switch (OldSelectionType) {
//			case c.chSelectionPoint:
//			case c.chSelectionPlotArea:
//			case c.chSelectionLegend:
//			case  c.chSelectionChart:
//				OldSelection.Interior.Color = OldValue;
//				break;
//			case c.chSelectionSeries:
//			case c.chSelectionGridlines:
//				OldSelection.Line.Color = OldValue;
//				break;
//			case c.chSelectionLegendEntry:
//			case c.chSelectionAxis:
//			case c.chSelectionTitle:
//				OldSelection.Font.Color = OldValue;
//				break;
//			case c.chSelectionCategoryLabel:
//				OldSelection.Parent.Font.Color = "red";
//				break;
//		}
//	}

	switch (ChartObj.SelectionType) {
	case c.chSelectionPoint:
		 OldValue = ChartObj.Selection.Interior.Color;
		 window.status = ChartObj.Selection.GetValue(c.chDimValues) + " " + ChartObj.Selection.GetValue(c.chDimCategories);
		 ChartObj.Selection.Interior.Color = "red";
		 DisplayList(ChartObj.Selection.GetValue(c.chDimCategories))
    	 break;
	case c.chSelectionPlotArea:
		case c.chSelectionLegend:
		case c.chSelectionChart:
			OldValue = ChartObj.Selection.Interior.Color;
			ChartObj.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:
			OldValue = ChartObj.Selection.Line.Color;
			ChartObj.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:
			OldValue = ChartObj.Selection.Font.Color;
			ChartObj.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:
			ChartObj.Selection.Parent.Font.Color = "red";
			break;
	}
	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartObj.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartObj.Selection;
		OldSelectionType = ChartObj.SelectionType;
		bOld = true;
	}
	
}

function DisplayList(WrkCode)
{
  switch(WrkCode){  
  
    case "Change Control (CC) Login A": 
    case "Deviation / Incident (DI) Login A":
    case "Market Complaint (MC) Login A" : window.navigate('../IssueLogin/IssRevAppList.aspx?PrsType='+'<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;       
    
     case "CC. Related Work(s) Plan":
    case "DI. Related Work(s) Plan":
    case "MC. Related Work(s) Plan": window.navigate('../PrsWorkFlow/WrkPlanList.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
          
    case "CC. Related My Work(s) I":
    case "DI. Related My Work(s) I":
    case "MC. Related My Work(s) I": window.navigate('../TestEFormExecution/MyWorkItems.aspx?Type=1&PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
           
    case "CC. Related My Work(s) A":
    case "DI. Related My Work(s) A":
    case "MC. Related My Work(s) A": window.navigate('../TestEFormExecution/EFormAppList.aspx?Type=1&PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
          
    case "CC. Work(s) Plan Closure":
    case "DI. Work(s) Plan Closure":
    case "MC. Work(s) Plan Closure": window.navigate('../PrsWorkFlow/WorkPlanClsList.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
    
    case "Implementation Plan(s) Initiation":
    case "CAPA Plan(s) Initiation": window.navigate('../PrsWorkFlow/WrkActionPlansList.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
                 
    case "Implementation Work(s) Plan":
    case "CAPA Related Work(s) Plan":
    case "CAPA Work(s) Plan": window.navigate('../CAPAWORKS/CorrectiveActList.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
            
    case "Implementation Related My Work(s) I":
    case "CAPA Related My Work(s) I":
    case "CAPA Related My Work(s) I": window.navigate('../TestEFormExecution/MyWorkItems.aspx?Type=2&PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;
           
    case "Implementation Related My Work(s) A":
    case "CAPA Related My Work(s) A":
    case "CAPA Related My Work(s) A": window.navigate('../TestEFormExecution/EFormAppList.aspx?Type=2&PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break; 
    
    case "Implementation Plan(s) Closure":
    case "CAPA Plan(s) Closure":
    case "CAPA Plan(s) Closure": window.navigate('../PrsWorkFlow/CAPAClosureLst.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break; 
         
    case "Change Control (CC) Closure":
    case "Deviation / Incident (DI) Closure":
    case "Market Complaint (MC) Closure": window.navigate('../IssueClosure/IssueClsList.aspx?PrsType='+ '<%= PrsType %>'+'&imageId='+'<%= ImgID %>');break;        
       
  }
}
// function DisplayList(WrkCode)
//       {
//         var recary = new Array(); 
//          
//            var xmlhttp;
//            try
//            {
//                xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//            }
//            catch(ex)
//            {
//                try 
//                {
//                    xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
//                }
//                catch(ex)
//                {
//                    try
//                    {
//                        xmlhttp=new XmlHttpRequest();
//                    }
//                    catch(ex)
//                    {
//                        alert("please update the webbrowser");
//                    }
//                }
//            }
//            xmlhttp.onreadystatechange=function()
//            {
//                if(xmlhttp.readystate==4)
//                {
//                    var DispTbl = xmlhttp.responseText;
//                    document.getElementById("ChartDataTr").className="MainTD"
//                    document.getElementById("ChartTD").innerHTML=DispTbl
//                    xmlhttp =null;
//                }
//            }
//            var url="WitStatus_Ajax.aspx?WrkCode="+ WrkCode +"&PrsType=<%=Request.QueryString("PrsType") %>" + "&Imageid=1&prsTypeCap=" + "<%=PrsTypecap %>"
//            xmlhttp.open("POST",url,true);
//            xmlhttp.send(null);
//        }

</script>

<script language="vbscript">
Sub QuickSort(list, min , max )
Dim med_value 
Dim hi 
Dim lo 
Dim i 

 ' If the list has no more than CutOff elements,
 ' finish it off with SelectionSort.
 If max <= min Then Exit Sub

 ' Pick the dividing value.
 i = Int((max - min + 1) * Rnd + min)
 med_value = cdbl(list(i))

 ' Swap it to the front.
 list(i) = cdbl(list(min))

 lo = min
 hi = max
 Do
 ' Look down from hi for a value < med_value.
 Do While cdbl(list(hi)) - cdbl(med_value) >=0
 hi = hi - 1
 If hi <= lo Then Exit Do
 Loop
 If hi <= lo Then
 list(lo) =cdbl(med_value)
 Exit Do
 End If

 ' Swap the lo and hi values.
 list(lo) = list(hi)
 
 ' Look up from lo for a value >= med_value.
 lo = lo + 1
 Do While list(lo) < med_value
 lo = lo + 1
 If lo >= hi Then Exit Do
 Loop
 If lo >= hi Then
 lo = hi
 list(hi) =cdbl(med_value)
 Exit Do
 End If
 
 ' Swap the lo and hi values.
 list(hi) = list(lo)
 Loop
 
 ' Sort the two sublists.
 QuickSort list, min, lo - 1
 QuickSort list, lo + 1, max
End Sub

sub AddStatRow(ColName,valoresList)
dim valores
valores=split(valoresList,",")
dim MinValue,MaxValue,AvgValue,SdValue,RsdValue
QuickSort valores,lbound(valores),ubound(valores)
   
MinValue=valores(0)
MaxValue=valores(ubound(valores))

       for k=0 to ubound(valores)
		sum=sum+ valores(k)
		next
		AvgValue=sum/(ubound(valores)+1)
		sqrsum=0
		for k=0 to ubound(valores)
	 	sqrsum=sqrsum + (AvgValue-valores(k))^2
		next
		'Response.Write join(deviationList,",")
		if sqrsum>0 then SdValue=(sqrsum/(ubound(valores)))^(0.5)
		'Response.Write std
		if AvgValue>0 then RsdValue=(SdValue/AvgValue)*100

AvgValue=round(AvgValue,4)
SdValue=round(SdValue,4)
RsdValue=round(RsdValue,4)
  
HtmlStr=HtmlStr & "<TR>"
HtmlStr=HtmlStr & "<TD  class=MainTD><b>" & ColName & "</td>" 
HtmlStr=HtmlStr & "<TD  class=MainTD><b>Min</td><td   class=MainTD style='Background-Color:white'>" & MinValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Max</td><td    class=MainTD style='Background-Color:white'>" & MaxValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Avg</td><td    class=MainTD style='Background-Color:white'>" & AvgValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Sd</td><td    class=MainTD style='Background-Color:white'>" & SdValue & "</td>"
HtmlStr=HtmlStr & "<TD class=MainTD><b>Rsd</td><td   class=MainTD  style='Background-Color:white'>" & RsdValue & "</td>"
HtmlStr=HtmlStr & "</TR>" 
end sub
</script>

<script language="javascript">
        function ChkReasons(){
            var Reasons = "Reasons"//document.getElementById("ReasonsTxt").value
            var AskReasons = 0//document.getElementById("AskReasonsTxt").value
	           if(AskReasons==1 && Reasons==''){
	           alert("Enter Reason For Other Print")
	           return(false);
	           }
               return(true);
        }

        isWorkSheetPrint=1
        function fnPrintConfirm() {   //var Reasons=document.getElementById("ReasonsTxt").value
		        //var mSSC=document.all("MSSCTxt").value	
	         //	var pageURL="PrintConfirm.aspx"
	         //var features = "height=20,width=60,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=350,left=150"
	         //window.showModalDialog( pageURL ,'Caliber LIMS','dialogheight=6;dialogwidth=15;help=0;status=0;scroll=0;edge=raised;')		
	         //window.history.back(1);
        	 
	         //window.navigate("RawDataList.aspx")
				        //document.forms(0).submit();
        			
        			
        			 			
	        }
	        
//GraphSel()

            function RasiSelAlert(FunctionID,IssueLogId,RowCnt)
		    {           
		      QAMS_WRK_ALL_SpecialValidations(FunctionID,IssueLogId,RowCnt)
		    }

	
		    function SetInchargegroup(GrpName,Rowcnt)
            {
                var GroupValArr=GrpName//.split("#*#")
                if ( GrpName!="") AjaxCheckUserExisInGrp(GrpName,Rowcnt) //
            }
            function UserStatusvalue(ReturnVal,Rowcnt)
            {
                 if (ReturnVal=="0")
                   alert("User Is Not Authorized  to Approve Deviation Under This Department ")
                 else
                  window.navigate(document.getElementById("UrlValTXt_0_" +Rowcnt ).innerText)
                   
            }
</script>

<script language="vbscript">
    function CalculateDate(Value)
        if value="" or (not (IsNumeric(Value))) then exit function
        CalculateDate=DateAdd("d",value,document.getElementById("StartLbl").InnerText)
        CalculateDate= month(CalculateDate) &"/" & day(CalculateDate)  & "/" & year(CalculateDate)
    end function

    function CalculateDate1(Value1)
        if value1="" or (not (IsNumeric(Value1))) then exit function
        CalculateDate1=DateAdd("d",value1,document.getElementById("EndLbl").InnerText)
        CalculateDate1= month(CalculateDate1) &"/" & day(CalculateDate1)  & "/" & year(CalculateDate1)
    end function
</script>

<script language="vbscript">
		
function VbUsedTODateValid
     
      StartDate=document.getElementById("STDate_CalDateVal").value
      EndDate = document.getElementById("ENDate_CalDateVal").value
      if StartDate="" then exit function
      if EndDate="" then exit function
	 		
	  StartDateAry=split(StartDate,"/")
	  StartDateVal=dateSerial(StartDateAry(2),StartDateAry(0),StartDateAry(1))
	  
	  EndDateArray=split(EndDate,"/")
	
	  EndDateVal=dateSerial( EndDateArray(2), EndDateArray(0), EndDateArray(1))
	 
	  DDgap=DateDiff("d", EndDateVal,StartDateVal)
	  if DDgap<-31 or DDgap>0 then
			  VbUsedTODateValid=1
      end if
      if DDgap=0 then
      VbUsedTODateValid=3
      end if   
 
 End function 
</script>

</html>

