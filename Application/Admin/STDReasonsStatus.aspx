<%@ Page Language="vb" AutoEventWireup="false" Codebehind="STDReasonsStatus.aspx.vb" Inherits="Admin.STDReasonsStatus" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>STDReasonsStatus</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		
		<LINK href="../GlobalCls/calendar.css" type="text/css" rel="stylesheet">
		<LINK href="../TRIMS.css" rel="stylesheet">
        <script language="javascript" src='../JScript/Common.js'></script>
		<SCRIPT language="JavaScript" src="../GlobalCls/calendar.js" type="text/javascript"></SCRIPT>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:Table CssClass="MainTable" height="10" CELLPADDING="0" cellspacing="0"  HorizontalAlign="center"
				BorderWidth="0" runat="server" id="Table1">
				<asp:TableRow>
					<asp:TableCell CssClass="MainHead">Standard Reasons</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CssClass="SubHead"> Status Change</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table cssclass="SubTable" cellSpacing="1" cellPadding="0" width="100%" align="center"
							runat="server">
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" HorizontalAlign="Left" ColumnSpan="3" Width="33%">
									<asp:LinkButton id="ActBtn" Runat="server" Width="100%" Height="100%" Text="Active List"></asp:LinkButton>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD" HorizontalAlign="Left" ColumnSpan="4" Width="33%">
									<asp:LinkButton id="InActbtn" Runat="server" Width="100%" Height="100%" Text="Inactive List"></asp:LinkButton>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell>
									<asp:TextBox id="RecordsCnt" runat="server" CssClass="hiderow" MaxLength="250" Width="200px"
										AccessKey="D"></asp:TextBox>
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
										MaxLength="5">1</ASP:TEXTBOX>&nbsp;
											<asp:Button id="DisplayBtn" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="Display"
										Width="70"></asp:Button>							
									</ASP:TABLECELL>
							</ASP:TABLEROW>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table id="DisTable" cssclass="SubTable" runat="server" cellSpacing="1" cellPadding="0"
							width="100%" HorizontalAlign="center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<asp:Table id="Table2" cssclass="SubTable" runat="server" cellSpacing="1" cellPadding="0" width="100%"
							HorizontalAlign="center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell CssClass="MainFoot" ColumnSpan="2">
						<asp:Button id="btnSubmit" onmouseover="this.className='ButOCls'" onmouseout="this.className='ButCls'"
							runat="server" Width="60" CssClass="ButCls" Text="Submit"></asp:Button>
					</asp:TableCell>
				</asp:TableRow>
			</asp:Table>
			
		 
		</form>
		
		
		<script language=javascript>

 

        if(window.history.forward(1) != null)

             window.history.forward(1);

 

  
<!--
function CheckVal(src,arg){
				

   					 var Count=document.getElementById('RecordsCnt').value
   					 var flag=0
   					 var ChkBoxId
   					 
   					 for(i=0;i<Count;i++){					
  						if(document.all("Chk"+[i+1]).checked){
						flag=1		
						}
					   } 
					    if(flag==1){	 
						  return(true)
							Page_IsValid=true;
							arg.IsValid=true;				
						}else{	
											
							alert("Select Atleast One Reason")
							return(false)
							Page_IsValid=false;
							arg.IsValid=false;
						}		
                  }	
				  

function fnCheckAll(){
				

   					 var Count=document.getElementById('RecordsCnt').value
   					    						
					  if(document.all("TestChkAll").checked){
					  
							for(i=1; i<=Count; i++){
							document.all("Chk"+i).checked=true
							 }
						}else{
						for(i=1; i<=Count; i++){
						document.all("Chk"+i).checked=false
						}
						}
										
				  }


		
		function CheckAll(){
	
			var Count=document.getElementById('RecordsCnt').value			
			var IsAllChk=true
			var ChkBoxId
       
  					for(i=1;i<=Count;i++){
  					ChkBoxId="Chk"+i
					if(!document.all(ChkBoxId).disabled){
							IsAllChk=document.all(ChkBoxId).checked
							if(IsAllChk==false)
							{break;}
						}
					}
	
			document.all("TestChkAll").checked=IsAllChk
		
		
		}	

//context menu		

 

if (document.layers){

document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS;

}else{

document.onmouseup=clickNS;document.oncontextmenu=clickIE;

document.oncontextmenu=new Function("return false")

document.body.oncontextmenu= contextMenu

document.body.onselectstart=DisableCopy

}

 



//for disabling autocomplete


//-->
</script>

		
		
	</body>
</HTML>
