<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PopupPage.aspx.vb" Inherits="IssueLogin.PopupPage" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
								<Tr>
									<td class="<%=SrhCssClass %>" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td colspan="3" class="<%=SrhCssClass %>">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength =26>%</asp:TextBox>
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
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Submit"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
					
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
    var flag=false
  	
  	function fnCrGetCode(RowCnt)
	{ 
	var SaveColStr="<%=SaveColStr%>"
	var ColArr =new Array()
	ColArr=SaveColStr.split(",")
	
	var SelectedvalArr=new Array()
	var SendArr=new Array()
	
	for(var i=0;i<=ColArr.length-1;i++)
       {
        SelectedvalArr.push(document.all("FldVAl_"+RowCnt+"_"+ i).innerHTML)
       }
       SendArr.push(SelectedvalArr[0]);
       SendArr.push(SelectedvalArr[1]);
       
            
//       switch(<%=SaveFlag%>)
//       { 
//         case 2:
//            SendArr.push(SelectedvalArr[0]); //+"/"+SelectedvalArr[1]
//            SendArr.push(SelectedvalArr[2]); //+"/"+SelectedvalArr[3]
//            break;
//        case 0 :
//            SendArr.push(SelectedvalArr[0]);
//            SendArr.push(SelectedvalArr[1]);
//             break;
//       }
       
       
    if (<%=CtrlId%> ==1)   
    	opener.fnCrSetToCode("<%=BaseId%>",<%=CtrlId%>,SendArr,document.all("GenericCode"+ RowCnt).innerHTML)
    else
    	opener.fnCrSetToCode("<%=BaseId%>",<%=CtrlId%>,SendArr,0)
	flag=true
	}
	
	function fnCrCancel(){
	debugger
	    opener.fnCrSetToCode("<%=BaseId%>",<%=CtrlId%>,'','')
		opener.fnCrformSubmit()
		window.self.close()
 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	if (flag==false) 
	{
	alert("Select value")
	return false
	}
	else
	{
		opener.fnCrformSubmit()
		window.self.close()
		}
	}
        </SCRIPT>
	</body>
</HTML>