<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Particulars.aspx.vb" Inherits="ApprovedVendor.Particulars" %>
<HTML>
	<HEAD>
		<title>SampParticulars</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		
	<Script language="javascript">

	function fnOpenDocPopUp(BaseID){
		 var AvrId = BaseID
    	 var pageURL = "../AuditResponse/DocPopUP.aspx?AvrId="+AvrId+"&BID="
	     var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=100,left=100, right=100, bottom=100"
	     SpWinObj = window.open(pageURL,'SpecCodes',features)
	     if(SpWinObj.opener == null) SpWinObj.opener=self;
	     SpWinObj.focus();
	}
  	function fnbackorclose()
	{
		     var btnval = "<%=str%>"
		     if(btnval == "back")
		     {
		        window.history.back()
		     }
		     else if(btnval == "close")
		     {
		        window.close()
		     }
	}
	
	//Added by P Suresh -Start-
  function OpenDocument(DocId) 
		    {
			    var yval = parseInt(screen.availHeight) - 100
			    var xval = screen.availWidth-500
			    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
			    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			    if (SpWinObj.opener == null) SpWinObj.opener = self;
			    SpWinObj.focus();
		    }  
//Added by P Suresh -END-
	
	</SCRIPT>
	
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"   runat="server" EnableViewState="false">
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
							<ASP:TABLEROW>
								<ASP:TABLECELL ColumnSpan="2">
									<ASP:TABLE id="DataTab" runat="server" HorizontalAlign="center" CELLPADDING="0" CSSClass="SubTable"
										cellspacing="1" width="100%"></ASP:TABLE>
								</ASP:TABLECELL>
							</ASP:TABLEROW>
						</asp:Table>
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
									<input type="button" onMouseOver="this.className='ButOCls'" Class='ButCls' runat=server  name="btn1" id="backbtn" accessKey="B"
										onMouseOut="this.className='ButCls'" Value='Back' onclick="fnbackorclose()">							
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right"></asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		</FORM></body>
</HTML>
