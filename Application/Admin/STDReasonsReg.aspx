<%@ Page Language="vb" AutoEventWireup="false" Codebehind="STDReasonsReg.aspx.vb" Inherits="Admin.STDReasonsReg" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>Caliber QAMS</TITLE>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<META content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<META content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<META content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../GlobalCls/calendar.css" type="text/css" rel="stylesheet">
        <script language="javascript" src='../JScript/Common.js'></script>
		<SCRIPT language="JavaScript" src="../GlobalCls/calendar.js" type="text/javascript"></SCRIPT>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout" topmargin="0" leftmargin="0" rightmargin="0">
		<FORM id="f1" name="f1" method="post" runat="server">
			<ASP:VALIDATIONSUMMARY id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></ASP:VALIDATIONSUMMARY>
			<BR>
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="500" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR class="HideRow">
								<TD class="MainTD" style="PADDING-RIGHT:5px; PADDING-LEFT:5px; PADDING-BOTTOM:5px; PADDING-TOP:5px">
									<ASP:LABEL Runat="server" id="Label2" Width="120">Reasons Type</ASP:LABEL>
									<ASP:DROPDOWNLIST Runat="server" ID="ReasonType" Width="200">
										<ASP:LISTITEM Value=''>[Select reason type]</ASP:LISTITEM>
										<ASP:LISTITEM Value='1'>Reason for Change</ASP:LISTITEM>
										<ASP:LISTITEM Value='2'>Reason for Rejection</ASP:LISTITEM>
									</ASP:DROPDOWNLIST>
									
								</TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:5px; PADDING-LEFT:5px; PADDING-BOTTOM:5px; PADDING-TOP:5px">
									<ASP:LABEL Runat="server" id="ReasonLbl"></ASP:LABEL>
									<ASP:REQUIREDFIELDVALIDATOR Runat="server" ID="ReasonErrMsg" ControlToValidate="Reason" >*</ASP:REQUIREDFIELDVALIDATOR><BR>
									<ASP:TEXTBOX Runat="server" ID="Reason" onKeypress="taLimit()" onKeyup="taCount()" CssClass="TxtCls"
										TextMode="MultiLine" Rows="3" Width="465"></ASP:TEXTBOX>
								</TD>
							</TR>
						</TABLE>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<ASP:TEXTBOX ID="LoginID" Runat="server" Height="0" Width="0" style="DISPLAY:none"></ASP:TEXTBOX>
						<ASP:BUTTON id="btnSubmit" runat="server" Text="Submit" CssClass="ButCls" onMouseOver="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></ASP:BUTTON>
						<INPUT class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="SubHead"><asp:Literal ID="ExstSTDReasonLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD>
									<ASP:DATAGRID CssClass="SubTable" id="DataGrid1" CellPadding="0" CellSpacing="1" BorderWidth="0"
										runat="server" Width="100%" AutoGenerateColumns="False" AllowPaging="True" PagerStyle-Mode="NumericPages"
										PageSize="10" PagerStyle-CssClass="PagerTD" PagerStyle-PageButtonCount="15" PagerStyle-HorizontalAlign="Center">
										<COLUMNS>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label1" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>Label</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HideRow" ItemStyle-CssClass="HideRow" HeaderText="Reason Type"
												ItemStyle-Width="80">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label4" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.STDReason") %>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											<ASP:TEMPLATECOLUMN HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Reason">
												<ITEMTEMPLATE>
													<ASP:LABEL id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Reason")%>'>
													</ASP:LABEL>
												</ITEMTEMPLATE>
											</ASP:TEMPLATECOLUMN>
											 
										</COLUMNS>
										
									</ASP:DATAGRID>									
								</TD>
							</TR>
							 
						</TABLE>
					</TD>
				</TR>
			</TABLE>
		</FORM>
		<SCRIPT language="javascript">
	   //TEXTAREA VALIDATIONS FOR THE LENGHT
		var taMaxLength = 200
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Chars")
			}
			//if (visCnt) visCnt.innerText=taObj.maxLength-taObj.value.length;
		}
		
		//context menu	//contextMenu


//Disable right click

//var message="";

/////////////////////////////////////

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

 


//for disabling autocomplete
		</SCRIPT>
	</BODY>
</HTML>
