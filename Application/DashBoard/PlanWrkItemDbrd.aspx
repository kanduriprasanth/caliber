<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanWrkItemDbrd.aspx.vb" Inherits="DashBoard.PlanWrkItemDbrd" %>

<%@ Register TagPrefix="uc1" TagName="SearchCtrl" Src="SearchCtrl4.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="3"
				CELLSPACING="0" CELLPADDING="0">
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="Table2" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW ID="ChrtTr">
								<ASP:TABLECELL VerticalAlign=Middle HorizontalAlign=Center CSSClass="MainTD" ID="ChrtTd" ColumnSpan="6">
									
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CssClass="HIdeRow">
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server">Work List</ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CssClass="HIdeRow">
								<ASP:TABLECELL CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl id="SearchCtrl1" runat="server"></uc1:SearchCtrl>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CSSClass="HideRow">
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="2">
									<ASP:LINKBUTTON id="ActLb" Height="100%" Runat="server" Width="100%"></ASP:LINKBUTTON>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="4"></ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW CssClass="HIdeRow">
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW >
								<ASP:TABLECELL ColumnSpan="7">
									<ASP:TABLE id="DisTable1" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
									<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1">
                    <asp:TextBox ID="ChartVals1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChartHeading1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChartTyp1" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChartUrl1" runat="server"></asp:TextBox>
                    <asp:TextBox id="TypeTxt" runat="server"></asp:TextBox>
                    <input name="TxtCol" id="TxtCol" class="TxtCls" runat="server" value="1" />
                    <input name="NumCol" id="NumCol" class="TxtCls" runat="server" value="1" />
                    <select id="GraphSelect" name="GraphSelect" runat="server" class="TxtCls" onchange="GraphSel()">
                        <option value="17">Line</option>
                        <option value="0">Column 3D</option>
                        <option value="1">Column Clustered</option>
                        <option value="2">Column Clustered 3D</option>
                        <option value="3">Column Stacked</option>
                        <option value="6">Column Stacked 3D</option>
                        <option value="7">Bar 3D</option>
                        <option value="8">Bar Clustered</option>
                        <option value="9">Bar Clustered 3D</option>
                        <option value="10">Bar Stacked</option>
                        <option value="13">Bar Stacked3D </option>
                        <option value="15">Doughnut</option>
                        <option value="16">Doughnut Exploded</option>
                        <option value="18">Line 3D</option>
                        <option value="19">Line Markers</option>
                        <option value="20">Line Overlapped 3D</option>
                        <option value="21">Line Stacked</option>
                        <option value="25">Line Stacked 3D</option>
                        <option value="26">Line Stacked Markers</option>
                        <option value="27">Pie</option>
                        <option value="28">Pie 3D</option>
                        <option value="29">Pie Exploded</option>
                        <option value="30">Pie Exploded3D</option>
                        <option value="31">Pie Stacked</option>
                        <option value="32">Polar Line</option>
                        <option value="33">Polar LineMarkers</option>
                        <option value="34">Polar Markers</option>
                        <option value="35">Polar SmoothLine</option>
                        <option value="36">Polar Smooth Line Markers</option>
                        <option value="37">Radar Line</option>
                        <option value="38">Radar Line Filled</option>
                        <option value="39">Radar Line Markers</option>
                        <option value="40">Radar Smooth Line</option>
                        <option value="41">Radar Smooth Line Markers</option>
                        <option value="42">Scatter Line</option>
                        <option value="43">Scatter Line Filled</option>
                        <option value="44">Scatter Line Markers</option>
                        <option value="45">Scatter Markers</option>
                        <option value="46">Scatter Smooth Line</option>
                        <option value="47">Scatter Smooth Line Markers</option>
                        <option value="48">Smooth Line</option>
                        <option value="49">Smooth Line Markers</option>
                        <option value="50">Smooth Line Stacked</option>
                        <option value="53">Smooth Line Stacked Markers </option>
                        <option value="54">Stock HLC</option>
                        <option value="55">Stock OHLC </option>
                    </select>
                </asp:TableCell>
               
            </asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table></form>
	</body>
	
	<script language="jscript">
	
	
var ota = new Array();
var ota2 = new Array();
var bOld = false;
var chConstants

	handleOnLoad()		

function handleOnLoad()
 {
for(i=1; i<=1; i++){
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
            ChartObj.Charts(0).SeriesCollection(k).Caption="<%=ChrtTitle%>"//document.all("ChartNm"+ i).value;  
            ChartObj.Charts(0).HasTitle = true   
            ChartObj.Charts(0).Title.Font.Size = 10
            ChartObj.Charts(0).Title.Font.Bold=true
            ChartObj.Charts(0).Axes(1).HasTitle = true
            ChartObj.Charts(0).Axes(1).Title.Font.Size = 10
            ChartObj.Charts(0).Axes(1).Title.Font.Bold=true
            ChartObj.Charts(0).Axes(1).MajorUnit = 5 
        
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
                ChartObj.Charts(0).SeriesCollection(k).SetData (c.chDimCategories, c.chDataLiteral, HeadValArr);
            }
                      
               
        }
                
    }   
    
    else
    {
        ChartObj.Charts(0).SeriesCollection.Add(); 
        ChartObj.Charts(0).SeriesCollection(0).Caption="<%=ChrtTitle%>"//document.all("ChartNm"+ i).value;  
        ChartObj.Charts(0).HasTitle = true   
        ChartObj.Charts(0).Title.Font.Size = 10
        ChartObj.Charts(0).Title.Font.Bold=true
        ChartObj.Charts(0).Axes(1).HasTitle = true
        ChartObj.Charts(0).Axes(1).Title.Font.Size = 10
        ChartObj.Charts(0).Axes(1).Title.Font.Bold=true
        
        ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimValues, c.chDataLiteral, valuesAry); 
      //ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimHeadings, c.chDataLiteral, ChartHeadings); 
        ChartObj.Charts(0).SeriesCollection(0).SetData (c.chDimCategories, c.chDataLiteral, HeadingsAry);   
    }

       //santosh   
	ChartObj.Charts(0).HasLegend = true;	
	ChartObj.Charts(0).Legend.Font.Size = 10	
	ChartObj.Charts(0).Axes(0).Font.Size = 10		
    ChartObj.Charts(0).Axes(0).MajorUnit = 5
	ChartObj.Charts(0).Type =CharTypeAry[document.all("ChartTyp"+ i).value];
	
	ChartObj.HasChartSpaceTitle =  true
    ChartObj.ChartSpaceTitle.Caption =""//document.all("ChartNm"+ i).value  
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
			var url=document.all("ChartUrl1").value+"?Typ="+ChartSpace1.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace1.ChartSpaceTitle.Caption+"&TypeVal="+document.getElementById("TypeTxt").value 
		
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
			var url=document.all("ChartUrl2").value+"?Typ="+ChartSpace2.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace2.Charts(0).SeriesCollection(0).Caption
					
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
			var url=document.all("ChartUrl3").value+"?Typ="+ChartSpace3.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace3.Charts(0).SeriesCollection(0).Caption
			
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
			var url=document.all("ChartUrl4").value+"?Typ="+ChartSpace4.Selection.GetValue(c.chDimCategories)+"&ChartNm="+ChartSpace4.Charts(0).SeriesCollection(0).Caption
			
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

</HTML>


