<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="UserGrp.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Trn</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
    document.oncontextmenu=new Function("return false");
	
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
		
		function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}		
	
	
	function  ReqFeildValid(src,args)
	{
	    if(document.getElementById("ListSelection1_OptValues").value =="")
	    {
	        args.IsValid=false; 
            Page_IsValid=false;
	    }
	}
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"  runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DescTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
								<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="UgpTypTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:RadioButtonList runat = "server" ID="UgpTypRbl" onclick="fnClearUcode()" AutoPostBack="true" CssClass="RadioCls" RepeatDirection="Horizontal" >
									    <asp:ListItem Text ="General" Value ="0" Selected =True ></asp:ListItem>
									    <%--<asp:ListItem Text ="Sample Type" Value ="1"></asp:ListItem>--%>
									    <asp:ListItem Text ="Department" Value ="2"></asp:ListItem>
									</asp:RadioButtonList>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								    <INPUT type="button"  id="SptPopup" runat ="server"  onclick="fnOpenPopUp()"  class='HideRow' style="HEIGHT:20px" title ="Click Here" TabIndex=4>
									&nbsp;<asp:Label id="SptLbl" runat="server" CssClass="HideRow"></asp:Label>	
									<asp:TextBox id="SptTxt" runat="server" CssClass="HideRow" MaxLength="250" Width="100px" AccessKey="D"  ></asp:TextBox>
									<INPUT type="button"  id="DeptPopUp" runat ="server"  onclick="fnOpenDeptPopUp()"  class='HideRow' style="HEIGHT:20px" title ="Click Here" TabIndex=4>
									&nbsp;<asp:Label id="DeptNameLbl" runat="server" CssClass="HideRow"></asp:Label>	
									<asp:TextBox id="DeptAulIdTxt" runat="server" CssClass="HideRow" MaxLength="250" Width="100px" AccessKey="D"  ></asp:TextBox>
									
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>								
								<asp:TableCell CssClass="MainTD" Colspan=2>
									<uc2:ListSelection id=ListSelection1 runat="server"></uc2:ListSelection>
								</asp:TableCell>
							</asp:TableRow>
							
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls"  onkeypress="taLimit()" onkeyup="taCount()" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow >
					<asp:TableCell CssClass="MainFoot">
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
										onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>						
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		
	</body>
	<script language=javascript>
<!--
document.getElementById('DescTxt').focus()
//-->

	function fnOpenDeptPopUp(){
  	
	    var pageURL = "CreationPopUP.aspx"
	    SetPopDimensions();
		var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
		var WsWinObj = window.open(pageURL,'SpecCodes',features)
		if(WsWinObj.opener == null) WsWinObj.opener=self;
		WsWinObj.focus();
	}   
		   
		   
		function fnCrSetToCode(KdIdVal,KfLableVal,KfDesc){
		   	var objId        
			var obj   
             
		 	objId=  'DeptAulIdTxt' // Spt id
			obj=document.getElementById(objId)
			obj.value = KdIdVal
			//alert(obj.innerText)

            objId=  'CodeTxt' // Spt name
			obj=document.getElementById(objId)
			obj.value = KfLableVal	
			
			objId=  'DescTxt' // Spt name
			obj=document.getElementById(objId)
			obj.value = KfDesc	
			
		 
		  }
		
		function fnCrformSubmit()
		{
	        
	    }
	    function fnClearUcode()
		{
	      document.getElementById("CodeTxt").value="";
	    }
	    
	    
</script>
	</HTML>
