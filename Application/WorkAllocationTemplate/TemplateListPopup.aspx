<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TemplateListPopup.aspx.vb" Inherits="WorkAllocationTemplate.TemplateListPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    	<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		
		<script language =javascript >
		function TemplatPreview(TemplateId)
		{
	 pageURL ="TemplatePreview.aspx?TemplateId=" + TemplateId
	  SpWinObj = window.open(pageURL,'TemplatePreview',"height=350,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=75,left=75");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

        }
        </script>
        
</head>
<body>
   <form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
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
									<td class="MainTd" >
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
										</asp:RadioButtonList>
									</td>
									<td class="MainTd" >
										<asp:literal id="SearchTypeLtrl" runat="server">Template Type</asp:literal>
									</td>
									<td class="MainTd">
										<asp:DropDownList  ID="TpltTypeDdl" Runat="server" CssClass="RBList"  Height="18px" Width ="120px">
			                                    <asp:ListItem Value="0">&lt;Select&gt;</asp:ListItem>
										</asp:DropDownList>
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
									<tr class ="HideRow" >
                                    <td  id ="RBVal"></td>
                                    <td>
                                   </td>
                                </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
					<INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" 
							onmouseout="this.className='ButCls'" type="button" value="Ok" onclick="fnCrCloseWin()"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
	
		var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		var KdIdVal=document.all("KdId"+ RowCnt).innerText
		var HFTAulID =document.all("AULId"+ RowCnt).innerText
		document.getElementById("RBVal").value = KdIdVal
		
		opener.fnSetVal_HFTemplate(KdIdVal,KfLableVal)
	}
	function fnCrCancel(){
		opener.fnSetVal_HFTemplate('','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	
	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("<%=ErrerMessageStr%>")
            return(false);
          }
        opener.Submitpage()
		window.self.close()
	}
        </SCRIPT>
</body>
</html>
