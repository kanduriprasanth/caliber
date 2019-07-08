<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SearchCtrl7" Src="SearchCtrl7.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ESignWebUC" Src="ESignWebUC.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="UserAccStatus.aspx.vb" Inherits="Admin.UserAccStatus" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title></title>
		<%--<LINK href="CUSTOM.css" type="text/css" rel="stylesheet">--%>
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<SCRIPT language="javascript" src="../JScript/Common2.js"></SCRIPT>
        <script language="javascript" src='../JScript/Common.js'></script>
		<script language="javascript">
<!--

//-->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="f1" name="f1"  method="post" runat="server">
			<TABLE class="MainTable" height="200" cellSpacing="0" cellPadding="0" width="720" align="center">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">User Account Status Setting / History</TD>
				</TR>
				<TR>
					<TD><asp:table id="Table1" runat="server" align="center" width="100%" cellPadding="0" cellSpacing="1"
							cssclass="SubTable">
							<asp:TableRow>
								<asp:TableCell CSSClass="MainTD" ColumnSpan="6">
									<uc1:SearchCtrl7 id="SearchCtrl1" runat="server"></uc1:SearchCtrl7>
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TABLEROW>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="MaxRecCntLtrl" Runat="server">0</ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="RecPerPageLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX ID="RecPerPageTxt" MaxLength="3" CssClass="TxtCls" Runat="server" AutoPostBack="False"
										Width="50px">20</ASP:TEXTBOX>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:LITERAL id="PgNoLtrl" Runat="server"></ASP:LITERAL>
								</ASP:TABLECELL>
								<ASP:TABLECELL CssClass="MainTD">
									<ASP:TEXTBOX id="PgNoTxt" CssClass="TxtCls" Runat="server" AutoPostBack="False" Width="50px"
										MaxLength="5">1</ASP:TEXTBOX>
										&nbsp;<input type="button" id="Displaybtn" onClick="submit()" class='ButCls' onMouseOver="this.className='ButOCls'"
										onMouseOut="this.className='ButCls'" Value='Display'>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</asp:table></TD>
				</TR>
				<TR>
					<TD><asp:table id="Table2" runat="server" align="center" width="100%" cellPadding="0" cellSpacing="1"
							cssclass="SubTable">
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" HorizontalAlign="Left" ColumnSpan="3" Width="33%">
									<asp:LinkButton id="ActBtn"  Runat="server" Width="100%" Height="100%" Text="Active List"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" HorizontalAlign="Left" ColumnSpan="4" Width="33%">
									<asp:LinkButton id="InActbtn" Runat="server" Width="100%" Height="100%" Text="Inactive List"></asp:LinkButton>
								</asp:TableCell>
							</asp:TableRow>
						</asp:table></TD>
				</TR>
				<TR id="ActiveListtr" runat="server">
					<TD>
						<TABLE class="SubTable" id="ActiveList" cellSpacing="0" cellPadding="0" width="100%" align="center">
							<TR id="ActiveTr" CssClass="MainTD">
								<TD class="SubHead" colSpan="6">Active Users</TD>
							</TR>
							<TR>
								<TD><asp:datagrid id="DataGrid1" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="0"
										CellSpacing="1" CellPadding="0" CssClass="SubTable">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35"
												HeaderStyle-Height="20">
												<ItemTemplate>
													<asp:Label id="Label3" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User Name">
												<ItemTemplate>
													<ASP:HYPERLINK id="Hyperlink2" Runat=server NavigateUrl='<%# "UserParticularsRD.aspx?LoginID=" &amp; DataBinder.Eval(Container, "DataItem.LoginID")%>' text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'>
													</ASP:HYPERLINK>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User ID" ItemStyle-Width="100">
												<ItemTemplate>
													<asp:Label id="Label5" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.LoginName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Category">
												<ItemTemplate>
													<asp:Label id="Label13" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.CategoryName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Role">
												<ItemTemplate>
													<asp:Label id="Label9" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RoleName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Last Password Change"
												ItemStyle-Width="135">
												<ItemTemplate>
													<asp:Label id="Label1" runat="server">
														<%# GetLastPSW(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status*" ItemStyle-Width="40"
												ItemStyle-HorizontalAlign="Center">
												<ItemTemplate>
													<asp:Label id="Label2" runat="server">
														<%# GetActiveStatus(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="History" ItemStyle-Width="50">
												<ItemTemplate>
													<asp:HyperLink id="Hyperlink1" Runat=server NavigateUrl='<%# "UserAccStatusHis.aspx?LoginID=" &amp; DataBinder.Eval(Container, "DataItem.LoginID") &amp; "&amp;UserName=" &amp; DataBinder.Eval(Container, "DataItem.UserName")%>' text='History'>
													</asp:HyperLink>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
				<TR>
								<TD class="MainTD"><SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> For changing 
										User Account Status, Select Status and Give Reason and click "OK" for Each 
										Change&nbsp;and finally click <u>submit</u></SPAN>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR id="inactivetr" runat="server">
					<TD><!--/*Deactivated Users Display*/-->
						<TABLE class="SubTable" id="InactiveList" cellSpacing="0" cellPadding="0" width="100%"
							align="center">
							<TR>
								<TD class="SubHead" colSpan="6">Deactivated Users</TD>
							</TR>
							<TR>
								<TD><asp:datagrid id="Datagrid2" runat="server" AutoGenerateColumns="False" Width="100%" BorderWidth="0"
										CellSpacing="1" CellPadding="0" CssClass="SubTable">
										<Columns>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="S. No." ItemStyle-Width="35"
												HeaderStyle-Height="20">
												<ItemTemplate>
													<asp:Label id="Label7" runat="server" Text='<%# DataBinder.Eval(Container, "DataSetIndex","{0}")+1 %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User Name">
												<ITEMTEMPLATE>
													<ASP:HYPERLINK id="Hyperlink3" Runat=server NavigateUrl='<%# "UserParticularsRD.aspx?LoginID=" &amp; DataBinder.Eval(Container, "DataItem.LoginID")%>' text='<%# DataBinder.Eval(Container, "DataItem.UserName") %>'>
													</ASP:HYPERLINK>
												</ITEMTEMPLATE>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="User ID" ItemStyle-Width="100">
												<ItemTemplate>
													<asp:Label id="Label10" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.LoginName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Category">
												<ItemTemplate>
													<asp:Label id="Label11" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.CategoryName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Role">
												<ItemTemplate>
													<asp:Label id="Label12" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.RoleName") %>'>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Last Password Change"
												ItemStyle-Width="135">
												<ItemTemplate>
													<asp:Label id="Label14" runat="server">
														<%# GetLastPSW(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="Status*" ItemStyle-Width="40"
												ItemStyle-HorizontalAlign="Center">
												<ItemTemplate>
													<asp:Label id="Label15" runat="server">
														<%# GetInActiveStatus(DataBinder.Eval(Container, "DataItem.LoginID"))%>
													</asp:Label>
												</ItemTemplate>
											</asp:TemplateColumn>
											<asp:TemplateColumn HeaderStyle-CssClass="HeadTD" ItemStyle-CssClass="MainTD" HeaderText="History" ItemStyle-Width="50">
												<ItemTemplate>
													<asp:HyperLink id=Hl1 Runat=server NavigateUrl='<%# "UserAccStatusHis.aspx?LoginID=" &amp; DataBinder.Eval(Container, "DataItem.LoginID") &amp; "&amp;UserName=" &amp; DataBinder.Eval(Container, "DataItem.UserName")%>' text='History'>
													</asp:HyperLink>
												</ItemTemplate>
											</asp:TemplateColumn>
										</Columns>
									</asp:datagrid></TD>
							</TR>
						</TABLE>
						<BR>
						<TABLE class="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center">
							<TR>
								<TD class="MainTD"><SPAN><FONT color="red" size="2"><B>*</FONT>Note:</B> For changing 
										User Account Status, Select Status and Give Reason and click "OK" 
										for Each Change&nbsp;and finally click <u>submit</u></SPAN>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><asp:button id="btnSubmit" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							runat="server" CssClass="ButCls" Text="Submit"></asp:button><input class="ButCls" onmouseover="this.className='ButOCls'" style="DISPLAY: none" onmouseout="this.className='ButCls'"
							type="reset" value="Reset"/>

					</TD>
				</TR>
				<asp:TableRow cssclass="HideRow">
					<asp:TableCell Runat="server" ID="CVD">
					<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</TABLE>
			  <uc1:esignwebuc id="ESignWebUC1" runat="server"></uc1:esignwebuc></form>
			  
		<SCRIPT language="javascript">
		
		if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}
		function fnStatusChange(Status,LoginID,Count,Pos)
		{	
				var LoginUserId= '<%=LoginUserId%>'
				//ACTIVE USER LIST
				if(Status==1)
				{
				    
				    if (LoginUserId==LoginID)
				    {
				       alert("Self de-activation is not allowed");
				       
				       var AUSR  = document.all("AUSR")
				       if(AUSR.length)
				       {
				            AUSR(Pos).checked=false;
				       }
				       else
				       {
				            AUSR.checked=false;
				       }
				       
				       //document.all("AUSR")(Pos).checked=false;
				       return(false);
				       
				    }   
//					var Flag=false
//					if(Pos>0)
//					Flag=document.all("AUSR")(Pos).checked
//					else
//					Flag=document.all("AUSR").checked					
						 if (window.event) {
                        var Flag = window.event.srcElement.checked;
                        }
                        else {
                            var Flag = evt.target.checked
                        }

					
					if(Flag){
						var rnd = Math.round(Math.random()*1000000)
						var cReturnValue = window.showModalDialog('UserAccAthenticSample.aspx?r='+ rnd,'thisTitle','dialogheight=12;dialogwidth=23;help=0;status=0;scroll=0;edge=raised;')
						if((cReturnValue).length>0){
						document.all("RSN"+ LoginID).value=cReturnValue
						return(false);
						}
					}
					
					if(Count>1)
					document.all("AUSR")(Pos).checked=false;
					else
					document.all("AUSR").checked=false;
					return(false);
				}
				
				//IACTIVE USER LIST
				if(Status==2)
				{
				    var Flag=false
//					if(Pos>0)
//					Flag=document.all("IAUSR")(Pos).checked
//					else
//					Flag=document.all("IAUSR").checked
					 if (window.event) {
                        var Flag = window.event.srcElement.checked;
                        }
                        else {
                            var Flag = evt.target.checked
                        }

					if(Flag){
						var rnd = Math.round(Math.random()*1000000)
						var cReturnValue = window.showModalDialog('UserAccAthenticSample.aspx?r='+ rnd ,'thisTitle','dialogheight=12;dialogwidth=23;help=0;status=0;scroll=0;edge=raised;')
						if((cReturnValue).length>0){
						document.all("RSN"+ LoginID).value=cReturnValue
						return(false);
						}
					}
					
					if(Count>1)
					document.all("IAUSR")(Pos).checked=false;
					else
					document.all("IAUSR").checked=false;
					return(false);
				}
		}
		
		
		
			function fnSetToReasons(argValue){
					document.getElementById('Reasons').value = argValue
					}
					
	
					
function VbTestchkValid()
{
	
	var IsAUSRChecked = false;
    var IsIAUSRChecked = false;
	if(document.all.item("AUSR",0)!=null)
	{
		if(document.all("AUSR").length==undefined)
		{
			if(document.all("AUSR").checked)
			{
				
				IsAUSRChecked=true;
				
			}
		}
		var intLen = document.all("AUSR").length
		if(intLen>0)
		{
			for(i=0;i<intLen;i++)
			{
				
				if(document.all("AUSR")(i).checked)
				{
					
					IsAUSRChecked = true;
					break;
				}
			}
		}
	}
	if(document.all.item("IAUSR",0)!=null)
	{
	
		if(document.all("IAUSR").length==undefined)
		{
			if(document.all("IAUSR").checked)
			{
				
				IsIAUSRChecked=true;
				
			}
		}
		var intLen1 = document.all("IAUSR").length
		if(intLen1>0)
		{
			for(i=0;i<intLen1;i++)
			{
				if(document.all("IAUSR")(i).checked)
				{
					
					IsIAUSRChecked = true;
					break;
				}
			}
		}
	}
    
	if(!IsAUSRChecked && !IsIAUSRChecked) //Or if(IsAUSRChecked==false && IsIAUSRChecked==false)
		{
			return false;
		}
 }
	
	/* Esing Activity and button name setting */

var formName = document.forms(0).name
document.body.attachEvent('onblur',fnRestoreESign)
document.body.attachEvent('onfocus',fnRestoreESign)
document.body.attachEvent('onbeforeunload',fnKillESign)
document.all(formName).attachEvent('onsubmit',fnCallESign)

	window.onload = new Function("fnSetEsingActivity('Change User Account Status','btnSubmit')")

function Test(src,args){
   var Flag= VbTestchkValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
  	   
 }
		</SCRIPT>
	</body>
</HTML>
