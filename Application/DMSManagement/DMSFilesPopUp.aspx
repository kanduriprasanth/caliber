<%@ Page Language="C#" AutoEventWireup="true" Codebehind="DMSFilesPopUp.aspx.cs"
	Inherits="DMSManagement.DMSFilesPopUp" %>

<%@ Register TagPrefix="uc1" TagName="DMSSearchControl" Src="DMSSearchControl.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>Document List</title>
	<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
	<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
	<meta name="vs_defaultClientScript" content="JavaScript" />
	
	<link href="../TRIMS.css" type="text/css" rel="stylesheet" />

	<script type='text/javascript' src="../JScript/jquery.min.js"></script>

	<script type='text/javascript' src="../JScript/jquery.simplemodal.js"></script>

	<link type='text/css' href='../Styles/basic.css' rel='stylesheet' media='screen' />

	<script type='text/javascript' src="../JScript/basic.js"></script>

<script type='text/javascript'>

$(document).ready(function() {
	$('#DMSAttributeBtn').click(function() {
		if (Page_ClientValidate()){ 
			if($("body").data("DataLoaded") === undefined)
			{
				$.ajax({
					url: 'AttStructureForm_Ajax.aspx',
					cache: false,
					//dataType: "xml",
					data: "RType=1&SType=1",
					success: function(data) 
					{
						//Set the attribute table to the div control
						$("#DMSAttributeData").html(data);

						//Add delegate for controls loaded through ajax.
						$("body").delegate(('input[id^="DMSAttValue_"]'), "change", function(){

							var CId= this.id.replace( "DMSAttValue_" , "" );
							var xml = $("#DMSAttXMLData").text().replace( "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" , "" );
							var xmlDoc = $.parseXML( "<?xml version=\"1.0\" encoding=\"UTF-8\"?>" + xml );
							var $xml = $( xmlDoc );

							$xml.find("DMSAttribute[Code='"+CId+"'] Value").html( this.value );
							xml = $xml.context.xml.replace( "\r\n" , "" ).replace( "<?xml version=\"1.0\"?>" ,"" );
							$("#DMSAttXMLData").text( xml );

						});

						$("body").delegate(('input[id="DMSAttConfirmBtn"]'), "click", function(){

						//Attribute Submit logic

							$('input[id^="DMSAttValue_"]').each(function(){
								$("body").data(this.id,this.value);
							});
							$.modal.close(); // $(".simplemodal-close").click();

							$("#UploadBtn").click();

						//---------------------//

						});
						$("body").data("DataLoaded","1");
						//Display the model content control.
						$('#basic-modal-content').modal();
					}
				});
			}
			else
			{

				$('input[id^="DMSAttValue_"]').each(function(){
					this.value = $("body").data(this.id);
				});

				$('#basic-modal-content').modal();
			}
		}
	});

});

function SubmitAttributeData()
{
	var XMLData  = $("#DMSAttXMLData").val();
}

	</script>
	
	<script type='text/javascript'>
	
		function ViewDocument(RecId)
		{
			var DocId = document.getElementById("DocId"+RecId).innerText;
			var DocRepId = document.getElementById("ENBIDTxt").value; 
			var SecId = document.getElementById("SectionIdTxt").value;
			
			OpenDocument(DocId,DocRepId,SecId)
		}
		
		function OpenDocument(DocId,DocRepId,SecId)
		{
			var yval = parseInt(screen.availHeight)-20
			var xval = screen.availWidth

			var pageURL = "ViewDocument.aspx?DocId=" + DocId;
			SpWinObj = window.open(pageURL,'RepPopUp',"height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			if(SpWinObj.opener == null) SpWinObj.opener=self;
			SpWinObj.focus();
		}
		
		function ToggleDisplay(ControlId)
		{
			var Obj1 = document.getElementById ("UploadTr")
			var Obj2 = document.getElementById ("SearchCondTr")
			Obj1.className = Obj1.id == ControlId ? 'show' : 'hide';  //  Obj1.className == 'show' ? 'hide' : 'show';
			Obj2.className = Obj2.id == ControlId ? 'show' : 'hide';  //  Obj2.className == 'show' ? 'hide' : 'show';
			document.getElementById("OkBtn").className = Obj2.className == 'show' ? 'ButCls' : 'HideRow';
			document.getElementById("CancelBtn").className = Obj2.className == 'show' ? 'ButCls' : 'HideRow';
			document.getElementById("ListLbl").className = Obj1.id == ControlId ? 'ActAppTD' : 'InActAppTD';
			document.getElementById("UploadLbl").className = Obj2.id == ControlId ? 'ActAppTD' : 'InActAppTD';
		}
		
		function ValidateUploadFile(src,args)
		{
			Page_IsValid=true;
			args.IsValid=true;
			
			var FileName = document.getElementById("FileUpload1").value;
			if(FileName != "")
			{
				var FileAry =new Array();
				FileAry=FileName.split(".");
				var Exten = FileAry[FileAry.length-1].toLowerCase()
				//var SupportedFilesLst = ",pdf,htm,html,doc,docx,xls,xlsx,pps,ppsx,ppt,pptx,vsd,xps,rpt,txt,gif,png,jpeg,jpg,"
				var SupportedFilesLst = ",pdf,doc,docx,xls,xlsx,pps,ppsx,"
				
				if(SupportedFilesLst.indexOf(","+Exten+",") == -1)
				{
					Page_IsValid=false;
					args.IsValid=false;
				}
			}
		}
	</script>

</head>
<body ms_positioning="GridLayout">
	<form id="Form1" method="post" runat="server">
		<asp:Table ID="table1" runat="server" CssClass="MainTable" Height="100%" CellSpacing="0"
			CellPadding="0" HorizontalAlign="center">
			<asp:TableRow CssClass="MainHead">
				<asp:TableCell>
					DMS Document Uploader
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow>
				<asp:TableCell>
					<asp:Table ID="table2" runat="server" Width="100%" CellSpacing="0" CellPadding="0"
						HorizontalAlign="center" CssClass="SubTable">
						<asp:TableRow CssClass="HideRow">
							<asp:TableCell Width="40%">
							<div id="basic-modal-content">
							<div id="DMSAttributeData">
							</div>
							</div>
							</asp:TableCell>
							<asp:TableCell Width="60%">
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow CssClass="SubHead" ID="UploadTitleTr">
							<asp:TableCell>
								<asp:Label ID="ListLbl" runat="server" CssClass="InActAppTD" Style="cursor: hand"
									onclick="ToggleDisplay('SearchCondTr')" title="Click to Show">
									Search File(s) In DMS</asp:Label>
							</asp:TableCell>
							<asp:TableCell>
								<asp:Label ID="UploadLbl" runat="server" CssClass="ActAppTD" Style="cursor: hand"
									onclick="ToggleDisplay('UploadTr')" title="Click to Show">
									Upload File(s) to DMS</asp:Label>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow ID="UploadTr" CssClass="hide" runat="server">
							<asp:TableCell ColumnSpan="2" CssClass="MainTD">
								<asp:Table runat="server" ID="table3" Width="100%" CellPadding="0" CellSpacing="1"
									CssClass="SubTable">
									<asp:TableRow CssClass="HideRow" Width="40%">
										<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="ENoteBookTd" Width="220px">
											Stores Under Document Repository / Section.</asp:TableCell>
										<asp:TableCell CssClass="MainTD" Width="60%">
											<input type="button" onclick="FnENBSelLstPopUp()" class='RsnPUP' tabindex="5" />
											<asp:Label ID="ENBUCodeLab" runat="server" Text=""></asp:Label>
											<asp:TextBox ID="ENBUCodeTxt" runat="server" CssClass="HideRow">
											</asp:TextBox>
											<asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow">
											</asp:TextBox>
											<asp:TextBox ID="ENBCodeTxt" runat="server" CssClass="HideRow">
											</asp:TextBox>
											<asp:TextBox ID="SectionIdTxt" runat="server" CssClass="HideRow">
											</asp:TextBox>
											<asp:TextBox ID="SectionDescTxt" runat="server" CssClass="HideRow">
											</asp:TextBox>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="Td3" Width="40%">
											Document Code</asp:TableCell>
										<asp:TableCell CssClass="MainTD" Width="60%">
											<asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px">
											</asp:TextBox>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="Td2" Width="40%">
											Document Description</asp:TableCell>
										<asp:TableCell CssClass="MainTD" Width="60%">
											<asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="200" Width="200px">
											</asp:TextBox>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="Td1" Width="40%">
											Key Words</asp:TableCell>
										<asp:TableCell CssClass="MainTD" Width="60%">
											<asp:TextBox ID="KeyWordsTxt" runat="server" CssClass="TxtCls" MaxLength="200" Width="200px">
											</asp:TextBox>
										</asp:TableCell>
									</asp:TableRow>
									<asp:TableRow>
										<asp:TableCell CssClass="MainTD" Style="font-weight: bold" Width="40%">
											File To Upload
										</asp:TableCell>
										<asp:TableCell CssClass="MainTD" Width="60%">
											<asp:FileUpload ID="FileUpload1" EnableViewState="true" autopostback="false" runat="server"
												CssClass="txtcls" size="36" onkeypress="return fnFileChk()" contenteditable="false"
												Width="280px"/>
											<asp:Button ID="UploadBtn" runat="server" CssClass="HideRow" onmouseover="this.className='ButOCls'"
												onmouseout="this.className='ButCls'" Text="Upload" OnClick="UploadBtn_Click1" />
											<input type ="button" id="DMSAttributeBtn" class="ButCls" onmouseover="this.className='ButOCls'"
												onmouseout="this.className='ButCls'" value="Upload"/>
										</asp:TableCell>
									</asp:TableRow>
								</asp:Table>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow ID="SearchCondTr" CssClass="show" runat="server">
							<asp:TableCell CssClass="MainTD" ColumnSpan="2">
								<uc1:DMSSearchControl ID="DMSSearchControl1" runat="server"></uc1:DMSSearchControl>
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow ID="TableRow10" CssClass="HideRow" Height="0px" runat="server">
				<asp:TableCell ID="ValidatorsTd" runat="server">
					<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
						ShowMessageBox="True"></asp:ValidationSummary>
					<asp:TextBox ID="FieldNameListTxt" runat="server"></asp:TextBox>
					<asp:TextBox ID="BndFldIdLstTxt" runat="server"></asp:TextBox>
					<asp:TextBox ID="TpltUniqueIdTxt" runat="server"></asp:TextBox>
					<input type="text" id="SelFlag" value="" />
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow CssClass="MainFoot">
				<asp:TableCell>
					<input class="ButCls" id="OkBtn" onmouseover="this.className='ButOCls'" onclick="fnCrCloseWin()"
						onmouseout="this.className='ButCls'" type="button" value="Ok" />
					<input class="ButCls" id="CancelBtn" onmouseover="this.className='ButOCls'" onclick="fnCrCancelWin()"
						onmouseout="this.className='ButCls'" type="button" value="Cancel" /><asp:Label ID="WarningLbl"
							runat="server" CssClass="HideRow"></asp:Label>
				</asp:TableCell>
			</asp:TableRow>
		</asp:Table>
	</form>

	<script type='text/javascript'>
	function fnFileChk()
	{
		alert("Use 'Browse' Button To Select a Document")
		window.event.cancelBubble = true;	
		return(false);
	}

	function FnENBSelLstPopUp()
	{
	var pageURL ="EnotebookListPopUp.aspx"
	SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=75,left=75");
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
	}

	function GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)
	{
		document.getElementById("ENBUCodeTxt").value = ((ENBDesc=="") || (SecDesc=="")) ? "" : ENBDesc + " / " + SecDesc
		document.getElementById("ENBUCodeLab").innerHTML =  document.getElementById("ENBUCodeTxt").value
		document.getElementById("ENBIDTxt").value =ENBId
		document.getElementById("ENBCodeTxt").value =ENBAulId
		document.getElementById("SectionIdTxt").value =Secid
		document.getElementById("SectionDescTxt").value =SecDesc
	}

	function fnCrCancelWin(){
	
		opener.Ret_OpenDMSPopUp('','',"<%=Request.QueryString["UParam"]%>")
		window.self.close()
	}

	document.oncontextmenu=new Function("return false");
	document.onselectstart=new Function("return false");

	function fnCrCloseWin(){
		if(document.getElementById ("SelValTxt").value == "")
		{
			alert("- Select Document")
		}
		else
		{
			if(typeof(opener.OkRet_OpenDMSPopUp)!='undefined')
			{
				opener.OkRet_OpenDMSPopUp("<%=Request.QueryString["UParam"]%>");
			}
			window.self.close()
		}
	}

	function ShowConfirmation()
	{
  
		if('<%=ConfrmMsg %>'!="")
		{
			document.getElementById("OkBtn").className = 'HideRow';
			document.getElementById("CancelBtn").className = 'HideRow';
			alert('<%=ConfrmMsg %>');
		}
	}
  ShowConfirmation()
	</script>

</body>
</html>
