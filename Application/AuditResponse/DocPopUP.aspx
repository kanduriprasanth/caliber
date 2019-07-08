<%--PopUp Added by P Suresh to Display all Audit Related Documents--%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DocPopUP.aspx.vb"
    Inherits="AuditResponse.DocPopUP" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 transitional//EN">
<HTML>
	<HEAD>
		<title>Audit Related Documents</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript">
       function fnCrClose(){
            //opener.fnCrSeasp:TableCellocCode()
		    window.self.close()
	    }
	    
	function OpenDocument(DocId) 
    {
		var yval = parseInt(screen.availHeight) - 100
		var xval = screen.availWidth-500

		var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
		SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
		if (SpWinObj.opener == null) SpWinObj.opener = self;
		SpWinObj.focus();
    }
		</script>
    </HEAD>

 <body MS_POSITIONING="GridLayout">
	<form id="Form2" method="post" runat="server" autocomplete=off>
			<asp:Table id="tt" CELLPADDING="1" CELLSPACING="1" BorderWidth="3"
				cssclass="MainTable" WIDTH="100%" HEIGHT="100%" runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtr" Runat="server"></asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="MainTD">
                        <asp:Table ID="ResTab" runat="server" CssClass='SubTable' Width="100%" Height="20%">
                        </asp:Table>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="MainFoot">
                        <input CssClass="ButCls" id = "clsbtn" class='ButSelCls'  onmouseover = "this.className='ButOCls'" style="width: 60px"
                            onclick="fnCrClose()" onmouseout="this.className='ButCls'" type="button" value="Close"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
    </form>
 </body>
</html>
