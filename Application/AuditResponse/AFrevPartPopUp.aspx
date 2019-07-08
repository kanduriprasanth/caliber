<%--PopUp Added by P Suresh to Display all Audit Related Documents--%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AFrevPartPopUp.aspx.vb"
    Inherits="AuditResponse.AFrevPartPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 transitional//EN">
<HTML>
	<HEAD>
		<title>Audit Findings Revision particulars</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript">
       function fnCrClose(){
            //opener.fnCrSeasp:TableCellocCode()
		    window.self.close()
	    }
	    
	function OpenModDet(ChilId,ObsCat,RulTyp,RulDes,ObsId,AFNo,ModCnt,BaseId,BdyID) 
    {
		var yval = parseInt(screen.availHeight) - 100  
		var xval = screen.availWidth-500
		
		var pageURL ="AuditFindingRevParticulars.aspx?ChilId="+ChilId + "&ObsCat=" + ObsCat + "&RulTyp=" + RulTyp + "&RulDes=" + RulDes + "&ObsId=" + ObsId + "&AFNo=" + AFNo + "&ModCnt=" + ModCnt + "&BaseId=" + BaseId  + "&BdyID=" + BdyID 
		var features = "height=1000,width=1000,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=100,left=100, right=100, bottom=100"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)	
	    if (SpWinObj.opener == null) SpWinObj.opener = self;
		SpWinObj.focus();
    }
		</script>
    </HEAD>

 <body MS_POSITIONING="GridLayout">
	<form id="Form2" method="post" runat="server" autocomplete=off>
			 <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server" ID="Table1" >
            <asp:TableRow>
            <asp:TableCell CssClass="MainHead">
					<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainRevTitleLtr" Runat="server"></asp:Literal>
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
                  </asp:TableCell>
                    </asp:TableRow>
            </asp:Table>
    </form>
 </body>
</html>
