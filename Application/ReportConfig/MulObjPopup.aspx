<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MulObjPopup.aspx.vb" Inherits="ReportConfig.MulObjPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>"<%=MainHeader%>"</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><%=MainHeader%></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td id="KdIdVal"></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr class="HideRow">
									<td class="MainTd" colspan="1">
										<b><asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal></b>
										<asp:TextBox ID="RBVal" runat="server"></asp:TextBox>
									</td>
									<td class="MainTd" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Equipment Id</asp:ListItem>
											<asp:ListItem Value="2"> Equipment </asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="HideRow">
										<b><asp:literal id="FindLrl" runat="server">Find</asp:literal></b>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTd">
										<b><asp:literal id="Literal1" runat="server">Records Limit</asp:literal></b>
									</td>
									<td class="MainTd" colspan="3">
										<asp:textbox id="Textbox2" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="6">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR class="MainFoot">
					<TD ><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		var KfLableValArr=new Array()
        var KdIdValArr=new Array()
        var KdCodeVal =new Array()
         
        for(var k=1;k<=<%=TotalCnt%>;k++)
        {
            if(document.getElementById("RBID"+k).checked ==true)
            {
                KfLableValArr.push(document.all("Description"+ k).innerHTML)
                KdIdValArr.push(document.all("BaseId"+ k).innerText)
                KdCodeVal.push(document.all("AulId"+ k).innerText)
                
                document.getElementById("RBVal").value = document.all("BaseId"+ k).innerHTML
            }
        }
   
        var KfLableVal=KfLableValArr.join(";")
        var KdIdVal=KdIdValArr.join(",")
        var KdCodeVal =KdCodeVal.join(",")
        document.getElementById("RBVal").value=KdIdVal
      
        opener.fnCrSetMulPopUpCode(<%=RowCnt%>,KfLableVal,KdIdVal,KdCodeVal)
	}
	function fnCrCancel(){
		opener.fnCrSetMulPopUpCode(<%=RowCnt%>,'','','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	    if(document.getElementById("RBVal").value == ""){
	   	  alert("Select a Value")
	   	  return(false);
	   	}
//		opener.fnCrformSubmit()
		window.self.close()
	}
        </SCRIPT>
	</body>
</HTML>

