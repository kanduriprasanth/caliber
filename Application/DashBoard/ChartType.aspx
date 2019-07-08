<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChartType.aspx.vb" Inherits="DashBoard.ChartType" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>ChartType</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
	</HEAD>
	<body  MS_POSITIONING="GridLayout">
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
					    <td>
					        <asp:TextBox ID="ValTxt" runat="server" CssClass="HideRow"></asp:TextBox>
					    </td>
					    </tr>
						    <tr>
							    <td class="MainTd" colSpan="4">
								    <DIV runat="server"  id='ResTab' style="OVERFLOW:scroll; height:300px;  BACKGROUND-COLOR: gray">
								        <asp:Table ID="SubTable" runat="server" CssClass="SubTable" Width="100%" CellPadding=0 CellSpacing=1></asp:Table>
								    </DIV>
							    </td>
						    </tr>
					    </table>						
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR  class="MainFoot">
					<TD><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnSpCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" 
							onmouseout="this.className='ButCls'" type="button" value="Cancel" onclick="fnCrCancel()">
					</TD>
				</TR>
			</TABLE>
		</form>
		
		<script language="javascript">
		
		    function FnGetChartType(cnt)
		    {
		        var ChrtNo=document.getElementById("SpId_" + cnt).innerHTML;
		        var ChartName=document.getElementById("Sp_" + cnt).innerHTML;
		        document.getElementById("ValTxt").value=ChrtNo;
		        opener.fnSetVal(ChartName,ChrtNo);
		    }
		    
		    function fnSpCloseWin()
		    {
		        if(document.getElementById("ValTxt").value=="")
		        {
		            alert('Select Chart Type');
		            return false;
		        }
		        else
		        {
		            window.self.close();
		        }
		    }
		    
		    function fnCrCancel()
		    {
		        opener.fnSetVal('','');
		        window.self.close();
		    }
		
        </script>
	</body>
</HTML>

