<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChartConfiguration.aspx.vb" Inherits="ReportViewer.ChartConfiguration" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title> Chart Configurations</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
          <script language="javascript">
              function fnDrillDown(dl, indexval, Xval, Yval, SeriesName) {
                //  alert(indexval + '  ' + Xval + '  ' + Yval + '  ' + SeriesName)

              }
    </script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">	 
				<TR class="SubHead">
					<TD class="MainHead"><asp:Literal ID="MainTitleLtrl" runat="server"> Chart Configurations</asp:Literal></TD>
				</TR><TR><TD><asp:table id="ChartConfigTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable" >                                                <asp:TableRow>
                                                <asp:TableCell CssClass="MainTD" ColumnSpan=4>Chart type <asp:DropDownList ID="ddlChartType" runat="server" AutoPostBack="True"></asp:DropDownList>
                                                                                                             Chart Height<asp:TextBox ID=ChartHeightTxt   Onchange="SetdefultValue(ChartHeightTxt,400)" runat=server   CssClass="TextCls"  Text=400  AutoPostBack="True"></asp:TextBox>
                                                Chart Width<asp:TextBox ID=ChartWidthTxt  Onchange="SetdefultValue(ChartWidthTxt,400)" runat=server  CssClass="TextCls"  Text=400  AutoPostBack="True"></asp:TextBox>
                                                              
                                               </asp:TableCell>
                                                </asp:TableRow>

                                                 <asp:TableRow>
                                                <asp:TableCell CssClass="MainTD"> 
                                                3D 
                                            	<asp:CheckBox ID="cbUse3D" onclick='Check3DValue()' runat="server" AutoPostBack="True" Text="Use 3D Chart" /> Inclination angle 
                                                <asp:TextBox ID=rblInclinationAngle runat=server  CssClass="TextCls"  Onchange="SetdefultValue(rblInclinationAngle,10)"  AutoPostBack="True">10</asp:TextBox>
                                                    Number of dummy values  <asp:TextBox ID=rblValueCount runat=server  CssClass="TextCls"   Onchange="SetdefultValue(rblValueCount,10)" AutoPostBack="True">10</asp:TextBox>
                                               
                                                  <INPUT   style="WIDTH: 50px" onclick="SetChartConfigValues()"
                                                                type="button" value="Ok"> <INPUT   style="WIDTH: 60px" onclick="fnCrCancel()"
                                                                type="button" value="Cancel">
                                                 </asp:TableCell>
                                                </asp:TableRow>

                                                   
 
                                                                                                   
                                                 <asp:TableRow>
                                                 
                                                <asp:TableCell CssClass="MainTD" ColumnSpan=4>
                                        <asp:Chart ID="cTestChart" runat="server" Height="300px" Width="700px">
                                        <Series>
                                        <asp:Series Name="Testing">
                                        </asp:Series>
                                        </Series>
                                        <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1">
                                        <Area3DStyle />
                                        </asp:ChartArea>
                                        </ChartAreas>
                                        </asp:Chart> </asp:TableCell></asp:TableRow>
                                               </asp:table>  
			 
					</TD>
				</TR>
			 
			</TABLE>
		</form>
 
 <script language=javascript>


     Onchange = "SetdefultValue(ChartHeightTxt)"

     function SetdefultValue(obj, DefaultValue) {

       if (obj != null){

             if (obj.value == '') {
                 obj.value = DefaultValue
             }
         
        }
    }


    function Check3DValue() {
       // if (document.getElementById("cbUse3D").checked == false) { document.getElementById("cbUse3D").checked = true }
    }





     function SetChartConfigValues() {
        var  ExpMessage=''
  
            var chartType = document.getElementById("ddlChartType").value
            var ChartAngle = document.getElementById("rblInclinationAngle").value
            var Chart3D = 0
            var ChartHeight = document.getElementById("ChartHeightTxt").value
            var ChartWidth = document.getElementById("ChartWidthTxt").value
            
            if (document.getElementById("cbUse3D").checked == true) { Chart3D = 1 }

//        if (ChartAngle == '') { ExpMessage = ExpMessage + 'Enter Value For: Inclination angle' + '\n' }
//        if (ChartHeight == '') { ExpMessage = ExpMessage + 'Enter Value For: Chart Height' + '\n' }
//        if (ChartWidth == '') { ExpMessage = ExpMessage + 'Enter Value For: Chart Width' + '\n' }
//        if (Chart3D ==0) { ExpMessage = ExpMessage + 'Select Value For: 3D' + '\n' }


//        if (ExpMessage == '') {
        opener.SetChartConfigValues2(chartType, ChartAngle, Chart3D, ChartHeight, ChartWidth);
        window.self.close() 
//        }
//        else {
//            alert(ExpMessage);
//            return
//        }
     }

     function GetChartConfigValues() {
        
         document.getElementById("ddlChartType").value= opener.document.getElementById("ReConfigChartType").value 
        document.getElementById("rblInclinationAngle").value= opener.document.getElementById("ReConfigChartAngle").value 
        if (opener.document.getElementById("ReConfigChart3D").value == 1) {
            document.getElementById("cbUse3D").checked = true
        }
         
     }

     function fnCrCancel() {
         window.self.close()
     }

     //GetChartConfigValues()

 </script>
	</body>
</HTML>