<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="EscalationNodeConfig.Trn" %>
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
        <script language="javascript" src="../JScript/jquery.min.js"></script>		
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}
		</script>
		
<script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
</script>

	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="0" HorizontalAlign="center"
				cssclass="MainTable"  runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server">Escalation Node</asp:Literal>
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
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DescTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" onkeypress="taLimit()" onkeyup="taCount()" TextMode="MultiLine"  runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EscBasedOnTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="EscBasedOnValTd">
								<asp:RadioButtonList ID="EscBasedOnRbl" border="0" runat="server" RepeatColumns="4" AutoPostBack="true" Onclick ="Fn_RestValues()" CssClass="Radiocls" RepeatDirection="Horizontal" Width="80%">
												<asp:ListItem Value="1">  Issue Initiation Department</asp:ListItem>
                                                <asp:ListItem Value="2">  Action Plan Department </asp:ListItem>
                                                <asp:ListItem Value="3">  Issue Task Department </asp:ListItem>
                                                <asp:ListItem Value="4" selected="True"> Direct</asp:ListItem>
								</asp:RadioButtonList >
								</asp:TableCell>
							</asp:TableRow>
							
							
							<asp:TableRow ID="UserGrpTr"  CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="UserGrpTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								
								<input type="button" id="UserGrpPopUpBtn" runat="server" class ='RsnPUP' onclick='fnOpenUserGrpPopUp()'/>                               
                              
                                <asp:Label ID="UserGrpLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="UserGrpTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserGrpTxtTmp" runat="server" CssClass="HideRow"></asp:TextBox>
  								</asp:TableCell>
							</asp:TableRow>
							
							
							
							<asp:TableRow ID="DeptVsUserGrpTr">
								<asp:TableCell CssClass="MainTD" ColumnSpan="2">
								<div id='div1' style='BACKGROUND-COLOR: white'	align='center'>							
                                <asp:table id="ResTab" CSSClass="SubTable"  runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0">
                                </asp:table>
                                </div>
                                </asp:TableCell>
							</asp:TableRow>
							
							
							
							 
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
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
        <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
                    <asp:TableCell>
                                <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                    </asp:TableCell>					
				</asp:TableRow>				
			</asp:table>
		</form>
		
	</body>
	<script language=javascript>
<!--
document.getElementById('DescTxt').focus()
//-->

function fnOpenUserGrpPopUp() {
    var pageURL = "UserGrpPopUp.aspx"
	var features = "height=450,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
function fnCrSetToCode(UserGrpIdVal, UserGrpCodeVal, UserGrpUcodeVal,UserGrpDescVal) {
if (UserGrpIdVal != '')
{
    document.getElementById("UserGrpTxt").value = UserGrpCodeVal
    document.getElementById("UserGrpLbl").innerHTML = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
    document.getElementById("UserGrpTxtTmp").value = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
}
else 
{
    document.getElementById("UserGrpTxt").value = ''
    document.getElementById("UserGrpLbl").innerHTML = '' 
    document.getElementById("UserGrpTxtTmp").value = '' 
}
}


function fnOpenDeptUserGrpPopUp(RowCnt) {
    var pageURL = "DptUserGrpPopUP.aspx?RowCnt=" + RowCnt
	var features = "height=450,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
    var SpWinObj = window.open(pageURL, 'SpecCodes', features)
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();
}
function fnCrDeptUgpSetToCode(UserGrpIdVal,UserGrpCodeVal,UserGrpUcodeVal,UserGrpDescVal,RowCnt) {
if (UserGrpIdVal!='')
{
    document.getElementById("UsergrpID_" + RowCnt).value = UserGrpIdVal
    document.getElementById("UserGrpDesc_" + RowCnt).innerHTML = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
    document.getElementById("UserGrpTxt_" + RowCnt).value = UserGrpDescVal +"( " + UserGrpUcodeVal+ " )"
    document.getElementById("UsergrpCode_" + RowCnt).value=UserGrpCodeVal
  
}
else 
{
    document.getElementById("UsergrpID_" + RowCnt).value = UserGrpIdVal
    document.getElementById("UserGrpDesc_" + RowCnt).innerHTML = UserGrpDescVal
    document.getElementById("UserGrpTxt_" + RowCnt).value = UserGrpDescVal
    document.getElementById("UsergrpCode_" + RowCnt).value=UserGrpCodeVal
    
}
}



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
			
function Fn_RestValues()
{
var cnt='<%=DeptCnt%>'
  for (i=0;i<=cnt-1;i++)
     {
       document.getElementById("UsergrpCode_" + i).value  = ""
       document.getElementById("UsergrpID_" + i).value  = ""
       document.getElementById("UserGrpDesc_" + i).innerHTML  = ""
       document.getElementById("UserGrpTxt_" + i).value  = ""
     }
                         
}

function fnChkSelUgp(src,args){
     debugger
         var cnt='<%=DeptCnt%>'
         var UgpChkStr=""
                         for (i=0;i<=cnt-1;i++)
                         {
                                 if (UgpChkStr=="")
                                     {
                                     UgpChkStr=document.getElementById("UsergrpCode_" + i).value 
                                     }
                                 else
                                     {
                                     UgpChkStr=UgpChkStr + "," + document.getElementById("UsergrpCode_" + i).value
                                     }
                         }
            if (UgpChkStr=="")
            {
            args.IsValid=false;
            Page_IsValid=false;
            }
            else
            {
            args.IsValid=true;
            Page_IsValid=true;
            }
}
	
    </script>
	</HTML>
