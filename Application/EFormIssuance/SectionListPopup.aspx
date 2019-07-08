<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SectionListPopup.aspx.vb" Inherits="EFormIssuance.SectionListPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

<script language="javascript">
function fnCrGetCode(RowCnt)
	{

    var ENBId=document.all("ENBID"+ RowCnt).innerHTML
    var ENBAulId=document.all("ENBAULID"+ RowCnt).innerText
    var ENBDesc =document.all("ENBDesc"+ RowCnt).innerText
    var Secid = document.all("SecIdID"+ RowCnt).innerText
    var SecDesc = document.all("SecDes"+ RowCnt).innerText
    
    document.getElementById("RBVal").value = ENBId

    opener.GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)

	}
    	function fnCrCancel(){
		opener.GetENoteBookVals('','','','','')
    window.self.close()
	}
	document.oncontextmenu=new Function("return false")
	function fnSpCloseWin(){
	      if(document.getElementById("RBVal").value ==undefined)
	      {
            alert("Select Section! ")
            return(false);
          }
        window.self.close()
	}
    </script>
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">
					<a accesskey="S" class="AHover" href="JavaScript:window.history.back();" onmouseover="className='AHover'"
    title=" Back ">
    <img border="0" onmouseout="this.src='../Images/back_n.gif'" onmouseover="this.src='../Images/back_o.gif'" style="width:26px;height:16px;"
        src="../Images/back_o.gif" /></a>&nbsp;
        <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
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
										 <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
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
                                    <asp:Table ID="CaptionsTbl" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
									<tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                    <asp:TextBox ID="TableIdTxt" runat="server"></asp:TextBox>
                                </td>
                            </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
				     <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</html>
