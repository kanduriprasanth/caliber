<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationList.aspx.vb" Inherits="TestDynamicEForm.CreationList" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>CreationList</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<link rel="stylesheet" href="../TRIMS.css"> 
<SCRIPT language="javascript">
<!--
  var SpWinObj

 function fnOpenCrPopUp(){
    var pageURL = "CreationPopUP.aspx"
   
    var PWidth=600
    var PHeight=460
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
    
	var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(KfIdVal,KfLableVal,KfCodeVal)
{
    var objId
    var obj
    objId=  'KfId'
    obj=document.getElementById(objId)
    obj.value = KfIdVal

    objId=  'KfLable'
    obj=document.getElementById(objId)
    obj.value = KfLableVal
    
        objId=  'KfAulId'
    obj=document.getElementById(objId)
    obj.value = KfCodeVal

    
} 
	function fnCrformSubmit(){
	 document.all("GoBtn").click()
	}
	//-->
</SCRIPT>
	</head>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center" cssclass="MainTable"
				Width="98%" runat="server" id="Table1">
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
								<ASP:TABLECELL CssClass="MainTD" ColumnSpan="5" >
								<TABLE Align="center" CELLPADDING="0" class="SubTable" cellspacing="1" width="100%">
								
									<tr>
										<td Style="WIDTH:150px" class="MainTd"> <asp:Label id="eFormLab" runat="server" CssClass="MainTd"  Font-Bold=true ></asp:Label>
										 		
										 </td>
										<td class="MainTd">
										    <INPUT type="button" onclick="fnOpenCrPopUp()" class='RsnPUP' style="HEIGHT:20px">
											<asp:Label id="KfLable" runat="server" CssClass="MainTd" ></asp:Label>
										</td>
								 </tr>
									<TR>
										<TD colspan="2" class="HideRow">
										 	<asp:RequiredFieldValidator id="ReqFieldValidator1" runat="server" ControlToValidate="KfId" Height="0" Width="0">&nbsp;</asp:RequiredFieldValidator>
											<asp:TextBox id="KfId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
											<asp:TextBox id="KfAulId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
										 	</TD>
									</TR>
								</TABLE>

							  	 <ASP:ImageButton id="GoBtn" Runat=server ImageUrl= "../IMAGES/Go.gif"  CssClass="HideRow"></ASP:ImageButton>
								</ASP:TableCell>
								</ASP:TABLEROW>
							 
							
						 	<asp:TableRow CssClass="HideRow" Height="0">
					      <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
						</ASP:TABLE>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
			</asp:table>
		</form>
	</body>
</html>
