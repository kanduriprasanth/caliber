<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkFlowListPopUp.aspx.vb" Inherits="TestDynamicEForm.WorkFlowListPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	 
	</HEAD>
		
	<script language =javascript >
		function TemplatPreview(WorkFlowId)
		{
	 pageURL ="WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId
	  SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

        }
        
        </script>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">
					<asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
					</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr>
									<td class="MainTd" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox ID="FindTxt" maxLength="30"  runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
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
				<TR>
					<TD class="MainFoot"><input class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok"/> 
							<input class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel"/>
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 var flag=0;
  	function fnCrGetCode(RowCnt)
	{ 
        var WofAulIdVal=document.all("WofAulId"+ RowCnt).innerHTML
        var WofIdVal=document.all("WofId"+ RowCnt).innerText
        var WofDesVal=document.all("WofUCode"+ RowCnt).innerText //document.all("WofDes"+ RowCnt).innerText
        var RevCntVal=document.all("RevCnt"+ RowCnt).innerText 
        var AppCntVal=document.all("AppCnt"+ RowCnt).innerText 
        var RevColVal=document.all("RevColor"+ RowCnt).innerText 
        var AppColVal=document.all("AppColor"+ RowCnt).innerText

        opener.fnCrSetToCode(WofIdVal,WofAulIdVal,WofDesVal,RevCntVal,AppCntVal,RevColVal,AppColVal)
        flag=1;
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','','','','','','')
		opener.fnCrformSubmit()
		window.self.close()
		 
	}
	document.oncontextmenu=new Function("return false")
	function fnSpCloseWin(){
	 
		//opener.fnCrformSubmit()
		//opener.fnCrSetToCode('','','')
		if (flag==1)
		{
		opener.fnCrformSubmit()
		window.self.close()
		}
		else
		{
		alert("<%=WorkflowSelAlert%>")
		return false;
		}
	}
        </SCRIPT>
	</body>
</HTML>