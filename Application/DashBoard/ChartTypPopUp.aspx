<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ChartTypPopUp.aspx.vb" Inherits="DashBoard.ChartTypPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ChartTypPopUp</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
	</HEAD>
	<body onload="fn()" MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR style="HEIGHT: 20px">
					<TD class="MainHead">Chart Type List</TD>
				</TR>
				<TR>
					<TD>						
					    <table cellSpacing="0" cellPadding="0" width="100%" align="center">
						    <tr>
							    <td class="MainTd" colSpan="4">
								    <DIV  id='ResTab' style="OVERFLOW:scroll; height:300px;  BACKGROUND-COLOR: gray"></DIV>
							    </td>
						    </tr>
					    </table>						
					</TD>
				</TR>
				<SELECT id="GraphSelect"  name="GraphSelect" class="HideRow">
					<OPTION value="17" selected>Line</OPTION>
					<OPTION value="0">Column 3D</OPTION>
					<OPTION value="1">Column Clustered</OPTION>
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
					<%--<OPTION value="32">Polar Line</OPTION>
					<OPTION value="33">Polar LineMarkers</OPTION>
					<OPTION value="34">Polar Markers</OPTION>
					<OPTION value="35">Polar SmoothLine</OPTION>
					<OPTION value="36">Polar Smooth Line Markers</OPTION>--%>
					<OPTION value="37">Radar Line</OPTION>
					<%--<OPTION value="38">Radar Line Filled</OPTION>--%>
					<OPTION value="39">Radar Line Markers</OPTION>
					<OPTION value="40">Radar Smooth Line</OPTION>
					<OPTION value="41">Radar Smooth Line Markers</OPTION>
					<%--<OPTION value="42">Scatter Line</OPTION>
					<OPTION value="43">Scatter Line Filled</OPTION>
					<OPTION value="44">Scatter Line Markers</OPTION>
					<OPTION value="45">Scatter Markers</OPTION>
					<OPTION value="46">Scatter Smooth Line</OPTION>
					<OPTION value="47">Scatter Smooth Line Markers</OPTION>--%>
					<OPTION value="48">Smooth Line</OPTION>
					<OPTION value="49">Smooth Line Markers</OPTION>
					<OPTION value="50">Smooth Line Stacked</OPTION>
					<OPTION value="53">Smooth Line Stacked Markers
					</OPTION>
					<%--<OPTION value="54">Stock HLC</OPTION>
					<OPTION value="55">Stock OHLC--%>
					</OPTION>
				</SELECT>
				<!-- MAIN FOOTER -->
				<TR  class="MainFoot">
					<TD><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnSpCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" 
							onmouseout="this.className='ButCls'" type="button" value="Cancel" onclick="fnCrCancel()">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
     var flag=false
     var ChkVal
  	var ChkNo
  	function SetChkNo(val,no){
  	ChkVal=val
  	ChkNo=no
  	flag=true
  	}
	function fnCrCancel(){	
	 
		window.self.close()		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnSpCloseWin(){
	if (flag==true)
	{		  
	   opener.fnSetVal(document.all("GraphSelect")(ChkNo).innerText,ChkVal)
		window.self.close()
	}
	else
	{		
	alert("Select value")
		return false
	}
	}
	function fn(){	
	var str 
	str="<table  CellSpacing='1' CellPadding='0' Class='SubTable' Width='100%'>	<TR><TD Class='SubHead'>S.No.</TD><TD Class='SubHead'>Chart Type</TD></TR>"
	for(i=0;i<document.getElementById('GraphSelect').length;i++){
	  //str= str + "<TR><TD Class='SubHead'>" + (i+1) + "</TD><TD Class='SubHead'>" + document.all("GraphSelect")(i).innerText + "</TD></TR>"
	  
	  str= str + "<TR><TD Class='SubHead'>" + (i+1) + "</TD><TD Class='SubHead'><input type=radio name=RB onclick='SetChkNo(" + document.all("GraphSelect")(i).value + ","+ i +")' style='height:15px;width:15px;' ID='RBID'> <Span   ID='KfLable"+ i +"'>" + document.all("GraphSelect")(i).innerText + "</Span></TD></TR>"
	  
	}
	 str= str + "</table>"									
										
	ResTab.innerHTML=str
	}
		</SCRIPT>
	</body>
</HTML>
