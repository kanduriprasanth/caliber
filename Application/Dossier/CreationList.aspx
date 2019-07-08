<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CreationList.aspx.vb" Inherits="Dossier.CreationList" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>CreationList</title>
		<script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
      <link rel="stylesheet" href="../TRIMS.css">
  <script type="text/javascript">
<!--
  var SpWinObj

 function fnOpenCrPopUp(){
    	var pageURL = "CreationPopUP.aspx"
	var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(KfIdVal,KfLableVal){
      var objId
      var obj
         
		
		 objId=  'KfId'
         obj=document.getElementById(objId)
		 obj.value = KfIdVal
		 
		  objId=  'KfLable'
         obj=document.getElementById(objId)
		 obj.value = KfLableVal
		 
		
	  
}
function fnCrformSubmit() {
	 document.getElementById("GoBtn").click()
	}
	//-->
		</script>
	</head>
	<body>
		<form autocomplete="off" id="Form1" method="post" runat="server">
        <center>
			<asp:Table HorizontalAlign="center" cssclass="MainTable" runat="server" id="Table1">
				<ASP:TABLEROW >
					<ASP:TABLECELL CssClass="MainHead">
						<ASP:LITERAL id="MainTitleLtrl" Runat="server"></ASP:LITERAL>
					</ASP:TABLECELL>
				</ASP:TABLEROW>
				<ASP:TABLEROW>
					<ASP:TABLECELL> <!-----------Base table------------->
						<ASP:TABLE id="CrTopTable" runat="server" HorizontalAlign="center" CSSClass="SubTable">
							<ASP:TABLEROW CSSClass="SubHead">
								<ASP:TABLECELL ColumnSpan="6">
									<ASP:LITERAL id="SubTitleLtrl" runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
							<ASP:TABLEROW>
								<ASP:TABLECELL  ColumnSpan="5" >
								<TABLE Align="center" class="SubTable">
									<tr>
										<td Style="WIDTH:150px" class="MainTD"> Kf &nbsp;
										 		<INPUT type="button" onclick="fnOpenCrPopUp()" class='RsnPUP' style="HEIGHT:20px" />
										 </td>
										<td class="MainTD">
											<asp:Label id="KfLable" runat="server" CssClass="MainTD" ></asp:Label>
										</td>
								 </tr>
									<TR>
										<TD colspan="2" class="HideRow">
										 	<asp:RequiredFieldValidator id="ReqFieldValidator1" runat="server" ControlToValidate="KfId" Height="0" Width="0">&nbsp;</asp:RequiredFieldValidator>
											<asp:TextBox id="KfId" runat="server" Height="0" Width="0" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
										 	</TD>
									</TR>
								</TABLE>

							  	 <ASP:ImageButton id="GoBtn" Runat="server" ImageUrl= "../IMAGES/Go.gif"  CssClass="HideRow"></ASP:ImageButton>
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
            </center>
		</form>
	</body>
</html>
