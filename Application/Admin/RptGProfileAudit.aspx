<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptGProfileAudit.aspx.vb" Inherits="Admin.RptGProfileAudit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>RptGProfileAudit</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<%--<link rel="stylesheet" href="CUSTOM.CSS" type="text/css">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<script language=javascript>
		function chk()
		{
			var cnt=0;
			var len=document.all("ChkDiff").length;
			var i;
			for(i=0;i<len;i++)
			{
				if(document.all("ChkDiff")(i).checked)
					cnt++;
				if(cnt==3)
				{
					alert('Select Atmost Two Versions');
					document.getElementById('Form1').reset();
					return
				}
			}
		}

		</script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="150" cellSpacing="0" cellPadding="0" width="600" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Audit Trail</TD>
				</TR>
				<TR>
					<TD valign="top">
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="SubHead" colspan="2">Global Profile Revision Audit Trail</TD>
							</TR>
							<tr>
								<td class="MainTD" style='WIDTH:80px'>Role</td>
								<td class="MainTD"><b>:</b>
									<asp:Label ID="lblRoleName" Runat="server"></asp:Label></td>
							</tr>
							<tr>
								<td class="MainTD" style='WIDTH:80px'>Category</td>
								<td class="MainTD" style='WIDTH:90%'><b>:</b>
									<asp:Label ID="lblCategoryName" Runat="server"></asp:Label></td>
							</tr>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP:0px" valign="top">
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:2px groove;BORDER-TOP:2px groove;BORDER-LEFT:2px groove;BORDER-BOTTOM:2px groove">
							<TR>
								<TD STYLE="BACKGROUND-COLOR:gray" valign="top">
									<DIV valign="top" STYLE="DISPLAY:block;OVERFLOW:scroll;HEIGHT:300px">
										<asp:DataGrid CssClass="SubTable" id="Datagrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
											runat="server" Width="100%" AutoGenerateColumns="False">
											<Columns>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="40"
													ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Profile Set By">
													<ItemTemplate>
														<asp:Label id="Label6" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedBy") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Profile Set On"
													ItemStyle-Width="140">
													<ItemTemplate>
														<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.InitiatedOn") %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Version No."
													ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label8" runat="server" Text='<%# GetVersionNo() %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
												<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Select*" ItemStyle-Width="80"
													ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
													<ItemTemplate>
														<asp:Label id="Label9" runat="server" Text='<%# GetCheckbox(DataBinder.Eval(Container, "DataItem.GProfileID")) %>'>
														</asp:Label>
													</ItemTemplate>
												</asp:TemplateColumn>
											</Columns>
										</asp:DataGrid>
									</DIV>
								</TD>
							</TR>
						</TABLE>
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD">
									<SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> Select <B>1</B> Version To 
										View The Settings or Any <B>2</B> Versions For Comparison.</SPAN>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:button id="btnSubmit" runat="server" Text="Show Details" CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" Width="90"></asp:button>&nbsp; <input onclick="window.history.back()" class="ButCls" onmouseover="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" type="button" value="Back" style="WIDTH:60px">
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
	<script language=javascript>
	//context menu		
function contextMenu(){

if(event.srcElement.type=='text'||event.srcElement.type=='textarea'){

var obj=event.srcElement

var Txt=obj.value

var rowCnt=0

if(event.srcElement.type=='textarea')

{Txt=obj.innerText

var d=0

for(d=0;d<Txt.length;d++){

if(Txt.charAt(d)=='\n')

rowCnt= rowCnt+ 1

}

}

if(Txt!=''){

var popWidth

var popHeight

var oPopup = window.createPopup();

var oPopupBody = oPopup.document.body;

oPopupBody.style.backgroundColor = "lightyellow";

oPopupBody.style.border = "solid black 1px";

oPopupBody.style.fontFamily="arial"

oPopupBody.style.fontSize=14

oPopupBody.style.marginLeft=5

var TxtSize=Txt.length

oPopupBody.innerText =Txt

var popleft = obj.clientLeft;

var poptop =obj.clientTop;

popWidth= obj.clientWidth + 20

popHeight=obj.clientHeight

poptop=poptop + popHeight

if(popWidth<300){popWidth=300}

var lineCnt

lineCnt=parseInt((TxtSize*10)/obj.clientWidth)

if(rowCnt>lineCnt){lineCnt=rowCnt}

popHeight=24

if(lineCnt>0){ popHeight=(lineCnt*22) + 10 }

oPopup.show(popleft, poptop, popWidth, popHeight , obj);

}

}else{

return false;

}

}//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

function clickIE() {

if (document.all) {

(message);return false;

}

}

 

function clickNS(e) {

if(document.layers||(document.getElementById&&!document.all)) {

if (e.which==2||e.which==3) {

(message);return false;}

}

}

 

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

 

function DisableCopy(){

if(!(event.srcElement.type=='text'|| event.srcElement.type=='textarea'))

return false;

}


//for disabling autocomplete
function AutoComplete()
{
var formcount = document.forms.length

for(i=0;i<formcount;i++)
{
 
 document.forms(i).setAttribute("autocomplete","off"); 
}
}
window.setTimeout("AutoComplete()",300);

//-->
</script>
</HTML>
