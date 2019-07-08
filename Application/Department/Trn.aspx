<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="Department.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
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

function fnSetToReasons(argValue){
  document.getElementById("RemarksTxt").value = argValue
   
		//document.getElementById('RemarksTxt').value = argValue
	}
	//-->
	
	
	
	
	function CheckDescVal(id,cap) 
   {
           var expmsg = ""
           var Flag=0
     if(document.getElementById(id).value !='' )
     {
     document.getElementById(id).value= myTrim(document.getElementById(id).value)
     var  itemName =document.getElementById(id).value
       
//       if (itemName.indexOf("\'") >-1 || itemName.indexOf("\"") >-1 )
//       {
//          expmsg= "\n - Single Coute(\') or Double Coute(\") Symbols Are Not Allowed In "+cap
//       }     
       if (itemName.indexOf("  ") >-1)
       {
          expmsg= "\n - Double Space Is Not Allowed In "+cap
       }
       if (id == "CodeTxt")
       {
       if (itemName.indexOf("%") >-1 || itemName.indexOf("?") >-1 || itemName.indexOf("@") >-1 || itemName.indexOf("#") >-1 || itemName.indexOf("$") >-1) //%, ?, @, #, $ 
       {
          expmsg= "\n - Special Symbols Like  %, ?, @, #, $  Are Not Allowed In "+cap
       }
       }
       
       if(expmsg != "")
       {
       alert(expmsg)
       document.getElementById(id).value=""
       }      
     
   }
 }

   
   
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
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
								<asp:TableCell CssClass="MainTD" ID="DescTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" onfocusout='CheckDescVal("DescTxt","Department Name")' MaxLength="60" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="10" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DepDescTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DepDescTxt" runat="server" CssClass="TxtCls" MaxLength="250" onkeypress="taLimit()" onkeyup="taCount()" Width="200px" AccessKey="D"  TabIndex=3 TextMode="MultiLine"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
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
				<asp:TableRow CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButselCls" Height="20px" onMouseOver="this.className='ButselOCls'"
										onMouseOut="this.className='ButselCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
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
//-----------multiline TextBox Validation--------------------
var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		    }

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		

document.getElementById('DescTxt').focus()
//-->
</script>
	</HTML>
