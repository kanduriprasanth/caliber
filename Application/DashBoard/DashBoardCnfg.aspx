<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DashBoardCnfg.aspx.vb" Inherits="DashBoard.DashBoardCnfg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>DashBoardCnfg</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post"  runat="server">
			<asp:table id="tt" runat="server"  cssclass="MainTable" HorizontalAlign="center"
				CELLSPACING="0" CELLPADDING="0" BorderWidth="3">
				<asp:TableRow>
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server">DashBoard User Configuration</asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="TRRdoActive">
								<asp:TableCell CssClass="MainTD" ColumnSpan="2">
									<fieldset>
										<legend>
											<b>DashBoard Access</b></legend>
										<asp:RadioButtonList Runat="server" CssClass="MainTD"   RepeatDirection="Horizontal" AutoPostBack="True"
											ID="RdoActive">
											<asp:ListItem Value="1">Yes</asp:ListItem>
											<asp:ListItem Value="2" >No</asp:ListItem>
										</asp:RadioButtonList>
									</fieldset>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow style="Height:40px;" ID="TRDdlLayoutTyp" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="DescTd" ColumnSpan="2">
									<B>LayOut Type</B>
									<asp:DropDownList ID="DdlLayoutTyp" Runat="server" AutoPostBack="True">
										<asp:ListItem Value=''>[Select]</asp:ListItem>
										<asp:ListItem Value="1">One Chart</asp:ListItem>
										<asp:ListItem Value="2">Two Charts-Horizontal</asp:ListItem>
										<asp:ListItem Value="3">Two Charts-Vertical</asp:ListItem>
										<asp:ListItem Value="4">Four Charts</asp:ListItem>
									</asp:DropDownList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="TRMargins" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2">
									<asp:Table ID="Table3" Runat="server" Width="100%" BackColor="#ffffff" HorizontalAlign="Center">
										<asp:TableRow>
											<asp:TableCell CssClass="MainTD">
												<span style="width:80px;">Left Margin</span>
												<asp:TextBox Runat="server" CssClass="TxtCls" Width="50" ID="TxtLeftMargin" MaxLength="2" Text=3></asp:TextBox>
											</asp:TableCell>
											<asp:TableCell CssClass="MainTD">
												<span style="width:80px;">Top Margin</span>
												<asp:TextBox Runat="server" ID="TxtRightMargin" CssClass="TxtCls" Width="50" MaxLength="2" Text=5></asp:TextBox>
											</asp:TableCell>
										</asp:TableRow>
									</asp:Table>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="2">
									<asp:Table ID="DispTbl" Runat="server" Width="100%" BackColor="#ffffff"></asp:Table>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow  CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell ColumnSpan="2">
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" ></asp:Button>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table><asp:dropdownlist class="HideRow" id="GraphSelect" Runat="server">
			<asp:ListItem Value="13">Area</asp:ListItem>
			<asp:ListItem Value="7">Bar</asp:ListItem>
			<asp:ListItem Value="2">Bubble</asp:ListItem>
			<asp:ListItem Value="10">Column</asp:ListItem>
			<asp:ListItem Value="18">Doughnut</asp:ListItem>
			<asp:ListItem Value="33">Funnel</asp:ListItem>
			<asp:ListItem Value="3">Line</asp:ListItem>
			<asp:ListItem Value="17">Pie</asp:ListItem>
			<asp:ListItem Value="0">Point</asp:ListItem>
			<asp:ListItem Value="34">Pyramid</asp:ListItem>
			<asp:ListItem Value="15">StackedArea</asp:ListItem>
			<asp:ListItem Value="8">StackedBar</asp:ListItem>
			<asp:ListItem Value="11">StackedColumn</asp:ListItem>
				<%--<asp:ListItem Value="17">Line</asp:ListItem>
				<asp:ListItem Value="0">Column 3D</asp:ListItem>
				<asp:ListItem Value="1">Column Clustered</asp:ListItem>
				<asp:ListItem value="2">Column Clustered 3D</asp:ListItem>
				<asp:ListItem value="3">Column Stacked</asp:ListItem>
				<asp:ListItem value="6">Column Stacked 3D</asp:ListItem>
				<asp:ListItem value="7">Bar 3D</asp:ListItem>
				<asp:ListItem value="8">Bar Clustered</asp:ListItem>
				<asp:ListItem value="9">Bar Clustered 3D</asp:ListItem>
				<asp:ListItem value="10">Bar Stacked</asp:ListItem>
				<asp:ListItem value="13">Bar Stacked3D</asp:ListItem>
				<asp:ListItem value="15">Doughnut</asp:ListItem>
				<asp:ListItem value="16">Doughnut Exploded</asp:ListItem>
				<asp:ListItem value="18">Line 3D</asp:ListItem>
				<asp:ListItem value="19">Line Markers</asp:ListItem>
				<asp:ListItem value="20">Line Overlapped 3D</asp:ListItem>
				<asp:ListItem value="21">Line Stacked</asp:ListItem>
				<asp:ListItem value="25">Line Stacked 3D</asp:ListItem>
				<asp:ListItem value="26">Line Stacked Markers</asp:ListItem>
				<asp:ListItem value="27">Pie</asp:ListItem>
				<asp:ListItem value="28">Pie 3D</asp:ListItem>
				<asp:ListItem value="29">Pie Exploded</asp:ListItem>
				<asp:ListItem value="30">Pie Exploded3D</asp:ListItem>
				<asp:ListItem value="31">Pie Stacked</asp:ListItem>
				<asp:ListItem value="32">Polar Line</asp:ListItem>
				<asp:ListItem value="33">Polar LineMarkers</asp:ListItem>
				<asp:ListItem value="34">Polar Markers</asp:ListItem>
				<asp:ListItem value="35">Polar SmoothLine</asp:ListItem>
				<asp:ListItem value="36">Polar Smooth Line Markers</asp:ListItem>
				<asp:ListItem value="37">Radar Line</asp:ListItem>
				<asp:ListItem value="38">Radar Line Filled</asp:ListItem>
				<asp:ListItem value="39">Radar Line Markers</asp:ListItem>
				<asp:ListItem value="40">Radar Smooth Line</asp:ListItem>
				<asp:ListItem value="41">Radar Smooth Line Markers</asp:ListItem>
				<asp:ListItem value="42">Scatter Line</asp:ListItem>
				<asp:ListItem value="43">Scatter Line Filled</asp:ListItem>
				<asp:ListItem value="44">Scatter Line Markers</asp:ListItem>
				<asp:ListItem value="45">Scatter Markers</asp:ListItem>
				<asp:ListItem value="46">Scatter Smooth Line</asp:ListItem>
				<asp:ListItem value="47">Scatter Smooth Line Markers</asp:ListItem>
				<asp:ListItem value="48">Smooth Line</asp:ListItem>
				<asp:ListItem value="49">Smooth Line Markers</asp:ListItem>
				<asp:ListItem value="50">Smooth Line Stacked</asp:ListItem>
				<asp:ListItem value="53">Smooth Line Stacked Markers
				</asp:ListItem>
				<asp:ListItem value="54">Stock HLC</asp:ListItem>
				<asp:ListItem value="55">Stock OHLC
				</asp:ListItem>--%>
			</asp:dropdownlist></form>
		<script language="javascript">
<!--
var Num
function fnOpen_CharTypWin(sno){
Num=sno
	var pageURL = "ChartType.aspx" //"ChartTypPopUp.aspx"
	var features = "height=450,width=400,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=0,left=0"
	SpWinObj = window.open(pageURL,'SpecCodes',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}
function fnSetVal(ChartTyp,Val){
document.all("TxtChartTyp"+ Num).value=ChartTyp
document.all("HidChartTyp"+ Num).value=Val
}

 function fnOnlyNumericals(){
 var KC = window.event.keyCode
	if(KC<48 || KC>57){
	window.event.cancelBubble = true;	
	return(false);
	}
	}
//-->
		</script>
	</body>
</HTML>
