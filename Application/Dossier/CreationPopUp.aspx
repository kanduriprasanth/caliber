<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationPopUp.aspx.vb" Inherits="Dossier.CreationPopUp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<HEAD>
		<title>Parent Refs. Selection List</title>
		<script src="../JScript/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="../JScript/Common2.js"></script>
          <link rel="stylesheet" href="../TRIMS.css">
	 
	</HEAD>
	<body>
		<form autocomplete="off" id="Form1" method="post" runat="server">
        <center>
			<TABLE class="MainTable"  align="center">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Parent List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd"  ID="Div1">
							<table width="100%"  align="center">
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
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" 
											cssclass="RBList">
											<asp:ListItem Value="1" Selected="True">Kf 1</asp:ListItem>
											<asp:ListItem Value="2"> Kf 2</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td  colspan="4">
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
					<TD ><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnSpCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"/> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel"/>
					</TD>
				</TR>
			</TABLE>
            </center>
		</form>
		<script type="text/javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
		    var KdIdVal=document.all("KdId"+ RowCnt).innerText
		   	opener.fnCrSetToCode(KdIdVal,KfLableVal )
	}
	function fnCrCancel(){
		opener.fnCrSetToCode('','')
		window.self.close()
		 
	}
	
	document.oncontextmenu=new Function("return false")
	function fnCrCloseWin(){
		opener.fnCrformSubmit()
		window.self.close()
	}
		</script>
	</body>
</HTML>

