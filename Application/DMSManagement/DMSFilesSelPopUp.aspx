<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DMSFilesSelPopUp.aspx.cs"
	Inherits="DMSManagement.DMSFilesSelPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
	<title>Document List</title>
	<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
	<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
	<meta name="vs_defaultClientScript" content="JavaScript" />
	
	<script type='text/javascript' src="../JScript/Common2.js"></script>
	<script type='text/javascript' src="../JScript/jquery.min.js"></script>
	<script type='text/javascript' src='../JScript/jquery.simplemodal.js'></script>
	<link type='text/css' href='../Styles/basic.css' rel='stylesheet' media='screen' />
	<script type='text/javascript' src='../JScript/basic.js'></script>
	<link href="../TRIMS.css" type="text/css" rel="stylesheet" />

	<style type="text/css">
		.TDRightAlign
		{
			text-align: right;
		}
		.TDLeftAlign
		{
			text-align: left;
		}
	</style>

	<script type='text/javascript'>

		function ViewDocument(RecId) {
			var DocId = document.getElementById("DocId" + RecId).innerText;
			var DocRepId = document.getElementById("ENBIDTxt").value;
			var SecId = document.getElementById("SectionIdTxt").value;

			OpenDocument(DocId, DocRepId, SecId)
		}

		function OpenDocument(DocId, DocRepId, SecId) {
			var yval = parseInt(screen.availHeight) - 20
			var xval = screen.availWidth

			var pageURL = "ViewDocument.aspx?DocId=" + DocId;
			SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			if (SpWinObj.opener == null) SpWinObj.opener = self;
			SpWinObj.focus();
		}

		function ValidateUploadFile(src, args) {
			Page_IsValid = true;
			args.IsValid = true;

			var FileName = document.getElementById("FileUpload1").value;
			if (FileName != "") {
				var FileAry = new Array();
				FileAry = FileName.split(".");
				var Exten = FileAry[FileAry.length - 1].toLowerCase()
				//var SupportedFilesLst = ",pdf,htm,html,doc,docx,xls,xlsx,pps,ppsx,ppt,pptx,vsd,xps,rpt,txt,gif,png,jpeg,jpg,"
				var SupportedFilesLst = ",pdf,doc,docx,xls,xlsx,"

				if (SupportedFilesLst.indexOf("," + Exten + ",") == -1) {
				    src.errormessage= "Select .pdf/.doc/.docx/.xls/.xlsx Files Only \n- "
					Page_IsValid = false;
					args.IsValid = false;
				}
			}
		}
	</script>
</head>
<body ms_positioning="GridLayout">
	<form id="Form1" method="post" runat="server">
	<asp:Table ID="table1" runat="server" CssClass="MainTable"  CellSpacing="1"
		CellPadding="0" HorizontalAlign="center">
		<asp:TableRow CssClass="MainHead">
			<asp:TableCell>
					DMS Document Uploader
			</asp:TableCell>
		</asp:TableRow>
		<asp:TableRow>
			<asp:TableCell>
				<asp:Table ID="table2" runat="server" Width="100%" CellSpacing="1" CellPadding="0"
					HorizontalAlign="center" CssClass="SubTable">
					<asp:TableRow CssClass="HideRow">
						<asp:TableCell Width="40%">
							<div id="basic-modal-content">
							<div id="DMSAttributeData" style ="height:300px;">
							</div>
							</div>
						</asp:TableCell>
						<asp:TableCell Width="60%">
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow CssClass="SubHead" ID="UploadTitleTr">
						<asp:TableCell>
							<asp:Label ID="ListLbl" runat="server" CssClass="InActAppTD" Style="cursor: hand"
								title="Click to Show">
									Search File(s) In DMS</asp:Label>
						</asp:TableCell>
						<asp:TableCell>
							<asp:Label ID="UploadLbl" runat="server" CssClass="ActAppTD" Style="cursor: hand"
								title="Click to Show">
									Upload File(s) to DMS</asp:Label>
						</asp:TableCell>
					</asp:TableRow>
					
					
					<asp:TableRow ID="UploadTr" Style="display: none;" runat="server">
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
										<asp:TextBox ID="DescTxt" onblur="return RestrictCopy()" onkeypress="return RestrictSpecialChar()" runat="server" CssClass="TxtCls" MaxLength="200" Width="200px">
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
											Width="280px" Style="behavior: url('#default#saveHistory')" />
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="2">
                                            <asp:Table ID="BodyFormTab" runat="server" HorizontalAlign="center" CssClass="SubTable">
                                            </asp:Table>
									</asp:TableCell>
								</asp:TableRow>
								
							</asp:Table>
						</asp:TableCell>
					</asp:TableRow>
					<asp:TableRow ID="SearchCondTr" runat="server">
						<asp:TableCell CssClass="MainTD" ColumnSpan="2">
							<asp:Table ID="DMSSearTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
								Width="100%">
								<asp:TableRow>
									<asp:TableCell ColumnSpan="3">
										<asp:Table ID="SearchTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
											Width="100%">
										</asp:Table>
									</asp:TableCell>
								</asp:TableRow>
								
								<asp:TableRow ID="TableRow1" runat="server">
									<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="TableCell2"
										Width="120px">Attached By Me</asp:TableCell>
									<asp:TableCell CssClass="MainTD" Width="120px">
                                         <asp:TextBox ID="NoofDaysTxt" runat="server" MaxLength=3 onkeypress="return IsDigit1(event)" Width="30px" CssClass='TxtCls'>
                                         </asp:TextBox> 
                                         <asp:Literal ID="Literal3" runat="server">Days Before</asp:Literal>                                                                 									
									</asp:TableCell>
									<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="TableCell3"
										Width="220px">This Issue Related Documents
                                         <asp:CheckBox ID="ThisIssChk" runat="server" />                                                                   									
									</asp:TableCell>
									
									
								</asp:TableRow>
								
								
								<asp:TableRow ID="RepositoryTypeTr" runat="server" CssClass="HideRow">
									<asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="RepositoryTypeTd"
										Width="220px">Document Repository Type</asp:TableCell>
									<asp:TableCell CssClass="MainTD" ColumnSpan="2">
										<asp:DropDownList ID="RepositoryTypeDdl" runat="server">
										</asp:DropDownList>
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow CssClass="SubHeadTD">
									<asp:TableCell>
										<asp:Literal ID="PgNoLtrl" runat="server">Page No.</asp:Literal>
										<asp:TextBox ID="PgNoTxt" CssClass="TxtCls" runat="server" AutoPostBack="False" Width="50px"
											MaxLength="5">1</asp:TextBox>
									</asp:TableCell>
									<asp:TableCell>
										<asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
										<asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
									</asp:TableCell>
									<asp:TableCell HorizontalAlign="Right">
										<asp:Button ID="Button1" runat="server" Text="Display" OnClick="Button1_Click" CausesValidation="false"
											onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" />
									</asp:TableCell>
								</asp:TableRow>
								<asp:TableRow>
									<asp:TableCell ColumnSpan="3">
										<div style="overflow-x: hidden; overflow-y: auto; height: 340px; background-color: gray">
											<asp:Table ID="DispTbl" runat="server" CssClass="SubTable" CellPadding="0" CellSpacing="1"
												Width="100%">
											</asp:Table>
										</div>
									</asp:TableCell>
								</asp:TableRow>
							</asp:Table>
							<input type="Text" id="SelTextTxt" class="HideRow" />
							<input type="Text" id="SelValTxt" class="HideRow" />
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
				<asp:TextBox ID="DMSAttXMLDataTxt" runat="server" />
			</asp:TableCell>
		</asp:TableRow>
		<asp:TableRow CssClass="MainFoot">
			<asp:TableCell ID="FooterTd" CssClass="TDLeftAlign">
			  <span id="selectbtnSpan">
			
				<input class="ButCls" id="OkBtn" onmouseover="this.className='ButOCls'" onclick="fnCrCloseWin()"
					onmouseout="this.className='ButCls'" type="button" value="Ok" />
				<input class="ButCls" id="CancelBtn" onmouseover="this.className='ButOCls'" onclick="fnCrCancelWin()"
					onmouseout="this.className='ButCls'" type="button" value="Cancel" />
					<asp:Label ID="WarningLbl" runat="server" CssClass="HideRow"></asp:Label>
				</span>	
				
				<span id="BypassEFormLbl" class="HideRow" style="display:none; color: Black;">By Pass eForm </span>
				<input type="checkbox"  class="HideRow" id="BypassEFormCbox" style="display:block;" />
                    <asp:Button ID="UploadBtn" runat="server" Style="display: none;" class="ButCls" onmouseover="this.className='ButOCls'"
                        onmouseout="this.className='ButCls'" Text="Upload" OnClick="UploadBtn_Click1" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0px">
                <asp:TableCell ColumnSpan="2" ID="TableCell1" runat="server">
                    <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString"></asp:TextBox>
                    <asp:TextBox ID="ChkBoxIdTXtx" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="NoOfControlsTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <div id="DMSAttXMLData" runat="server">
                    </div>
			</asp:TableCell>
		</asp:TableRow>
	</asp:Table>
	</form>
	<script type='text/javascript'>


//        $('#ListLbl,#UploadLbl').click(function () {
//                if ($("body").data("VisibleContId") ==null) {
//                if(this.id == "ListLbl")
//                    return;
//                }
//              
//            if ($("body").data("VisibleContId") != this.id) {
//                ToggleDispForm()
//                $("body").data("VisibleContId", this.id);
//            }
//        });
//        
             
    $('#ListLbl,#UploadLbl').click(function () {
            //if ($("body").data("VisibleContId") != this.id) {
                ToggleDispForm(this.id)
              //  $("body").data("VisibleContId", this.id);
            //}
        });


    </script>
    <script type='text/javascript'>

	$(':checkbox').click(function(){
		var DocIdArr   = [];
		var DocCodeArr = [];
		var DocDescArr = [];
		$(':checkbox:checked[id^=DMSRBID]').each(function(i){
			var RCnt = $(this).val()
			DocIdArr[i]   = $("#DocId"   + RCnt).text();
			DocCodeArr[i] = $("#DocCode" + RCnt).text();
			DocDescArr[i] = $("#DocDesc" + RCnt).text();
		});
		$("#SelValTxt").val(DocIdArr.join(","));
		$("#SelTextTxt").val(DocCodeArr.join(","));
		opener.Ret_OpenDMSPopUp(DocIdArr.join(","),DocCodeArr.join("$@$"),DocDescArr.join("$@$"),"<%=Request.QueryString["UParam"]%>")
	});

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
	}

	function fnCrCancelWin(){
		opener.Ret_OpenDMSPopUp('','','',"<%=Request.QueryString["UParam"]%>")
		window.self.close()
	}

//	document.oncontextmenu=new Function("return false");
//	document.onselectstart=new Function("return false");

	function fnCrCloseWin(){

		if(document.getElementById ("SelValTxt").value == "")
		{
			alert("- Select Document Code")
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

	function ToggleDispForm(dispId)


	{
//			$("#UploadTr,#SearchCondTr,#selectbtnSpan,#BypassEFormLbl,#UploadBtn,#BypassEFormCbox").toggle();
//			$("#ListLbl,#UploadLbl").toggleClass("ActAppTD InActAppTD");
//			$("#FooterTd").toggleClass("TDLeftAlign TDRightAlign");

 if(dispId == "ListLbl")
        {
	        $("#SearchCondTr,#OkBtn,#CancelBtn").css("display","inline");
	        $("#UploadTr,#BypassEFormLbl,#UploadBtn,#BypassEFormCbox").css("display","none");
	        $("#ListLbl").attr("class","ActAppTD");
	        $("#UploadLbl").attr("class","InActAppTD");
	        $("#FooterTd").attr("class","TDLeftAlign");
        }
        else
        {
	        $("#SearchCondTr,#OkBtn,#CancelBtn").css("display","none");
	        $("#UploadTr,#BypassEFormLbl,#UploadBtn,#BypassEFormCbox").css("display","inline");
	        $("#ListLbl").attr("class","InActAppTD");
	        $("#UploadLbl").attr("class","ActAppTD");
	        $("#FooterTd").attr("class","TDRightAlign");
        }



	}
	function ShowConfirmation()
	{
  
		if('<%=ConfrmMsg %>'!="")
		{
			ToggleDispForm();
			alert('<%=ConfrmMsg %>');
		}
	}
  ShowConfirmation()
  
  
    function RestrictSpecialChar(e) {
    //get the keycode when the user pressed any key in application
   
    var exp = String.fromCharCode(window.event.keyCode)

    //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
    
    var r = new RegExp("[,$#*@^]", "g");

        if (exp.match(r) != null) {
        window.event.keyCode = 0
        alert(" , $ # * @ ^  These Characters Are Not Allowed ")
        return false;
        }
    }
 
 
 
    function RestrictCopy()
    {

        var otxt=document.getElementById('DescTxt'); 
        var val=otxt.value;

        for(i=0;i<val.length;i++)
        {
            var code=val.charAt(i);
           
            if((code==',') || (code=='$') || (code=='#') || (code=='@') || (code=='^'))
             {
             alert(" , $ # * @ ^  These Characters Are Not Allowed ")
             otxt.value=""; return ; 
             }    
        }

    }


	</script>
</body>
</html>

