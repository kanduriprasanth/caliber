<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationList.aspx.vb" Inherits="InstName.CreationList" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>CreationList</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../TRIMS.css" rel="stylesheet">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<SCRIPT language="javascript">
<!--
  var SpWinObj

 function fnOpenCrPopUp(){
 
  SetPopDimensions()
    
    var pageURL = "CreationPopUP.aspx"
    var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
    SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(KfIdVal,KfLableVal){
      var objId
      var obj         
		
		objId= 'KfId'
		obj=document.getElementById(objId)
		obj.value = KfIdVal		
		
		objId=  'KfLable'
        obj=document.getElementById(objId)
		obj.value = KfLableVal
		KfLable.innerHTML=obj.value 
		
} 

	function fnCrformSubmit(){
	 document.all("GoBtn").click()
	}
	//-->
		</SCRIPT>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="Table1" runat="server" cssclass="MainTable" HorizontalAlign="center" BorderWidth="3"
				CELLSPACING="0" CELLPADDING="0" >
				<ASP:TABLEROW Height="20">
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
							cellspacing="1" width="100%">
							<ASP:TABLEROW>
								<ASP:TABLECELL CSSClass="SubHead" ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="6">
									<TABLE Align="center" CELLPADDING="0" class="SubTable" cellspacing="1" width="100%">
										<tr>
											<td Style="WIDTH:200px;font-weight:bold" class="MainTd">
												Equipment Category &nbsp; <INPUT type="button" title="Click Here" onclick="fnOpenCrPopUp()" class='RsnPUP' style="HEIGHT:20px">
											</td>
											<td class="MainTd">
												<asp:Label id="KfLable" runat="server" CssClass="MainTd"></asp:Label>
											</td>
										</tr>
										<TR class="HideRow">
											<TD colspan="2">
												<asp:RequiredFieldValidator id="ReqFieldValidator1" runat="server" ControlToValidate="KfId" Height="0" Width="0"
													ErrorMessage="Select Value For: Instrument Category">&nbsp;</asp:RequiredFieldValidator>
												<asp:TextBox id="KfId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
											</TD>
										</TR>
									</TABLE>
									<ASP:ImageButton id="GoBtn" Runat="server" ImageUrl="../IMAGES/Go.gif" CssClass="HideRow"></ASP:ImageButton>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
									<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
								</asp:TableCell>
							</asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table></form>
	</body>
</HTML>
