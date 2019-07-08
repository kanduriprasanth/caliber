<%@ Page Language="C#" AutoEventWireup="true" Codebehind="DemoReport.aspx.cs" Inherits="DMSManagement._DemoReport" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
	<title>Untitled Page</title>

	<script type='text/javascript' src="../JScript/jquery.min.js"></script>

	<script type='text/javascript' src="../JScript/jquery.simplemodal.js"></script>

	<link type='text/css' href='../Styles/basic.css' rel='stylesheet' media='screen' />

	<script type='text/javascript' src="../JScript/basic.js"></script>

	<link rel="stylesheet" href="../TRIMS.css">

	<script type='text/javascript' src="printMethods.js"></script>

	<link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css">
	<link href="../eNoteBookEditor/editor/css/fck_editorarea.css" rel="stylesheet">

	<script type='text/javascript' src="../JScript/Common2.js"></script>

	<script type='text/javascript' src="../eNoteBookEditor/MaskJScript.js"></script>

	<script language="vbscript" src="../JScript/MsWordScript.vbs"></script>

	<script type='text/javascript'>

$(document).ready(function() {
	$('#PrintBtn').click(function() {

		if($("body").data("DataLoaded") === undefined)
		{
			$.ajax({
				url: 'AttStructureForm_Ajax.aspx',
				cache: false,
				//dataType: "xml",
				data: "RType=<%=RepositoryTypeId%>&SType=<%=SourceTypeId%>",
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
						TpltPrintPre('Print');
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
	});

});

function SubmitAttributeData()
{
	var XMLData  = $("#DMSAttXMLData").val();
}

	</script>

	<script type='text/javascript'>
	 function TpltPrintPre(Type)
	 {
		var Header = $("#HeaderTd").html() 
		var DataArr = new Array() 
		var HdrReqArr = new Array() 
		var FrtReqArr = new Array() 
		DataArr.push( $("#BodyTd").html() )
		HdrReqArr.push (0)
		FrtReqArr.push (0)
		
		var Footer = $("#FooterTd").html()
		ShowMask()
		var PrintPreview =11;
		if(Type=='Print'){PrintPreview=0;}
		PrintPreviewMaster(Type,"text",DataArr,"2".split(","),"",Header,Header,Footer,Footer,Header,Footer,HdrReqArr,FrtReqArr,FrtReqArr,"",PrintPreview ,"")
	 }

	</script>

</head>
<body>
	<form id="Form1" method="post" runat="server">
		<asp:Table ID="tt" CellPadding="0" CellSpacing="0" HorizontalAlign="center" CssClass="MainTable"
			runat="server">
			<asp:TableRow CssClass="MainHead">
				<asp:TableCell>
					<asp:Literal ID="MainTitleLtrl" runat="server"> Remport</asp:Literal>
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow>
				<asp:TableCell>
					<!-----------Base table------------->
					<asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
						HorizontalAlign="center" ID="Table1">
						<asp:TableRow CssClass="HideRow" Height="0">
							<asp:TableCell>
								<asp:TextBox ID="OrientationTxt" runat="server" Text="1"></asp:TextBox></asp:TableCell>
							<asp:TableCell></asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell CssClass="SubHead" ColumnSpan="2">
								<asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell CssClass="MainTD" ColumnSpan="2">
								<table id="Table3" class="SubTable" cellspacing="1" cellpadding="0" align="Center" border="0" style="width:100%;">
									<tr id="TableRow3" class="HideRow" style="height:0px;">
										<td id="TableCell3"></td>
									</tr><tr id="HeaderTr" class="HideRow" style="height:0px;">
										<td id="HeaderTd" class="MainTD"></td>
									</tr><tr id="BodyTr">
										<td id="BodyTd" class="MainTD"><div class="Section1"><table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="1044" style="border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-alt: solid windowtext .5pt; mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext; mso-table-layout-alt: fixed; mso-yfti-tbllook: 1184"><tbody><tr style="page-break-inside: avoid; height: 17.15pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes"><td width="64" style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 48.2pt; padding-right: 5.4pt; height: 17.15pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt"><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt">Step No.<o:p></o:p></span></b></p></td><td width="980" style="border-bottom: windowtext 1pt solid; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 734.8pt; padding-right: 5.4pt; height: 17.15pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt"><h1><span style="mso-fareast-font-family: 'Times New Roman'; mso-fareast-theme-font: minor-fareast">Process Instructions<o:p></o:p></span></h1></td></tr><tr style="page-break-inside: avoid; height: 170.05pt; mso-yfti-irow: 1; mso-yfti-lastrow: yes"><td valign="top" width="64" style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 48.2pt; padding-right: 5.4pt; height: 170.05pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt">8.0<o:p></o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p>&nbsp;</o:p></span></b></p></td><td valign="top" width="980" style="border-bottom: windowtext 1pt solid; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 734.8pt; padding-right: 5.4pt; height: 170.05pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"><p class="MsoNormal"><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt">Yield &amp; Reconciliation<span style="mso-spacerun: yes">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><o:p></o:p></span></b></p><div align="center"><table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" style="border-bottom: medium none; border-left: medium none; border-collapse: collapse; border-top: medium none; border-right: medium none; mso-padding-alt: 0in 5.4pt 0in 5.4pt; mso-border-alt: solid windowtext .5pt; mso-border-insideh: .5pt dotted windowtext; mso-border-insidev: .5pt dotted windowtext; mso-table-layout-alt: fixed; mso-yfti-tbllook: 1184"><tbody><tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-bottom-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">A<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Theoretical weight of blend&nbsp;<o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: windowtext 1pt solid; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007001&nbsp;Kg<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 1"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">B<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Actual yield (Weight of blend from step no (7.0)<o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007002&nbsp;Kg<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 2"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">C<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Percentage yield<span style="mso-spacerun: yes">&nbsp;&nbsp; </span>(B/A x 100)</span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt" /><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007003%*<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 3"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">D<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Sample quantity for analysis<o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007004&nbsp;Kg<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 4"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">E<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Rejects&nbsp;<o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007005&nbsp;&nbsp;&nbsp;Kg<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 5"><td valign="top" width="30" style="border-bottom: windowtext 1pt dotted; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">F<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Others <o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt dotted; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-left-alt: solid; mso-border-top-alt: dotted; mso-border-bottom-alt: dotted; mso-border-right-alt: solid; mso-border-color-alt: windowtext; mso-border-width-alt: .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007006Kg<o:p></o:p></span></p></td></tr><tr style="mso-yfti-irow: 6; mso-yfti-lastrow: yes"><td valign="top" width="30" style="border-bottom: windowtext 1pt solid; border-left: windowtext 1pt solid; padding-bottom: 0in; padding-left: 5.4pt; width: 22.5pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">G<o:p></o:p></span></p></td><td valign="top" width="384" style="border-bottom: windowtext 1pt solid; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 287.8pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">Reconciliation [(B+D+E+F)/A X 100]<o:p></o:p></span></p></td><td valign="bottom" width="143" style="border-bottom: windowtext 1pt solid; border-left: medium none; padding-bottom: 0in; padding-left: 5.4pt; width: 107.15pt; padding-right: 5.4pt; border-top: medium none; border-right: windowtext 1pt solid; padding-top: 0in; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: dotted windowtext .5pt"><p class="MsoNormal"><span style="font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; font-size: 11pt">FLD110033COL0111007007%**<o:p></o:p></span></p></td></tr></tbody></table></div><p class="MsoNormal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt">* Justify here if percentage of yield is less than 97% or more than 100%.<o:p></o:p></span></p><p class="MsoNormal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt">** Justify here if reconciliation is less than 95% or more than 100%.</span><b style="mso-bidi-font-weight: normal"><span style="font-size: 11pt; mso-bidi-font-size: 12.0pt"><o:p></o:p></span></b></p></td></tr></tbody></table><p class="MsoNormal"><o:p>&nbsp;</o:p></p></div></td>
									</tr><tr id="FooterTr" class="HideRow" style="height:0px;">
										<td id="FooterTd" class="MainTD"></td>
									</tr>
								</table>
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>
					<!-----------End of Base table------------->
				</asp:TableCell>
			</asp:TableRow>
			<asp:TableRow CssClass="MainFoot">
				<asp:TableCell>
					<asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
						ID="Table2" BorderWidth="0">
						<asp:TableRow CssClass="HideRow" Height="0">
							<asp:TableCell>
							<div id="basic-modal-content">
							<div id="DMSAttributeData">
							</div>
							</div>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow>
							<asp:TableCell>
								<input type =button id="PrintBtn" onMouseOver="this.className='ButOCls'"
									Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" value =" Print "/>
							</asp:TableCell>
						</asp:TableRow>
					</asp:Table>
				</asp:TableCell>
			</asp:TableRow>
		</asp:Table>
		<object id="CaliberOfficeAX" name="CaliberOfficeAX" classid="clsid:EF51DBFA-53A5-43a6-9362-50C9B5D24D81"
			viewastext codebase="CaliberOfficeActiveXComponent.cab">
	</form>
</body>
</html>
