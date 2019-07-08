<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="ENoteBook.Trn" %>

<%@ Register Src="WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>
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

    <script language="javascript">
   // document.oncontextmenu=new Function("return false")
 	function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.getElementById(EleId);
	}

	function Fn_GetAllE(EleId,ParentObject)
	{
	    var RetObj =Fn_GetAllEs(EleId,ParentObject)
	    return RetObj.length ? RetObj[0] : RetObj
	}

	function Fn_GetAllEs(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.all(EleId);
	}
function fnOpen_eNoteBookPopup()
{
    var pageURL = "ExistingENoteBooksPopup.aspx"
    var PWidth=600
    var PHeight=460
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
	var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
	var winObj = window.open(pageURL,'eNoteBookfields',features)
	if(winObj.opener ==null)winObj.opener = self;
	winObj.temp="asdf"
}

function fnSetVal_eNoteBookPopup(BaseId,Desc)
{
debugger
    Fn_GetE("ENBIDTxt").value =BaseId
    Fn_GetE("ExistingMastDescLbl").innerText = Desc
    Fn_GetE("ExistingMastDescTxt").value = Desc
}

function Submitpage()
{
    if(Fn_GetE("ENBIDTxt").value !="")
    {
       __doPostBack('ENBIDTxt','')
    }
}
    </script>

    <script language="javascript">

    function ShowHdrFtrSel(Type,cnt)
    {
    var SelVal =0
    var RBtnLst =  Fn_GetE(Type+ "RBtn" + cnt).getElementsByTagName("input")
    for(var i=0;i<RBtnLst.length;i++)
    {
        if(RBtnLst[i].checked == true)
        {
            SelVal = parseInt(RBtnLst[i].value);
        }
    }
    Fn_GetE(Type + "Tr" + cnt).className=(SelVal ==2)? "MainTD" : "HideRow";
    }

    </script>

    <script type="text/javascript">
var SecCount =""
var ENBTType = <%=ENBTType%>
function HoldPreVal()
{
SecCount =Fn_GetE("NoOfRowsTxt").value
}
function CheckNum(){
	        var val =Fn_GetE("NoOfRowsTxt").value
	        page_IsValid=false;
		    if(val!="")
		    {
		        if(val==0)
	            {
		            alert("Enter Positive Numeric Value Grater Than 0 For: "+Fn_GetE("NoOfSectionsTd").innerHTML ) // \n and less Than 10 For: "+Fn_GetE("NoOfSectionsTd").innerHTML )
		            Fn_GetE("NoOfRowsTxt").value=SecCount
		            page_IsValid=false;
		            return false;
				 }
                if(ENBTType==3)
                {   
                    if(Fn_GetE("NoOfRowsTxt").value < SecCount)
                    {
                        alert("Enter Positive Numeric Value Grater than" + SecCount +" For: "+Fn_GetE("NoOfSectionsTd").innerHTML ) // \n and less Than 10 For: "+Fn_GetE("NoOfSectionsTd").innerHTML )
	                    Fn_GetE("NoOfRowsTxt").value=SecCount
	                    page_IsValid=false;
	                    return false;
	                }
	                 else
	                 {
				        page_IsValid=true;
				        return true;
				    }
                }
		         else{
				   page_IsValid=true;
				return true;
				}
			}
		      return false;
		    }		

    function fnSetToReasons(argValue)
	{  
   		//document.Form1.RemarksTxt.value = argValue
   		Fn_GetE("RemarksTxt").value=argValue
	}
	
	
//	function FnAllowNumVal()
//{
//    var e =event.keyCode
//    if((e ==8) || (e ==46)) {}//Backspace and delete keys
//    else if((e ==37) || (e ==39)) {}//Left and right Navigation Keys
//    else if(e ==16) {}//(e ==32) || (e ==16)) {} //Space and Tab Keys
//    else if(e ==32){return false}
//    else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
//    {return false}
//}
    </script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
		
    </script>

    <script type="text/javascript">

 var cnt
 var FldType =""
function HeaderFooterPopUpFn(Type,count)
{
    cnt = count
    FldType = Type
    var pageURL;
    pageURL ="HeaderFooterListPopUp.aspx?Type=" + Type
    
    var PWidth=600
    var PHeight=460
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 

 SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
}

function fnGetIDTitle(KdIdVal,KdDesc,HFTAulIDVal)
    { 
      Fn_GetE(FldType + "Txt" + cnt).value=KdDesc
      Fn_GetE(FldType + "Lbl" + cnt).innerHTML =KdDesc

      Fn_GetE(FldType + "IdTxt" + cnt).value=KdIdVal
      Fn_GetE(FldType + "AulIdTxt" + cnt).value=HFTAulIDVal
    }
    function FnAllowNumVal(e)
    {
    
     if(e.shiftKey ==true)
        return false;
        var KeyIdentifierMap =
        {
            End			: 35,
            Home		: 36,
            Left		: 37,
            Right		: 39,
            'U+00007F'	: 46		// Delete
        } 
        if ( !e )
        e = event ;

        var AvailableVal = window.event.srcElement.value.indexOf(".")
        var iCode = ( e.keyCode || e.charCode );

        if((iCode == 46) && (AvailableVal != -1))
        return false;
        if((iCode == 46) && (window.event.srcElement.value == ""))
        return false;

        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode ==39 ) return false;
        return (
            ( iCode >= 48 && iCode <= 57 )		// Numbers
            || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
            || iCode == 8						// Backspace
            || iCode == 46						// Delete
            || iCode == 9	                     // Tab
            || (iCode>=96 && iCode <= 105)       //Numbers            
            )
	    
//        var e =event.keyCode
//        if(event.ctrlLeft == true){return false}
//        if(event.shiftLeft == true){return false}
//        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
//        else if(e ==32){return false}
//        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
//        {return false}
    }
//    function FnAllowNumVal()
//    {
//        var e =event.keyCode
//        if(event.ctrlLeft == true){return false}
//        if(event.shiftLeft == true){return false}
//        else if((e ==8) || (e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)) {}
//        else if(e ==32){return false}
//        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
//        {return false}
//    }

    </script>

<script language=javascript >

var __OldVal 
var __MinimumVal = <%=OldSectionsCnt%>
function SaveCurrentVal()
{
    __OldVal = window.event.srcElement.value
    if(__OldVal+ '' == "")
        __OldVal =0
}
function CheckCurrentVal()
{
var SrcObj = window.event.srcElement
    var NewVal = SrcObj.value
     NewVal = (NewVal == "") ? 0 : parseInt(NewVal)
    if(__MinimumVal > NewVal)
    {
        alert("Deleting Existing Sections Is Not Allowed")
        SrcObj.value = __OldVal
        SrcObj.focus()
    }	
    if(__MinimumVal <= NewVal)
	{
	   setTimeout('__doPostBack(\'NoOfRowsTxt\',\'\')', 0)
	}
}
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
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="ExistingPopupTr" CssClass ="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan =3>
                            <asp:Literal ID="ExistingPopupCapLtl" runat="server"></asp:Literal>&nbsp;&nbsp;
                            <input type="button" class='RsnPUP' onclick="fnOpen_eNoteBookPopup()" style="background-image:url(../IMAGES/Copyfromexisting.jpg); "/>
                            <asp:Label ID="ExistingMastDescLbl" runat="server"></asp:Label>
                            <asp:TextBox ID="ExistingMastDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
                            </asp:TableCell>
                         </asp:TableRow>
                         
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="eBookTypeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="eBookTypeDdl" runat="server" CssClass="RBList" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--   ---------------------------------------------------------------------	--%>
                        <asp:TableRow ID="BHeaderTypeTr" CssClass="MainTD">
                            <asp:TableCell ID="BHeaderTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="160px"></asp:TableCell>
                            <asp:TableCell ID="TableCell9" CssClass="MainTD" runat="server">
                                <asp:RadioButtonList ID="BHdrRBtn" runat="server" CssClass="RBList" onclick="showHeader()"
                                    RepeatDirection="Horizontal" TabIndex="3">
                                    <asp:ListItem Value="0">Not Required</asp:ListItem>
                                    <asp:ListItem Value="1">Required</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BHeaderSelTr" CssClass="HideRow" runat="server">
                            <asp:TableCell ID="BHeaderSelTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="160px"></asp:TableCell>
                            <asp:TableCell ID="TableCell5" CssClass="MainTD" runat="server">
                                <input class='RsnPUP' onclick="HeaderFooterPopUpFn('Header','')" type="button" TabIndex="4">
                                <asp:Label ID="HeaderLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="HeaderTxt" runat="server" CssClass="HideRow" MaxLength="25" Width="200px"
                                    ReadOnly="true"></asp:TextBox>
                                <asp:TextBox ID="HeaderIdTxt" runat="server" CssClass="HideRow" MaxLength="25" Width="200px"
                                    ReadOnly="true"></asp:TextBox>
                                <asp:TextBox ID="HeaderAulIdTxt" runat="server" CssClass="HideRow" MaxLength="25"
                                    Width="200px" ReadOnly="true"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BFooterTypeTr" CssClass="MainTD">
                            <asp:TableCell ID="BFooterTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="160px">
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell11" CssClass="MainTD" runat="server">
                                <asp:RadioButtonList ID="BFooterRBtn" runat="server" CssClass="RBList" onclick="showFooter()"
                                    RepeatDirection="Horizontal" TabIndex="5">
                                    <asp:ListItem Value="0">Not Required</asp:ListItem>
                                    <asp:ListItem Value="1">Required</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BFooterSelTr" CssClass="HideRow" runat="server">
                            <asp:TableCell ID="BFooterSelTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="160px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="HeaderFooterPopUpFn('Footer','')" class='RsnPUP' TabIndex="6">
                                <asp:Label ID="FooterLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="FooterTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="FooterIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="FooterAulIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="ESignReqTd" Style="font-weight: bold;" runat="server" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell ID="ESignReqCBoxTd" runat="server" CssClass="MainTD">
                                <asp:CheckBox ID="ESignReqCBox" runat="server" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="NoOfSectionsTd" Width="100px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" Width="284px">
                                <asp:TextBox ID="NoOfRowsTxt" onkeydown="return FnAllowNumVal(event)" runat="server" CssClass="TxtCls"
                                    MaxLength="2" Width="50px" AccessKey="D" TabIndex="7" onfocusin ="SaveCurrentVal()" onfocusout="CheckCurrentVal()"> 
                                </asp:TextBox><asp:Label ID="MaxLimitLbl" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Panel ID="Panel1" Style="padding-top: 5px;" runat="server" EnableViewState="False"
                                    CssClass="MainTD">
                                    <asp:Table class="SubTable" ID="DynamicTable" runat="server" Width="100%" EnableViewState="False"
                                        align="center" CellPadding="0" CellSpacing="0" Border="0">
                                    </asp:Table>
                                </asp:Panel>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--   ---------------------------------------------------------------------	--%>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById("DescTxt").focus()

 function showHeader()
 {
    var TempObj 
    var Noofsec =Fn_GetE("NoOfRowsTxt").value
    if (Fn_GetE("BHdrRBtn_1").checked)
    {
        Fn_GetE("BHeaderSelTr").className="MainTD"
        if (Noofsec!="")
        {
            for(i=1;i<=Noofsec;i++)
            {
            TempObj = Fn_GetE("Header" + "RBtn" + i + "_0")
                if(TempObj != null)
                {
                    TempObj.disabled =false;
                }
            }
        }
    }
    else 
    {
        Fn_GetE("BHeaderSelTr").className="HideRow" 
        for(i=1;i<=Noofsec;i++)
        {
            TempObj = Fn_GetE("Header" + "RBtn" + i +"_0")
            if(TempObj)
            {
                TempObj.disabled=true;
                TempObj.checked =false;
            }
        }
    }
}
function showFooter()
 {
    var TempObj 
    var Noofsec =Fn_GetE("NoOfRowsTxt").value
    if(Fn_GetE("BFooterRBtn_1").checked)
    {
        Fn_GetE("BFooterSelTr").className="MainTD" 
        if (Noofsec!="")
        {
            for(i=1;i<=Noofsec;i++)
            {
                TempObj = Fn_GetE("Footer" + "RBtn" + i +"_0")
                if(TempObj != null)
                {
                    TempObj.disabled =false;
                }
            }
        }
    }
    else
    { 

        Fn_GetE("BFooterSelTr").className="HideRow" 
        for(i=1;i<=Noofsec;i++)
        {
            TempObj = Fn_GetE("Footer" + "RBtn" + i + "_0" )
            if(TempObj != null)
            {
                TempObj.disabled=true;
                TempObj.checked =false;
            }
        }
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

//-->

</script>

<script type="text/javascript">

 function ValidateTemplatesWorkFlow(src,args)
    {
     var str="" 
        args.IsValid=true;
  	    Page_IsValid=true;
        if (Fn_GetE("BHdrRBtn_1").checked)
        {
            if(Fn_GetE("BHeaderTxt").value == "")
            {
                str=str+ "<%=SelValForCaption%> " + Fn_GetE("BHeaderSelTd").innerHTML + "\n -"
  	        }
        }
        if (Fn_GetE("BFooterRBtn_1").checked)
        {
            if(Fn_GetE("BFooterTxt").value == "")
            {
                str=str+ "<%=SelValForCaption%> " + Fn_GetE("BFooterSelTd").innerHTML + "\n -"
            }
        }

        if(str!="")
	    {	
	        src.errormessage=str.substring(0,str.length-3)
	        args.IsValid=false;
  	        Page_IsValid=false;  	
	    }
    }
          
    
function SectionValidater(src,args)
{
    var str="" 
    args.IsValid=true;
    Page_IsValid=true; 
    var Noofsec =Fn_GetE("NoOfRowsTxt").value
    if(Noofsec!=<%=DynmTabRowcnt%>){
  document.getElementById("NoOfRowsTxt").value=<%=DynmTabRowcnt%>;
  Noofsec =Fn_GetE("NoOfRowsTxt").value
        }
    if (Noofsec >0)
    {
        var i=1
        var Secct=0
        var SectionPreFix = "Section"
        var SectionTitle=""
        for(i=1;i<=Noofsec;i++)
        {
            Secct+=1
            SectionTitle = SectionPreFix + " " + Secct
            //For Header Radio button Selection

            var SelVal =0
            var RBtnLst =  Fn_GetE("Header"+ "RBtn" + i).getElementsByTagName("input")
            for(var j=0;j<RBtnLst.length;j++)
            {
                if(RBtnLst[j].checked == true)
                {
                    SelVal = parseInt(RBtnLst[j].value)
                    break;
                }
            }

            if(2==SelVal)
            {
                if(Fn_GetE("HeaderTxt" & i).value ="")
                {
                str=str+ "<%=SelValForCaption%> " + SectionTitle +" - " + Fn_GetE("HeaderSelCaption"+ i).innerHTML  +"\n -"
                }
            }

            SelVal=0

            RBtnLst =  Fn_GetE("Footer"+ "RBtn" + i).getElementsByTagName("input")
            for(var j=0;j<RBtnLst.length;j++)
            {
                if(RBtnLst[j].checked == true)
                {
                    SelVal = parseInt(RBtnLst[j].value)
                    break;
                }
            }

             if(SelVal !=0)
            {
                if(2==SelVal)
                {
                    if(Fn_GetE("FooterTxt" & i).value ="")
                    {
                        str=str+ "<%=SelValForCaption%> " + SectionTitle +" - " + Fn_GetE("FooterSelCaption"+ i).innerHTML  +"\n -"
                    }
                }
            }
        }
     }
    
    if(Fn_GetE("NoOfRowsTxt").value ==0)
    {
     str=str+ "Add Sections "  +"\n -"
    }
    
    if(str!="")
	{
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;  	
	}
}
</script>

</html>
