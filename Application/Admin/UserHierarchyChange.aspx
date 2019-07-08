<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserHierarchyChange.aspx.vb" Inherits="Admin.UserHierarchyChange" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>UserReg</title>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<SCRIPT language="javascript" src='../JScript/Common.js'></SCRIPT>
		<style>
		.TableStyle { BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove }
		</style>
		<script type="text/javascript" language="javascript">
		document.oncontextmenu=new Function("return false")
		</script>
	</HEAD>
	<BODY MS_POSITIONING="GridLayout">
		<FORM id="f1" name="f1" method="post" runat="server" >
			<TABLE class="MainTable" cellSpacing="0" cellPadding="0" width="675" align="center" border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead"><asp:Literal ID="MainHeadLtrl" Runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<TABLE class="SubTable" cellSpacing="0" cellPadding="0" width="100%" align="center" style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove">
							<TR>
								<TD class="SubHead"><asp:Literal ID="SubHeadLtrl" Runat="server"></asp:Literal></TD>
							</TR>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:3px;PADDING-LEFT:10px;PADDING-BOTTOM:3px;PADDING-TOP:3px">
									<asp:Label Runat="server" id="ChReqInLbl" Width="130">  </asp:Label>
									<asp:DropDownList Runat="server" id="ChangeRequired" AutoPostBack="True">
										<asp:ListItem Value="0">[Select Change Required]</asp:ListItem>
										<asp:ListItem Value="1">Role</asp:ListItem>
										<asp:ListItem Value="2">Reporting To</asp:ListItem>
										<asp:ListItem Value="3">In-charge</asp:ListItem>
										<asp:ListItem Value="4">Category</asp:ListItem>
									</asp:DropDownList>
									<asp:RequiredFieldValidator ID="ChReqInErrMsg" Runat="server" ControlToValidate="ChangeRequired" 
										InitialValue="0">*</asp:RequiredFieldValidator>
								</TD>
							</TR>
							<%if ChangeRequired.SelectedValue="1" then%>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-BOTTOM:10px;PADDING-TOP:10px">
									<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" border="0" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove">
										<TR>
											<TD width="55%" class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeFromLtrl" Runat="server"></asp:Literal> 
												</TD>
											<TD width="45%" class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeToLtrl" Runat="server"></asp:Literal> 
												</TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="2">
												<asp:Label Runat="server" id="UsrCatLbl" Width="120"> </asp:Label>
												<asp:DropDownList Runat="server" id="CadCategory" AutoPostBack="True" Width="175"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="UsrCatErrMsg" Runat="server" ControlToValidate="CadCategory" >*</asp:RequiredFieldValidator>
											</TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="2">
												<asp:Label Runat="server" id="UserLbl" Width="120"></asp:Label>
												<asp:DropDownList Runat="server" id="CadUserName" AutoPostBack="True" Width="175"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="UserErrMsg" Runat="server" ControlToValidate="CadUserName" ErrorMessage="Select User Name">*</asp:RequiredFieldValidator>
											</TD>
										</TR>
										<TR>
											<TD class="MainTD">
												<asp:Label Runat="server" id="PresentRoleLbl" Width="120"></asp:Label>
												<asp:textbox Runat="server" id="CadCadreName" CssClass="TxtCls" Width="175" ReadOnly="True"></asp:textbox>
											</TD>
											<TD class="MainTD">
												<ASP:LABEL Runat="server" id="NewRoleLbl" Width="75"></ASP:LABEL>
												<ASP:DROPDOWNLIST Runat="server" id="CadNewCadre" Width="175"></ASP:DROPDOWNLIST>
												<ASP:REQUIREDFIELDVALIDATOR ID="NewRoleErrMsg" Runat="server" ControlToValidate="CadNewCadre" ErrorMessage="Select New Role">*</ASP:REQUIREDFIELDVALIDATOR>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<%elseif ChangeRequired.SelectedValue="2" or ChangeRequired.SelectedValue="3" then%>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-BOTTOM:10px;PADDING-TOP:10px">
									<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center">
										<TR>
											<TD class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeFromLtrl1" Runat="server"></asp:Literal> 
												</TD>
											<TD class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeToLtrl1" Runat="server"></asp:Literal> 
												</TD>
										</TR>
										<TR>
											<TD style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
												valign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center">
													<TR>
														<TD class="MainTD">
															<asp:Label Runat="server" id="LabelRole" Width="120"> </asp:Label>
															<asp:DropDownList Runat="server" id="RepCaderFrom" AutoPostBack="True" Width="175"></asp:DropDownList>
															<asp:RequiredFieldValidator ID="RoleErrMsg" Runat="server" ControlToValidate="RepCaderFrom" Display="None" >*</asp:RequiredFieldValidator>
														</TD>
													</TR>
													<TR>
														<TD class="MainTD">
															<asp:Label Runat="server" id="LabelUser" Width="120"></asp:Label>
															<asp:DropDownList Runat="server" id="RepUserFrom" AutoPostBack="True" Width="175" ></asp:DropDownList>
															<asp:RequiredFieldValidator ID="UserErrMsg1" Runat="server" ControlToValidate="RepUserFrom" Display="None" >*</asp:RequiredFieldValidator>
														</TD>
													</TR>
													<%if ChangeRequired.SelectedValue="2" then%>
													<TR>
														<TD class="MainTD">
															<asp:Label Runat="server" id="NowRprtToLbl" Width="120">  </asp:Label>
															<asp:textbox Runat="server" id="CurrentRepTO" CssClass="TxtCls" ReadOnly="True" Width="175"></asp:textbox>
														</TD>
													</TR>
													<%end if%>
													<%if ChangeRequired.SelectedValue="3" then%>
													<TR>
														<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:5px;PADDING-TOP:5px">
															<asp:Panel ID="Panel1" Runat="server" EnableViewState=True></asp:Panel>
														</TD>
													</TR>
													<%end if%>
												</TABLE>
											</TD>
											<TD style="BORDER-RIGHT:2px groove; BORDER-TOP:2px groove; BORDER-LEFT:2px groove; BORDER-BOTTOM:2px groove"
												valign="top">
												<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center">
													<TR>
														<TD class="MainTD" style="HEIGHT: 18px">
															<asp:Label Runat="server" id="NewInChrgRoleLbl" Width="130"></asp:Label>
															<asp:DropDownList Runat="server" id="RepCaderTo" AutoPostBack="True" Width="165"></asp:DropDownList>
															<asp:RequiredFieldValidator ID="NewInChrgRoleErrMsg" Runat="server" ControlToValidate="RepCaderTo" Display="None" >*</asp:RequiredFieldValidator>
														</TD>
													</TR>
													<%if ChangeRequired.SelectedValue="2" then%>
													<TR>
														<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:5px;PADDING-TOP:5px">&nbsp;</TD>
													</TR>
													<%end if%>
													<TR>
														<TD class="MainTD">
															<asp:Label Runat="server" id="NewInChrgNameLbl" Width="130"></asp:Label>
															<asp:DropDownList Runat="server" id="RepUserTo" AutoPostBack="True" Width="165"></asp:DropDownList>															
															<asp:RequiredFieldValidator ID="NewInChrgNameErrMsg" Display="None" Runat="server" ControlToValidate="RepUserTo" >*</asp:RequiredFieldValidator>
														</TD>
													</TR>
													<%if ChangeRequired.SelectedValue="3" then%>
													<TR>
														<TD class="MainTD" style="PADDING-RIGHT:5px;PADDING-LEFT:5px;PADDING-BOTTOM:5px;PADDING-TOP:5px">
															<asp:Panel ID="Panel2" Runat="server"></asp:Panel>
														</TD>
													</TR>
													<%end if%>
													
													 
												</TABLE>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							
							<!--Added For Category-->
							<%ElseIf ChangeRequired.SelectedValue = "4" Then%>
							<TR>
								<TD class="MainTD" style="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-BOTTOM:10px;PADDING-TOP:10px">
									<TABLE cellSpacing="0" cellPadding="0" width="100%" align="center" border="0" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove">
										<TR>
											<TD width="55%" class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeFromLtrl2" Runat="server"></asp:Literal> 
												</TD>
											<TD width="45%" class="SubHeadTD" style="BORDER-RIGHT:2px groove; PADDING-RIGHT:3px; BORDER-TOP:2px groove; PADDING-LEFT:3px; PADDING-BOTTOM:3px; BORDER-LEFT:2px groove; PADDING-TOP:3px; BORDER-BOTTOM:2px groove"><asp:Literal ID="ChangeToLtrl2" Runat="server"></asp:Literal> 
												</TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="2">
												<asp:Label Runat="server" id="UsrCatLbl1" Width="120"> </asp:Label>
												<asp:DropDownList Runat="server" id="CadCategory1" AutoPostBack="True" Width="175"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="UsrCatErrMsg1" Runat="server" ControlToValidate="CadCategory1" >*</asp:RequiredFieldValidator>
											</TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="1">
												<asp:Label Runat="server" id="UserLbl1" Width="120"></asp:Label>
												<asp:DropDownList Runat="server" id="CadUserName1" AutoPostBack="True" Width="175"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="UserNmeErrMsg" Runat="server" ControlToValidate="CadUserName1" ErrorMessage="Select User Name">*</asp:RequiredFieldValidator>
											</TD>
											
											<TD class="MainTD" colspan="1">
												<asp:Label Runat="server" id="NewCatLbl" Width="75"></asp:Label>
												<asp:DropDownList Runat="server" id="NewCatDdl" AutoPostBack="True" Width="175"></asp:DropDownList>
												<asp:RequiredFieldValidator ID="NewCatErrMsg" Runat="server" ControlToValidate="NewCatDdl" ErrorMessage="Select New Category">*</asp:RequiredFieldValidator>
											</TD>
										</TR>
										<TR>
											<TD class="MainTD" colspan="1">
												<asp:Label Runat="server" id="PresentRoleLbl1" Width="120"></asp:Label>
												<asp:textbox Runat="server" id="CadCadreName1" CssClass="TxtCls" Width="175" ReadOnly="True"></asp:textbox>
											</TD>
											
											
											<TD class="MainTD" colspan="1">
												<ASP:LABEL Runat="server" id="NewRoleLbl1" Width="75"></ASP:LABEL>
												<ASP:DROPDOWNLIST Runat="server" id="CadNewCadre1" Width="175"></ASP:DROPDOWNLIST>
												<ASP:REQUIREDFIELDVALIDATOR ID="NewRoleErrMsg1" Runat="server" ControlToValidate="CadNewCadre1" ErrorMessage="Select New Role">*</ASP:REQUIREDFIELDVALIDATOR>
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<!-- End Of Category -->
							<%end if%>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD style="PADDING-TOP:0px">
						<TABLE style="BORDER-RIGHT: 2px groove; BORDER-TOP: 2px groove; BORDER-LEFT: 2px groove; BORDER-BOTTOM: 2px groove"
							cellSpacing="0" cellPadding="0" width="100%" align="center" border="0">
							<TR>
								<TD class="MainTD" width="140px">
									<ASP:LABEL Runat="server" id="ReasonLbl" style="PADDING-LEFT:10px" Width="150">
							
							</ASP:LABEL>
								</TD>
								<TD class="MainTD" >
									<ASP:TEXTBOX ID="Reasons" CssClass="TxtCls" TextMode="MultiLine" Runat="server" onkeypress="taLimit()" onkeyup="taCount()" Width="280"></ASP:TEXTBOX>
									<ASP:REQUIREDFIELDVALIDATOR id="ReasonErrMsg" runat="server" Display="None" 
											ControlToValidate="Reasons">*</ASP:REQUIREDFIELDVALIDATOR>
									<INPUT type="button" onclick="fnOpenReasons(1)" class='RsnPUP' title='Click for Standard Reason'>
								</TD>
							</TR>
						</TABLE>
						
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD"><SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> If the role of a user is changed, the profile enabled for the proposed role is applicable for the user</SPAN>
								</TD>
							</TR>
						</TABLE>
						
						
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot">
						<asp:Button ID="Submit" text="Submit" Runat="server" cssclass="ButCls" onmouseover="this.className='ButOCls'"
							onmouseout="this.className='ButCls'" Width="60"></asp:Button>
						<input class="ButCls" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							type="reset" value="Reset" style="DISPLAY:none">
					</TD>
				</TR>
				<TR Class="HideRow">
                    <TD runat="server" id="ValidatorsTd1">
					<asp:label ID="labelChkbox" Runat="server"></asp:label>                 
			<asp:ValidationSummary id="ValidationSummary2" runat="server" ShowMessageBox="True" ShowSummary="False"></asp:ValidationSummary>
                   
                 </TD>
                </TR>
			</TABLE>
			 <UC1:ESIGNWEBUC id="ESignWebUC1" runat="server"></UC1:ESIGNWEBUC> 
		</FORM>
		<SCRIPT language="javascript">
<!--
	function fnSetToReasons(argValue){
		document.getElementById('Reasons').value = argValue
	}
//-->
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
		
		
		
		function CheckVal(src,arg){
			 
   					 var Count=<%=Cnt%>
   					 var flag=0
   					 var ChkBoxId   					    				 
            if(document.getElementById('ChangeRequired').value==3)
            {
   					if (Count!=0){
   					    for(i=0;i<Count;i++){					
  						    if(document.all("CHK"+i).checked){
						    flag=1		
						    }
					       } 
					       if(flag==1){	 
						      //return(true)
							    Page_IsValid=true;
							    arg.IsValid=true;				
						    }
						    else{	
							    Page_IsValid=false;
							    arg.IsValid=false;							
							    //return(false)				
						    }		
						}
					else{					
					return(true)
					}
				}
						
	        else{
    		
	        return(true)
	        }
                 }	
		</SCRIPT>
	</BODY>
</HTML>
