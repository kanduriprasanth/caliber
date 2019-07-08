<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="WorkFlow.Trn" %>

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

    <style>
   .SubDivCss{
	width:30px;
	height:20px;
	/*float:left;*/
	cursor:pointer;
	border:1px solid #000;
	/*margin:1px;*/
}
    </style>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>' 

	//-->
	//Comments function
	function fnSetToReasons(argValue)
	{  
   		//document.Form1.RemarksTxt.value = argValue
   		document.getElementById("RemarksTxt").value=argValue
	}
	
	//Approver Reviewer group selection popup function
	
var RevAppIDTxt
var RevAppCodeTxt
var RevAppAulIDTxt
var RevAppLab
	function FnRevAppGroupSelPopUp(RevAppUCodeTxtID,RevAppIDTxtID,RevAppCodeTxtID,RevAppUCodeLabID,Type)
	{ 
	
        RevAppCodeTxt=RevAppUCodeTxtID
	    RevAppIDTxt=RevAppIDTxtID
	    RevAppAulIDTxt=RevAppCodeTxtID
	    RevAppLab = RevAppUCodeLabID
	    var pageURL;
        pageURL ="RevAppListPopUp.aspx?Type="+Type
        var SpWinObj;
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'SpecCodes1',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
     }
    
    //Approver Reviewer group selection ID and Code handling Function
    function fnRevAppSetToCode(RevAppIdVal,RevAppCodeVal,RevAppUCodeVal)
    { 
      document.getElementById(RevAppCodeTxt).value=RevAppUCodeVal
      document.getElementById(RevAppLab).innerHTML=RevAppUCodeVal

      document.getElementById(RevAppIDTxt).value=RevAppIdVal
      document.getElementById(RevAppAulIDTxt).value=RevAppCodeVal
    }

function FnAllowNumVal()
{
    var e =event.keyCode
    if((e ==8) || (e ==46)) {}//Backspace and delete keys
    else if((e ==37) || (e ==39)) {}//Left and right Navigation Keys
    else if(e ==16) {}//(e ==32) || (e ==16)) {} //Space and Tab Keys
    else if(e ==32){return false}
    else if   ( e >= 96 && e <= 105){}
     else if( event.shiftKey ==true){return false}
     else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
    {return false}
  
}
var ColTxtIdVal,ColLabIdVal,ColLabTxtIdVal;
function FnRevAppColPopUp(ColTxtId,ColLabId,ColLabTxtId)
{//debugger
ColTxtIdVal=ColTxtId
ColLabIdVal =ColLabId
ColLabTxtIdVal=ColLabTxtId

    var pageURL;
    pageURL ="ColorPopUp.aspx"
    var SpWinObj;
    var PWidth=600
    var PHeight=600
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
    SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}

function SetColSelValues(Col)
{
    document.getElementById(ColTxtIdVal).value =Col
    document.getElementById(ColLabIdVal).style.backgroundColor = Col
   // document.getElementById(ColLabTxtIdVal).innerHTML ="Col"
}

function SetEventVal()
{
    
}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" Width="98%">
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
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="CodeDescTbl" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                    <asp:TableRow>
                                        <asp:TableCell Style="font-weight: bold;" CssClass="MainTD" ID="DescTd" Width="180px"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                                onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell Style="font-weight: bold;" CssClass="MainTD" ID="CodeTd" Width="180px"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                                AccessKey="C" TabIndex="2"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--This is for Caliber e note book--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="RevTbl">
                                    <asp:TableRow>
                                        <asp:TableCell Style="font-weight: bold;" CssClass="MainTD" ID="NoOFRevTd" Width="180px"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="NoOFRevTxt" runat="server" CssClass="TxtCls" onfocus="HoldPreVal()"
                                                onkeydown="return FnAllowNumVal()" Onkeyup="return CheckRevNum();" MaxLength="25"
                                                Width="50px" AutoPostBack="true" TabIndex="3" Oncopy="return false" Onpaste="return false" Oncut="return false"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="AppTbl">
                                    <asp:TableRow>
                                        <asp:TableCell Style="font-weight: bold;" CssClass="MainTD" ID="NoOFAppTd" Width="180px"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="NoOFAppTxt" runat="server" CssClass="TxtCls" onfocus="HoldPreVal()"
                                                onkeydown="return FnAllowNumVal()" Onkeyup="return CheckAppNum();" TabIndex="4"
                                                MaxLength="25" Width="50px" AutoPostBack="true" oncopy="return false" Onpaste="return false" oncut="return false"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow  CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="Table3" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                    <asp:TableRow>
                                        <asp:TableCell Style="font-weight: bold;" CssClass="MainTD" ID="CommunicationTypeTd"
                                            Width="180px"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="CommunicationTypeRTd">
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ID="TableCell1" CssClass="MainTD" Style="font-weight: bold;" Width="180px"></asp:TableCell>
                                        <asp:TableCell ID="TableCell2" CssClass="MainTD">
                                            <asp:Table ID="Table4" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                                CellSpacing="1">
                                                <asp:TableRow>
                                                    <asp:TableCell ID="Check1" runat="server" CssClass="MainTD" Text="Initiation" Width="25%"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell3" runat="server" CssClass="MainTD" Text="Approval" Width="25%"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell4" runat="server" CssClass="MainTD" Text="Return" Width="25%"></asp:TableCell>
                                                    <asp:TableCell ID="TableCell5" runat="server" CssClass="MainTD" Text="Drop" Width="25%"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell ID="TableCell6" runat="server" CssClass="MainTD" Width="25%">
                                                        <input type="button" onclick="FnUsersListPopUp()" class='RsnPUP' tabindex="9">
                                                        <asp:Label ID="UserNameLab" runat="server" Text=""></asp:Label>
                                                        <asp:TextBox ID="UserIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                                        <asp:TextBox ID="UserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="TableCell7" runat="server" CssClass="MainTD" Width="25%">
                                                        <input type="button" onclick="FnUsersListPopUp()" class='RsnPUP' tabindex="9">
                                                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="HideRow"></asp:TextBox>
                                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="HideRow"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="TableCell8" runat="server" CssClass="MainTD" Width="25%">
                                                        <input type="button" onclick="FnUsersListPopUp()" class='RsnPUP' tabindex="9">
                                                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="HideRow"></asp:TextBox>
                                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="HideRow"></asp:TextBox>
                                                    </asp:TableCell>
                                                    <asp:TableCell ID="TableCell9" runat="server" CssClass="MainTD" Width="25%">
                                                        <input type="button" onclick="FnUsersListPopUp()" class='RsnPUP' tabindex="9">
                                                        <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="HideRow"></asp:TextBox>
                                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="HideRow"></asp:TextBox>
                                                    </asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%-------------------------------------------------%>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="RemarksTbl" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                                    Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" Width="160px" Style="font-weight: bold;">
                                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                                TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                            <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
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
            <asp:TableRow>
                <asp:TableCell  CssClass="MainFoot"> 
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
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" ID="rr" Visible="false">
                <asp:TableCell>
                    <asp:TextBox ID="TempVal" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="VAl1">
                    <asp:Table ID="valTbl" runat="server">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById("DescTxt").focus()

var RevCount ,AppCount
function HoldPreVal()
{
RevCount =document.getElementById("NoOFRevTxt").value
AppCount =document.getElementById("NoOFAppTxt").value
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
				alert("Characters Exceeding Limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
		
		
	function CheckRevNum(){
	var val =document.getElementById("NoOFRevTxt").value
		if(val!=""){
		      if( val>3)
	        {
		    alert("Enter Positive Numeric Value Greater Than Or Equal To 0 \n And Less Than 4 For: "+document.getElementById("NoOFRevTd").innerHTML )
		      document.getElementById("NoOFRevTxt").value=RevCount
		      page_IsValid=false;
		      return false;
				}
				else{
				   page_IsValid=true;
//		 	document.Form1.submit();
				return true;
				}}
		}		
		
	function CheckAppNum(){
		var val =document.getElementById("NoOFAppTxt").value
		if(val!=""){
		   if(val>3)
		    {
		        alert("Enter Positive Numeric Value Greater Than Or Equal To 0 \n And Less Than 4 For: "+document.getElementById("NoOFAppTd").innerHTML )
		        document.getElementById("NoOFAppTxt").value =AppCount
		        page_IsValid=false;
		        return false;
			}
			else{
				page_IsValid=true;
//		 	    document.Form1.submit();
				return true;
			}}
		}		
//-->

function RevApprowsCheck(src,args){
//debugger
    var NoofRev=document.getElementById("NoOFRevTxt").value;
    var NoofApp=document.getElementById("NoOFAppTxt").value;

    if((NoofRev<<%=RevtblRowCnt %>)||(NoofRev><%=RevtblRowCnt %>)){
    document.getElementById("NoOFRevTxt").value=<%=RevtblRowCnt %>;
    }

    if((NoofApp<<%=ApptblRowCnt %>)||(NoofApp><%=ApptblRowCnt %>)){
    document.getElementById("NoOFAppTxt").value=<%=ApptblRowCnt %>;
    }

}
</script>

</html>
