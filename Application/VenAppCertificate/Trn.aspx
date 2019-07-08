<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="VenAppCertificate.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    
    <script language="javascript">
    
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

 function ChkScopeOfQua(src,args)
 {
        if((document.getElementById("RuleIDTxt").value == "undefined" || document.getElementById("RuleIDTxt").value == "") && document.getElementById("AdtPrfmTxt").value == "2")
        {
                args.IsValid=false;
  	            Page_IsValid=false;
        }
 }
 
	//-->
//	Added by P Suresh -Start-
	 function fnOpenCrPopUp(){
	    var GetAvrIdStr="<%=GetAvrIdStr%>"
    	var pageURL = "QualRefPopUP.aspx?GetAvrIdStr="+GetAvrIdStr+"&QuaSeqStr="+document.getElementById("QuaSeqTxt").value
	    var features = "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=auto,top=50,left=50, right=50, bottom=50"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
    }

    function fnDocNames(DocNamesStr,QuaSeqStr)
    {
        document.getElementById("DocNamesTxt").value = DocNamesStr
        document.getElementById("QuaSeqTxt").value = QuaSeqStr
        document.getElementById("DocNmLbl").innerHTML = document.getElementById("DocNamesTxt").value
    }
    
    //Added by P Suresh to display message if we do not select Qualification reference
    function QuaRefValid()
    {
    	if (!Page_ClientValidate())
	    {
            return;
        }
        if (document.getElementById("QuaSeqTxt").value=="" && document.getElementById("ChkDocsTxt").value=="1")
        {
            var Flag=AlertMsgBox();
            if (Flag==6)
            {                      
                document.getElementById("btnConfirm").click();  
            }
        }
        else
        {
            document.getElementById("btnConfirm").click();  
        }
    }
    
    function OpenRuleTypePopUp()
    {
        var pageURL = "../AuditObservation/RuleTypeListPopup.aspx?IdSuffix=0"
	    var features = "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
	    var winObj = window.open(pageURL,'eNoteBookfields',features)
	    if(winObj.opener ==null)winObj.opener = self;
	    winObj.temp="asdf"
    }
    
    function Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RupeDesc,RuleTypeRuleDesc,IdSuffix)
    {
        document.getElementById("RuleTypeIDTxt").value = RuleTypeId;
        document.getElementById("RuleIDTxt").value = RuleId;
        if(RupeDesc!="")
        {
            //DispVal = RuleTypeDesc + " : " + RupeDesc + "  "
            DispVal = RupeDesc
        }
        else
        {
            DispVal="";
        }
        document.getElementById("RuleDescTxt").value = DispVal;
        document.getElementById("RuleDescLbl").innerHTML = DispVal;
    }
    //	Added by P Suresh -END-
    </script>
    <%-- AlertMsgBox added by P Suresh--%>
    <script language="vbscript">
		function AlertMsgBox()
		
            ErrStr = "Qualification Reference Value is not Selected! Would you like to Continue?"
		    ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
		    if ReturnVal=6 then
		    AlertMsgBox=6
		    else
		    AlertMsgBox=7
		    end if
	    End function 
    </script>
    
</head>
<body ms_positioning="GridLayout"> 
    <form id="Form1" method="post" runat="server">
       <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="VendTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="VendValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BsaSubCatTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="BsaSubCatTdVal">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="VendQuaNoTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="VendQuaNoValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ScopeTr1">
                            <asp:TableCell CssClass="MainTD" ID="ScopeTd1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ScopeTd1Val">
                                <asp:TextBox ID="ScopeIDTxt" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ScopeTr2" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="ScopeTd2" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ScopeTd2Val">
                                <input type="button" id="ScopeBtn" onclick="OpenRuleTypePopUp()" title="Click Here"
                                    class='<%=RsnPUPCss%>' style="height: 20px">
                                <asp:Label ID="RuleDescLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="RuleDescTxt" CssClass="HideRow" runat="server" BorderStyle="none"
                                    BorderColor="white" Width="300px"></asp:TextBox>
                                <asp:TextBox ID="RuleTypeIDTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="RuleIDTxt" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QualStatusTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="QualStatusValTd">
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow">
                                <asp:TextBox ID="QuaStsIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ItemTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ItemValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Commented by P Suresh--%>
                        <%--<asp:TableRow>  
                            <asp:TableCell CssClass="MainTD" ID="CrtfctTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CrtFctDDL" runat="server" Width="200px">
                                    <asp:ListItem Value=""></asp:ListItem>
                                    <asp:ListItem Value="1">Provisional Certificate</asp:ListItem>
                                    <asp:ListItem Value="2">Vendor Certificate</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QualRefTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD"> <%--Edited by P Suresh--%>
                                <%--<asp:DropDownList ID="QalRefDDL" runat="server" Width="200px">
                                </asp:DropDownList>--%>
                                <input type="button" onclick="fnOpenCrPopUp()" class='RsnPUP' style="height:20px">
                                <asp:Label ID="DocNmLbl" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>  <%--Added by P Suresh--%>
                            <asp:TableCell CssClass="MainTD" ID="ManfLocTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ManfLocValTd">
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow">
                                <asp:TextBox ID="LocIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ValidFromTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ValidFromValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ValidUpToTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ValidUpToValTd">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RevisionTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="RevisionValTd">
                            </asp:TableCell>
                        <%--<asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RevsnTxt" CssClass="TxtCls" MaxLength="250" runat="server" Width="200px"></asp:TextBox>
                            </asp:TableCell>--%>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RemarksTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemTxt" CssClass="TxtCls" onkeypress="taLimit()" onkeyup="taCount()" MaxLength="250" runat="server" Width="200px" TextMode="MultiLine"></asp:TextBox>  <%--Edited by P Suresh--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="20" Width="200px"
                                    TextMode="MultiLine" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <input type="button" id="btn1Confirm" value="Submit" onmouseover="this.className='ButOCls'"
                                    class="ButCls" onclick="QuaRefValid()" accesskey="C" causesvalidation="true"
                                    onmouseout="this.className='ButCls'" style="width: 70px;">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" Height="20px" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="AvrIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="OrgAvrIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="VendIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ItemIdsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AdtPrfmTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DocNamesTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkFlagTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkBaFlagTxt" runat="server"></asp:TextBox>                                          
                    <asp:TextBox ID="QuaSeqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkDocsTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
document.getElementById('CodeTxt').focus()

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
			
			
//-->
</script>

</html>
