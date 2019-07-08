<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EnotebookListPopUp.aspx.vb" Inherits="EFormIssuance.EnotebookListPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
			<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
	 
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" style="width: 648px"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD style="width: 648px">
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
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls' Text ="%"></asp:TextBox>
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
									 
										<DIV style="overflow : auto; HEIGHT: 256px; BACKGROUND-COLOR: gray">
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
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var ENBCodeVal=document.all("ENBCode"+ RowCnt).innerHTML
		    var ENBIdVal=document.all("ENBID"+ RowCnt).innerText
		    var SecIDsLst =document.all("ENBSecIDLst"+ RowCnt).innerText
		    var ENBAULID = document.all("ENBAULID"+ RowCnt).innerText
            var SectionUcodeLst  =document.all("ENBSecUCodeLst"+ RowCnt).innerText
            
            var SectionDescLst = document.all("ENBSecDescLst"+ RowCnt).innerText
            
		    document.getElementById("RBVal").value = ENBIdVal
		    		        
		   	opener.GetENoteBookVals(ENBIdVal,ENBCodeVal,SecIDsLst,SectionDescLst,ENBAULID)
	}
	function fnCrCancel(){
		opener.GetENoteBookVals('','','','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
	 
	      if(document.getElementById("RBVal").value == undefined)
	      {
            alert("Select " + "<%=eNoteBookVal%>" + "! ")
            return(false);
          }    
		window.self.close()
	}
        </SCRIPT>
	</body>
</HTML>

