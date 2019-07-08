<%@ Page Language="vb" AutoEventWireup="false" Codebehind="BodyHome.aspx.vb" Inherits="QAMS300BL.BodyHome" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
<HTML>
	<HEAD>
		<title>BodyHome</title>
		<LINK REL="stylesheet" TYPE="text/css" HREF="TRIMS.css">
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<STYLE>
    .P { PADDING-RIGHT: 4px; PADDING-LEFT: 4px; CURSOR: hand }
    A.T { BORDER-RIGHT: #777777 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #777777 1px solid; PADDING-LEFT: 3px; FONT-SIZE: 8pt; BORDER-LEFT: #777777 1px solid; CURSOR: hand; COLOR: #000000; PADDING-TOP: 1px; BORDER-BOTTOM: #777777 1px solid; FONT-FAMILY: Tahoma,Arial; HEIGHT: 18px; BACKGROUND-COLOR: #fff7e5; TEXT-DECORATION: none }
    A.OT { BORDER-RIGHT: #336699 1px solid; PADDING-RIGHT: 3px; BORDER-TOP: #336699 1px solid; PADDING-LEFT: 3px; FONT-SIZE: 8pt; BORDER-LEFT: #336699 1px solid; CURSOR: hand; COLOR: #000000; PADDING-TOP: 1px; BORDER-BOTTOM: #336699 1px solid; FONT-FAMILY: Tahoma,Arial; HEIGHT: 18px; BACKGROUND-COLOR: #e9f2f8; TEXT-DECORATION: none }
	 .ChartTitle1{TEXT-ALIGN: right;COLOR: #000099;FONT-WEIGHT: bold;PADDING-RIGHT:20px}
	 .ChartTitle2{TEXT-ALIGN: left;COLOR: #000099;FONT-WEIGHT: bold;PADDING-LEFT:20px}
	 .ChartTitle3{TEXT-ALIGN: center;COLOR: #000099;FONT-WEIGHT: bold;PADDING-RIGHT:20px}
	 BODY{Background-Color:#FFFFFF;}
		</STYLE>
		<SCRIPT language="javascript">
	//if(window.name!="CaliberLIMS")
	//window.open("index.aspx","_top",'',TRue)
	
function fnCloseAlert(val){
document.getElementById(val).style.display='none'
fnCheckAlers()
}	
function fnCheckAlers(){
 var flag=0
	if(document.getElementById('PWSExpiry')){
	    if(document.getElementById('PWSExpiry').style.display=='block' || document.getElementById('PWSExpiry').style.display=='') flag=1
	  }
	if(document.getElementById('PWSChangeAlert')){
	    if(document.getElementById('PWSChangeAlert').style.display=='block' || document.getElementById('PWSChangeAlert').style.display=='')flag=1
	  } 
	if(document.getElementById('AdminMessage1')){
	    if(document.getElementById('AdminMessage1').style.display=='block' || document.getElementById('AdminMessage1').style.display=='')flag=1
	  }   
	if(document.getElementById('AdminMessage2')){
	    if(document.getElementById('AdminMessage2').style.display=='block' || document.getElementById('AdminMessage2').style.display=='')flag=1
	  }  
	 if(document.getElementById('AdminMessage3')){
	    if(document.getElementById('AdminMessage3').style.display=='block' || document.getElementById('AdminMessage3').style.display=='')flag=1
	  }	 
	 if(flag==0){
	  document.getElementById('Tbl').style.display='Block'
	  }else{
	  document.getElementById('Tbl').style.display='none'
	  }   	  
}
		</SCRIPT>
	</HEAD>
	<body  topmargin="0" leftmargin="0" bottommargin="0" rightmargin="0"  onload="fn(),fnCheckAlers()" onunload="fnCloseRPane()" >
		<form id="Form1" method="post" runat="server">
			<TABLE border="0" width="100%" height="10%" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
					<TR id="AlertTR" runat="server">
					<TD height="15" style='BORDER-RIGHT:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove; BACKGROUND-COLOR:#ffffff'>
						<TABLE border="0" width="100%" height="100%" cellpadding="0" cellspacing="0">
							<TR class="HideRow">
								<TD class="P" width="88%" align="right">
								
									<A class="T" id="Link1" runat="server" onMouseover='this.className="OT"' onMouseout='this.className="T"'
										href='Admin/MailInbox.aspx'><IMG id="Image1" runat="server" border="0">&nbsp;<SPAN style='PADDING-RIGHT:2px;PADDING-LEFT:2px;PADDING-BOTTOM:2px;PADDING-TOP:2px'>Mail 
											Alert</SPAN></A>&nbsp;&nbsp;<A class="T" runat="server" id="Link" onMouseover='this.className="OT"' onMouseout='this.className="T"' href='CommunicationModule2/TaskCenter.aspx'><IMG id="Image" border="0" runat="server">&nbsp;<SPAN style='PADDING-RIGHT:2px;PADDING-LEFT:2px;PADDING-BOTTOM:2px;PADDING-TOP:2px'>Task 
											Center</SPAN></A></TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR valign="top">
					<TD>
						<ASP:LITERAL ID="Literal1" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal2" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal3" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal4" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal5" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal6" Runat="server"></ASP:LITERAL>
						<ASP:LITERAL ID="Literal7" Runat="server"></ASP:LITERAL>
						<asp:table  style="display:none;" id="Tbl" Runat="server" HorizontalAlign="Center" cellPadding="0" cellSpacing="0"	width="100%"></asp:table>
						<asp:table  style="display:table;" id="DashBrdTab" Runat="server" HorizontalAlign="Center" cellPadding="0" cellSpacing="0"	width="100%">
						    <asp:TableRow>
						        <asp:TableCell HorizontalAlign=Center>
						            <iframe id="DbrdFrame" runat="server" style="border:none" width=98% height="800px" ></iframe>
						        </asp:TableCell>
						    </asp:TableRow>
						</asp:table>
						
						<asp:Table ID="DashBoardMessageTbl" runat="server">
						    <asp:TableRow ID="DashBoardMessageTr" runat="server">
						        <asp:TableCell ID="DashBoardMessageTd" runat="server">						
						          <asp:Label id="DashBoardMessage" runat="server"  CssClass="txtCls"  ></asp:Label>
						        </asp:TableCell>						
						    </asp:TableRow>
						
						</asp:Table>
					</TD>
				</TR>
			</TABLE>
			           <asp:textbox id="ChartLayout" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartVals1"  style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartVals2"  style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartVals3"  style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartVals4"  style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartHeading1" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartHeading2" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartHeading3" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartHeading4" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartTyp1" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartTyp2" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartTyp3" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartTyp4" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartUrl1" Text="Default.aspx" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartUrl2" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartUrl3" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartUrl4" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartNm1" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartNm2" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartNm3" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartNm4" style="DISPLAY: none" Runat="server"></asp:textbox>
						<asp:textbox id="ChartSize" style="DISPLAY: none" Runat="server"></asp:textbox>
						
		</form>
		
		<script language="javascript">
		    
function AssignUrl()
{
   var  HomepgeDbUrl ='<%=Session("MyHomePageUrl")%>'
   
   if( (HomepgeDbUrl != "nothing" ) && (HomepgeDbUrl != "")   )
   {
     window.frames['DbrdFrame'].document.location.href=HomepgeDbUrl
   }
}

setTimeout('AssignUrl()',300)
		</script>
		
	</body>	
</HTML>

<script language="jscript">



function fnCloseRPane(){
parent.fnCloseRightPane()
}
function fn(){
    parent.fnOpenRightPane()
//	handleOnLoad()		
 }
 
 

var ota = new Array();
var ota2 = new Array();
var bOld = false;
var chConstants

function handleOnLoad()
 {
for(i=1; i<=document.getElementById('ChartLayout').value; i++){
	var values;
	var ChartObj= document.all("ChartSpace" + i)	  

	var ChartHeadings= document.all("ChartHeading"+ i).value		
		
	var c = ChartObj.Constants;		
	var CharTypeAry=new Array()
	CharTypeAry[0]=c.chChartTypeColumn3D 
	CharTypeAry[1]=c.chChartTypeColumnClustered 
	CharTypeAry[2]=c.chChartTypeColumnClustered3D 
	CharTypeAry[3]=c.chChartTypeColumnStacked 
	CharTypeAry[4]=c.chChartTypeColumnStacked100 
	CharTypeAry[5]=c.chChartTypeColumnStacked1003D 
	CharTypeAry[6]=c.chChartTypeColumnStacked3D 
	CharTypeAry[7]=c.chChartTypeBar3D 
	CharTypeAry[8]=c.chChartTypeBarClustered 
	CharTypeAry[9]=c.chChartTypeBarClustered3D 
	CharTypeAry[10]=c.chChartTypeBarStacked 
	CharTypeAry[11]=c.chChartTypeBarStacked100 
	CharTypeAry[12]=c.chChartTypeBarStacked1003D 
	CharTypeAry[13]=c.chChartTypeBarStacked3D  
	CharTypeAry[14]=c.chChartTypeCombo3D 
	CharTypeAry[15]=c.chChartTypeDoughnut 
	CharTypeAry[16]=c.chChartTypeDoughnutExploded 
	CharTypeAry[17]=c.chChartTypeLine 
	CharTypeAry[18]=c.chChartTypeLine3D 
	CharTypeAry[19]=c.chChartTypeLineMarkers 
	CharTypeAry[20]=c.chChartTypeLineOverlapped3D 
	CharTypeAry[21]=c.chChartTypeLineStacked 
	CharTypeAry[22]=c.chChartTypeLineStacked100 
	CharTypeAry[23]=c.chChartTypeLineStacked1003D 
	CharTypeAry[24]=c.chChartTypeLineStacked100Markers 
	CharTypeAry[25]=c.chChartTypeLineStacked3D 
	CharTypeAry[26]=c.chChartTypeLineStackedMarkers 
	CharTypeAry[27]=c.chChartTypePie 
	CharTypeAry[28]=c.chChartTypePie3D 
	CharTypeAry[29]=c.chChartTypePieExploded 
	CharTypeAry[30]=c.chChartTypePieExploded3D 
	CharTypeAry[31]=c.chChartTypePieStacked 
	CharTypeAry[32]=c.chChartTypePolarLine 
	CharTypeAry[33]=c.chChartTypePolarLineMarkers 
	CharTypeAry[34]=c.chChartTypePolarMarkers 
	CharTypeAry[35]=c.chChartTypePolarSmoothLine 
	CharTypeAry[36]=c.chChartTypePolarSmoothLineMarkers 
	CharTypeAry[37]=c.chChartTypeRadarLine 
	CharTypeAry[38]=c.chChartTypeRadarLineFilled 
	CharTypeAry[39]=c.chChartTypeRadarLineMarkers 
	CharTypeAry[40]=c.chChartTypeRadarSmoothLine 
	CharTypeAry[41]=c.chChartTypeRadarSmoothLineMarkers 
	CharTypeAry[42]=c.chChartTypeScatterLine 
	CharTypeAry[43]=c.chChartTypeScatterLineFilled 
	CharTypeAry[44]=c.chChartTypeScatterLineMarkers 
	CharTypeAry[45]=c.chChartTypeScatterMarkers 
	CharTypeAry[46]=c.chChartTypeScatterSmoothLine 
	CharTypeAry[47]=c.chChartTypeScatterSmoothLineMarkers 
	CharTypeAry[48]=c.chChartTypeSmoothLine 
	CharTypeAry[49]=c.chChartTypeSmoothLineMarkers 
	CharTypeAry[50]=c.chChartTypeSmoothLineStacked 
	CharTypeAry[51]=c.chChartTypeSmoothLineStacked100 
	CharTypeAry[52]=c.chChartTypeSmoothLineStacked100Markers 
	CharTypeAry[53]=c.chChartTypeSmoothLineStackedMarkers 
	CharTypeAry[54]=c.chChartTypeStockHLC 
	CharTypeAry[55]=c.chChartTypeStockOHLC 

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
	var valList=document.all("ChartVals"+ i).value;		
	var valuesAry=new Array();
	var HeadingsAry=new Array();
	
	var flag=false;
	
	if(valList.indexOf("$")!=-1)
	{
	    valuesAry= valList.split('$')  
        HeadingsAry= ChartHeadings.split('$')  
	    flag=true;
	}
	else
	{
	    valuesAry= valList.split(',')
	    HeadingsAry= ChartHeadings.split(',')   
	}
	
    
    if (flag==true)
    {
    
        for(k=0; k<valuesAry.length; k++)
        {
             
            ChartObj.Charts(0).SeriesCollection.Add(); 
//            ChartObj.Charts(0).SeriesCollection(k).Caption=document.all("ChartNm"+ i).value;  
            //ChartObj.Charts(0).HasTitle = true   
            //ChartObj.Charts(0).Title.Font.Size = 10
            ChartObj.Charts(0).Axes(1).HasTitle = true
            ChartObj.Charts(0).Axes(1).Title.Font.Size = 10
            //ChartObj.Charts(0).Axes(1).MajorUnit = 5 
        
            var SubvaluesAry=new Array();
            SubvaluesAry=valuesAry[k].split(',')
            var ValArr = new Array();
            
            var SubHeadingsAry=new Array();
            SubHeadingsAry=HeadingsAry[k].split(',')
            var HeadValArr = new Array();
            
            for(j=0; j<SubvaluesAry.length;j++)
            {
                ValArr[j]=SubvaluesAry[j]
                if(SubHeadingsAry[j]=="" || SubHeadingsAry[j]==undefined)
                {
                    HeadValArr[j]="--" + j
                }
                else
                {
                    HeadValArr[j]=SubHeadingsAry[j]
                }
                ChartObj.Charts(0).SeriesCollection(k).SetData (c.chDimValues, c.chDataLiteral, ValArr);
//                ChartObj.Charts(0).SeriesCollection(k).SetData (c.chDimCategories, c.chDataLiteral, HeadValArr);
            }
               
            ChartObj.Charts(0).SeriesCollection(k).Caption=SubHeadingsAry[0];          
               
        }
                
    }   
    
    else
    {
        ChartObj.Charts(0).SeriesCollection.Add(); 
        ChartObj.Charts(0).SeriesCollection(0).Caption=document.all("ChartNm"+ i).value;  
        ChartObj.Charts(0).HasTitle = true   
        ChartObj.Charts(0).Title.Font.Size = 10
        ChartObj.Charts(0).Axes(1).HasTitle = true
        ChartObj.Charts(0).Axes(1).Title.Font.Size = 10
        
        ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimValues, c.chDataLiteral, valuesAry); 
      //ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimHeadings, c.chDataLiteral, ChartHeadings); 
        ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimCategories, c.chDataLiteral, HeadingsAry);   
    }

       //santosh   
	ChartObj.Charts(0).HasLegend = true;	
	ChartObj.Charts(0).Legend.Font.Size = 15	
	ChartObj.Charts(0).Axes(0).Font.Size = 20		
 // ChartObj.Charts(0).Axes(0).MajorUnit = 5
	ChartObj.Charts(0).Type =CharTypeAry[document.all("ChartTyp"+ i).value];
	
	ChartObj.HasChartSpaceTitle =  true
    ChartObj.ChartSpaceTitle.Caption =document.all("ChartNm"+ i).value  
    ChartObj.ChartSpaceTitle.Font.Size =17
    ChartObj.ChartSpaceTitle.Font.Bold = true  
	
  }	
}
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
		SdValue=(sqrsum/(ubound(valores)))^(0.5)
		'Response.Write std
		if AvgValue>0 then RsdValue=(SdValue/AvgValue)*100

		AvgValue=round(AvgValue,4)
		SdValue=round(SdValue,4)
		RsdValue=round(RsdValue,4)
  
		'HtmlStr=HtmlStr & "<TR>"
		'HtmlStr=HtmlStr & "<TD  class=MainTD><b>" & ColName & "</td>" 
		'HtmlStr=HtmlStr & "<TD  class=MainTD><b>Min</td><td   class=MainTD style='Background-Color:white'>" & MinValue & "</td>"
		'HtmlStr=HtmlStr & "<TD class=MainTD><b>Max</td><td    class=MainTD style='Background-Color:white'>" & MaxValue & "</td>"
		'HtmlStr=HtmlStr & "<TD class=MainTD><b>Avg</td><td    class=MainTD style='Background-Color:white'>" & AvgValue & "</td>"
		'HtmlStr=HtmlStr & "<TD class=MainTD><b>Sd</td><td    class=MainTD style='Background-Color:white'>" & SdValue & "</td>"
		'HtmlStr=HtmlStr & "<TD class=MainTD><b>Rsd</td><td   class=MainTD  style='Background-Color:white'>" & RsdValue & "</td>"
		'HtmlStr=HtmlStr & "</TR>" 
  end sub 
</script>

<script for="ChartSpace1" event="SelectionChange()" language="jscript">
{ 
	var c = ChartSpace1.constants;
	if (bOld) { 
		    switch (OldSelectionType) {
			    case c.chSelectionPoint:
			    case c.chSelectionPlotArea:
			    case c.chSelectionLegend:
			    case  c.chSelectionChart:
				    OldSelection.Interior.Color = OldValue;
				    break;
			    case c.chSelectionSeries:
			    case c.chSelectionGridlines:
				    OldSelection.Line.Color = OldValue;
				    break;
			    case c.chSelectionLegendEntry:
			    case c.chSelectionAxis:
			    case c.chSelectionTitle:
				    OldSelection.Font.Color = OldValue;
				    break;
			    case c.chSelectionCategoryLabel:
				    //OldSelection.Parent.Font.Color = "red";
				    break;
		    }		   
	   }
	   
	   

  switch (ChartSpace1.SelectionType) {
 
		case c.chSelectionPoint:			  
			OldValue = ChartSpace1.Selection.Interior.Color;
            window.status = ChartSpace1.Selection.GetValue(c.chDimValues) + " " + ChartSpace1.Selection.GetValue(c.chDimCategories);
			ChartSpace1.Selection.Interior.Color = "red";		
			var url=document.all("ChartUrl1").value+"?Typ="+ChartSpace1.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace1.ChartSpaceTitle.Caption+"&TypeVal="+0 
		
			window.navigate(url)			 
			break;
		case c.chSelectionPlotArea:
		case c.chSelectionLegend:		
		case c.chSelectionChart:
			OldValue = ChartSpace1.Selection.Interior.Color;
			//ChartSpace1.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:		     
			OldValue = ChartSpace1.Selection.Line.Color;
			//ChartSpace1.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:		  
			OldValue = ChartSpace1.Selection.Font.Color;
			//ChartSpace1.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:		
			//ChartSpace1.Selection.Parent.Font.Color = "red";
			break;
	}

	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartSpace1.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartSpace1.Selection;
		OldSelectionType = ChartSpace1.SelectionType;
		bOld = true;
	}
}
</script>

<script for="ChartSpace2" event="SelectionChange()" language="jscript">
{  
	var c = ChartSpace2.constants;
	if (bOld) { 
		    switch (OldSelectionType) {
			    case c.chSelectionPoint:
			    case c.chSelectionPlotArea:
			    case c.chSelectionLegend:
			    case  c.chSelectionChart:
				    OldSelection.Interior.Color = OldValue;
				    break;
			    case c.chSelectionSeries:
			    case c.chSelectionGridlines:
				    OldSelection.Line.Color = OldValue;
				    break;
			    case c.chSelectionLegendEntry:
			    case c.chSelectionAxis:
			    case c.chSelectionTitle:
				    OldSelection.Font.Color = OldValue;
				    break;
			    case c.chSelectionCategoryLabel:
				    //OldSelection.Parent.Font.Color = "red";
				    break;
		    }		   
	   }

  switch (ChartSpace2.SelectionType) {
 
		case c.chSelectionPoint:			  
			OldValue = ChartSpace2.Selection.Interior.Color;
            window.status = ChartSpace2.Selection.GetValue(c.chDimValues) + " " + ChartSpace2.Selection.GetValue(c.chDimCategories);
			ChartSpace2.Selection.Interior.Color = "red";
			var url=document.all("ChartUrl2").value+"?Typ="+ChartSpace2.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace2.Charts(0).SeriesCollection(0).Caption+"&TypeVal="+0 
					
			window.navigate(url)			
			break;
		case c.chSelectionPlotArea:
		case c.chSelectionLegend:
		case c.chSelectionChart:
			OldValue = ChartSpace2.Selection.Interior.Color;
			//ChartSpace2.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:		     
			OldValue = ChartSpace2.Selection.Line.Color;
			//ChartSpace2.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:		  
			OldValue = ChartSpace2.Selection.Font.Color;
			//ChartSpace2.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:		
			//ChartSpace2.Selection.Parent.Font.Color = "red";
			break;
	}

	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartSpace2.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartSpace2.Selection;
		OldSelectionType = ChartSpace2.SelectionType;
		bOld = true;
	}
}
</script>

<script for="ChartSpace3" event="SelectionChange()" language="jscript">
{ 
	var c = ChartSpace3.constants;
	if (bOld) { 
		    switch (OldSelectionType) {
			    case c.chSelectionPoint:
			    case c.chSelectionPlotArea:
			    case c.chSelectionLegend:
			    case  c.chSelectionChart:
				    OldSelection.Interior.Color = OldValue;
				    break;
			    case c.chSelectionSeries:
			    case c.chSelectionGridlines:
				    OldSelection.Line.Color = OldValue;
				    break;
			    case c.chSelectionLegendEntry:
			    case c.chSelectionAxis:
			    case c.chSelectionTitle:
				    OldSelection.Font.Color = OldValue;
				    break;
			    case c.chSelectionCategoryLabel:
				   // OldSelection.Parent.Font.Color = "red";
				    break;
		    }		   
	   }

  switch (ChartSpace3.SelectionType) {
 
		case c.chSelectionPoint:			  
			OldValue = ChartSpace3.Selection.Interior.Color;
            window.status = ChartSpace3.Selection.GetValue(c.chDimValues) + " " + ChartSpace3.Selection.GetValue(c.chDimCategories);
			ChartSpace3.Selection.Interior.Color = "red";		
			var url=document.all("ChartUrl3").value+"?Typ="+ChartSpace3.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace3.Charts(0).SeriesCollection(0).Caption+"&TypeVal="+0 
			
			window.navigate(url)			
			break;
		case c.chSelectionPlotArea:
		case c.chSelectionLegend:
		case c.chSelectionChart:
			OldValue = ChartSpace3.Selection.Interior.Color;
			//ChartSpace3.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:		     
			OldValue = ChartSpace3.Selection.Line.Color;
			//ChartSpace3.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:		  
			OldValue = ChartSpace3.Selection.Font.Color;
			//ChartSpace3.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:		
			//ChartSpace3.Selection.Parent.Font.Color = "red";
			break;
	}

	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartSpace3.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartSpace3.Selection;
		OldSelectionType = ChartSpace2.SelectionType;
		bOld = true;
	}
}
</script>

<script for="ChartSpace4" event="SelectionChange()" language="jscript">
{ 
	var c = ChartSpace4.constants;
	if (bOld) { 
		    switch (OldSelectionType) {
			    case c.chSelectionPoint:
			    case c.chSelectionPlotArea:
			    case c.chSelectionLegend:
			    case  c.chSelectionChart:
				    OldSelection.Interior.Color = OldValue;
				    break;
			    case c.chSelectionSeries:
			    case c.chSelectionGridlines:
				    OldSelection.Line.Color = OldValue;
				    break;
			    case c.chSelectionLegendEntry:
			    case c.chSelectionAxis:
			    case c.chSelectionTitle:
				    OldSelection.Font.Color = OldValue;
				    break;
			    case c.chSelectionCategoryLabel:
				   // OldSelection.Parent.Font.Color = "red";
				    break;
		    }		   
	   }

  switch (ChartSpace4.SelectionType) {
 
		case c.chSelectionPoint:			  
			OldValue = ChartSpace4.Selection.Interior.Color;
            window.status = ChartSpace4.Selection.GetValue(c.chDimValues) + " " + ChartSpace4.Selection.GetValue(c.chDimCategories);
			ChartSpace4.Selection.Interior.Color = "red";
			var url=document.all("ChartUrl4").value+"?Typ="+ChartSpace4.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace4.Charts(0).SeriesCollection(0).Caption+"&TypeVal="+0 
			
			window.navigate(url)			
			break;
		case c.chSelectionPlotArea:
		case c.chSelectionLegend:
		case c.chSelectionChart:
			OldValue = ChartSpace4.Selection.Interior.Color;
			//ChartSpace4.Selection.Interior.Color = "gray";
			break;
		case c.chSelectionSeries:
		case c.chSelectionGridlines:		     
			OldValue = ChartSpace4.Selection.Line.Color;
			//ChartSpace4.Selection.Line.Color = "red";
			break;
		case c.chSelectionLegendEntry:
		case c.chSelectionAxis:
		case c.chSelectionTitle:		  
			OldValue = ChartSpace4.Selection.Font.Color;
			//ChartSpace4.Selection.Font.Color = "red";
			break;
		case c.chSelectionCategoryLabel:		
			//ChartSpace4.Selection.Parent.Font.Color = "red";
			break;
	}

	// Store the current selection so that the settings can be
	// later restored when a new selection is made
	if (ChartSpace4.SelectionType != c.chSelectionChartSpace) {
		OldSelection = ChartSpace4.Selection;
		OldSelectionType = ChartSpace2.SelectionType;
		bOld = true;
	}
}
</script>
