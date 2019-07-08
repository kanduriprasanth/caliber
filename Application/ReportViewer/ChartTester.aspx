<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChartTester.aspx.vb" Inherits="ReportViewer.ChartTester" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
	Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

	<style type="text/css">
		
		h2 { margin-left:5px; }
		
		.clearfix:after {
			content: ".";
			display: block;
			clear: both;
			visibility: hidden;
			line-height: 0;
			height: 0;
		}
 
		.clearfix {
			display: inline-block;
		}

		.box { float:left; width:300px; margin:10px; padding:10px; border:1px solid #ccc; }
	</style>
    <script language="javascript">
        function fnDrillDown(dl,indexval,Xval, Yval, SeriesName) {
            alert(indexval + '  ' + Xval  + '  ' + Yval  + '  ' + SeriesName )
           
        }
    </script>
    </head>
<body>
    <form id="form1" runat="server">
	<div class="clearfix">
		
		<h2>Chart Configuration</h2>

		<div style="float:left;width:340px;">
			<div class="box">
				<h3>Chart type</h3>
				<p>
					<asp:DropDownList ID="ddlChartType" runat="server" AutoPostBack="True">
					</asp:DropDownList>
				</p>
			</div>

			<div class="box">
				<h3>Number of values</h3>
				<p>
					<asp:RadioButtonList ID="rblValueCount" runat="server" AutoPostBack="True">
						<asp:ListItem Selected="True" Value="10">10 Values</asp:ListItem>
						<asp:ListItem Value="20">20 Values</asp:ListItem>
						<asp:ListItem Value="50">50 Values</asp:ListItem>
						<asp:ListItem Value="100">100 Values</asp:ListItem>
						<asp:ListItem Value="500">500 Values</asp:ListItem>
					</asp:RadioButtonList>
				</p>
			</div>
		</div>

		<div class="box">
			<h3>3D Settings</h3>
			<p>
				<asp:CheckBox ID="cbUse3D" runat="server" AutoPostBack="True" Text="Use 3D Chart" />
			</p>
			<h4>Inclination angle</h4>
			<p>
				<asp:RadioButtonList ID="rblInclinationAngle" runat="server" AutoPostBack="True">
					<asp:ListItem Value="-90">-90°</asp:ListItem>
					<asp:ListItem Value="-50">-50°</asp:ListItem>
					<asp:ListItem Value="-20">-20°</asp:ListItem>
					<asp:ListItem Value="0">0°</asp:ListItem>
					<asp:ListItem Selected="True" Value="20">20°</asp:ListItem>
					<asp:ListItem Value="50">50°</asp:ListItem>
					<asp:ListItem Value="90">90°</asp:ListItem>
				</asp:RadioButtonList>
			</p>
		</div>
		

	</div>

    <div>
		<asp:Chart ID="cTestChart" runat="server" Height="400px" Width="800px">
			<Series>
				<asp:Series Name="Testing">
				</asp:Series>
			</Series>
			<ChartAreas>
				<asp:ChartArea Name="ChartArea1">
					<Area3DStyle />
				</asp:ChartArea>
			</ChartAreas>
		</asp:Chart>
        </div>
    </form>
</body>
</html>

