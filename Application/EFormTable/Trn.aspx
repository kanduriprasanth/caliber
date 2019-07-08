<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="EFormTable.Trn" MaintainScrollPositionOnPostback="true" %>

<%@ Register TagPrefix="uc1" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>

<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>' 
    //document.oncontextmenu=new Function("return false")
    document.ondragstart = new Function("return false")
    
    function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}
	//-->
    function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}
        if(event.shiftKey ==true){return false}
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
/*
    function FnAllowNumVal()
    {
        if(event.ctrlLeft==true || event.shiftLeft == true){return false}
        var e =event.keyCode
        if(e==16||e==32||(e>=106&&e<=111)){return false}
        if((e==37)||(e==39)||(e==8)||(e==46)||(e==9)||((e>=65)&&(e<=90))){}
        else if((String.fromCharCode(e)+'').match(/^[0-9]/) ==null)
        {
           return false
        }
    }

    function FnAllowAlphaNumVal()
    {
        if(event.ctrlLeft==true || event.shiftLeft == true){return false}
        var e =event.keyCode
        if(e==16||e==32||(e>=106&&e<=111)){return false}
        if((e==37)||(e==39)||(e==8)||(e==46)||(e==9)||((e>=65)&&(e<=90))){}
        else if((String.fromCharCode(e)+'').match(/^[0-9A-Za-z]/) ==null)
        {
           return false
        }
    }*/

function FnAllowAlphaNumVal()
{
    var e =event.keyCode
    if(event.ctrlLeft == true){return false}
    if(e==16 || e ==32){return false}
    else if((e ==37)||(e== 39)||(e ==8)||(e== 46)||(e== 9)||((e >=65) && (e <=90))||(e>=96 && e <= 105)){}
    else if((e >=48) && (e <=57))
    {
        if(event.shiftLeft ==true)
            {return false}
    }
    else{return false}
}

function CheckVal()
{
    var elementObj = window.event.srcElement
    var elementVal = elementObj.value
    var NonOtherCharStr = elementObj.value.replace(/[^A-Za-z0-9]/gi,'')
    var OtherCharStr = elementObj.value.replace(/[A-Za-z0-9]/gi,'')
    if(elementVal !="")
    {
        if(elementVal != NonOtherCharStr)
        {
            alert("Special Characters '" + OtherCharStr + "' are Not Allowed!")
            elementObj.value =""
            elementObj.focus()
        }
        else
        {
            if(!isNaN(elementVal.substr(0,1)))
            {
                if(elementObj.id == "CodeTxt")
                {
                    alert(document.getElementById("CodeTd").innerHTML + "<%=NumNotAl1owCaption%>".substring(10))
                }
                else
                {
                    alert("<%=Application("ENB126_" & Session("LANG"))%>" + "<%=NumNotAl1owCaption%>".substring(10))
                }
                elementObj.focus()
                elementObj.select()
            }
        }
    }
}
/*
function CheckVal()
{
    var elementVal = window.event.srcElement
    if(elementVal.value !="")
    {
        if(!isNaN(elementVal.value.substr(0,1)))
        {
            if(elementVal.id == "CodeTxt")
            {
                alert(document.getElementById("CodeTd").innerHTML + "<%=NumNotAl1owCaption%>".substring(10))
            }
            else
            {
                alert("<%=Application("ENB126_" & Session("LANG"))%>" + "<%=NumNotAl1owCaption%>".substring(10))
            }
            
            elementVal.focus()
            elementVal.select()
        }
    }
}
*/
    </script>

<script language =javascript >

function fnOpen_TblPopup()
{
    var pageURL = "TablesListPopup.aspx"
        Fn_OpenPopUp(pageURL)

//	var features = "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50"
//	var winObj = window.open(pageURL,'Tablefields',features)
//	if(winObj.opener ==null)winObj.opener = self;
//	winObj.temp="asdf"
}

function fnSetVal_TblPopup(BaseId,Desc)
{
    document.getElementById ("TblIDTxt").value =BaseId
}

function Submitpage()
{
    if(document.getElementById ("TblIDTxt").value !="")
    {
       __doPostBack('TblIDTxt','')
    }
}
var __OldVal 
var __MinimumVal = <%=OldEntryFldsCnt%>
var _TransType= <%=TransType %>
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
       if (_TransType != 2)
       {
        alert("Deleting Existing Fields Is Not Allowed")
        SrcObj.value = __OldVal
        SrcObj.focus()
       }
       else
       {setTimeout('__doPostBack(\'EntryFieldsCountTxt\',\'\')', NewVal)} 
    }	
    if(__MinimumVal <= NewVal)
	{
	   setTimeout('__doPostBack(\'EntryFieldsCountTxt\',\'\')', 0)
	}
}


function validateeFromType(src,args)
{
    var str="" 
    args.IsValid=true;
    Page_IsValid=true;
    
    if ( (document.getElementById("EntryFieldsCountTxt").value ==0) || (document.getElementById("EntryFieldsCountTxt").value == "") )
    {
        src.errormessage="Entry Fields Must be Greater Than 0"
        args.IsValid=false;
        Page_IsValid=false;    
    }
    
}    
 
</script>

</head>
<body ms_positioning="GridLayout">
    <form id="s" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server"  Width="98%" BackColor="White">
            <asp:TableRow Height="20px" runat="server">
                <asp:TableCell CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                <input class="HideRow" onclick="fnOpen_TblPopup()" style="border-right: gray 1px groove;
                    border-top: gray 1px groove; font-weight: bold; border-left: gray 1px groove;
                    border-bottom: gray 1px groove" type="button" value="<<" >
                    <asp:TextBox ID="TblIDTxt" runat="server" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="Center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell runat="server"></asp:TableCell>
                            <asp:TableCell runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2" runat="server">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd"  runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold;"  runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="20" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass ="HideRow" runat="server">
                            <asp:TableCell CssClass="MainTD" ID="PKeySelTD" Style="font-weight: bold;"  runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:DropDownList ID="PKeySelDDl" Width="160px" runat="server" TabIndex="3" >
                                    <asp:ListItem Value="" >&lt;Select&gt;</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow runat="server">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CategoryTd" runat="server"  ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:DropDownList ID="CategoryDDl" runat="server" AutoPostBack=True>
                                </asp:DropDownList>
                                <asp:Label runat="server" ID="Categorylbl"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow runat="server">
                            <asp:TableCell CssClass="MainTD" ID="ETabTypeTd" Style="font-weight: bold;"  runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:DropDownList ID="ETabTypeDDL" Width="160px" runat="server" TabIndex="3" AutoPostBack=True >
                                    <asp:ListItem >&lt;Select&gt;</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label runat="server" ID="ETabTypelbl"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD" runat="server">
                            <asp:TableCell ID="EntryFieldsTd" CssClass="MainTD" Style="font-weight: bold;" runat="server"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" runat="server">
                                <asp:TextBox ID="EntryFieldsCountTxt" onkeydown="return FnAllowNumVal()" Width="35px" CssClass="TxtCls" runat="server"  TabIndex="5" onfocusin ="SaveCurrentVal()" onfocusout="CheckCurrentVal()" MaxLength =2 oncopy="return false" Onpaste="return false" Oncut="return false"></asp:TextBox>
                                <asp:Literal ID="ltlRemoved" runat="server" Visible="False" />
                                <asp:TextBox ID="OldEntryFieldsCnt" runat =server CssClass ="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EntryFieldsTr" CssClass="MainTD" runat="server">
                            <asp:TableCell ColumnSpan="2" ID="TableCell1" runat="server">
                                <asp:Table ID="EntryFieldsTbl" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="Center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" runat="server">
                                <asp:Table ID="RemarksTbl" runat="server" CellPadding="0" CellSpacing="1" CssClass="SubTable"
                                    Width="100%">
                                    <asp:TableRow runat="server">
                                        <asp:TableCell CssClass="MainTD" Width="160px" Style="font-weight: bold;" runat="server">
                                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" runat="server">
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
                                padding-bottom: 0px" runat="server">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="False">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell runat="server">
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" >
                <asp:TableCell CssClass="MainFoot" runat="server">
                    <asp:Table runat="server"  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="Center" ID="Table2" BorderWidth="0px">
                        <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell runat="server"></asp:TableCell>
                            <asp:TableCell runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow runat="server">
                            <asp:TableCell CssClass="MainFoot" runat="server">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70px">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right" runat="server">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" ID="rr" Visible="False">
                <asp:TableCell runat="server">
                    <asp:TextBox ID="TempVal" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                <asp:TableCell ColumnSpan="2" ID="VAl1" runat="server">
                    <asp:Table ID="valTbl" runat="server">
                        <asp:TableRow CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                            </asp:TableCell>
                            <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
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

var taMaxLength = 250
function taLimit() 
{
	var taObj=window.event.srcElement;
	if (taObj.value.length==taObj.maxLength*1) return false;
}

function taCount() 
{
	var taObj=window.event.srcElement;			
	if (taObj.value.length>taMaxLength*1)
	{
		taObj.value=taObj.value.substring(0,taMaxLength*1);
		alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
	}
}		

//-->
</script>

<script language="javascript">
//    function BindingFieldsValidation(src,args)
//    {
//        var s=document.getElementById("BindingFieldsList_OptValues").value
//        var S1 = document.getElementById ("EntryFieldsCountTxt").value

//        var Testarr  
//        if(s=="" && (S1=="0" || S1==""))
//        {
//            src.errormessage= "Enter Value For: " + document.getElementById("EntryFieldsTd").innerText   // "<%=NoColumnsMessage%>"
//            args.IsValid=false;
//            return(false);
//        }
//        else
//        {
//            return(true);
//        }
//    }
</script>

<script language="javascript">
 
</script>

<script language="javascript">
  
function VerifyUniueNess(src,args)
{
    var str="" 
    args.IsValid=true;
    Page_IsValid=true;
/*
    var BFieldList=document.getElementById("BindingFieldsList_OptTexts").value
    var EFieldCount =parseInt(document.getElementById ("EntryFieldsCountTxt").value)
    var BFieldTextArr = new Array()
    var EFieldTextArr = new Array()
    var InvalFieldIds = new Array()

    if(BFieldList != "")
    {
        BFieldTextArr = BFieldList.split("#*#")
    }

    if(EFieldCount >0)
    {
        for(var i=1;i<=EFieldCount;i++)
        {   
            for(var j=1;j<=EFieldCount;j++)
            {
                if(i < j)
                {
                    var flag =0
                    for(var k=0;k<InvalFieldIds.length;k++)
                    {
                        if(InvalFieldIds[k] == i)
                        {
                            flag =1
                        }
                    }
                    if(flag == 0)
                    {
                        if(document.getElementById ("EFldCodeTxt"+i).value !="")
                        {
                            if(document.getElementById ("EFldCodeTxt"+i).value.toLowerCase() == document.getElementById ("EFldCodeTxt"+j).value.toLowerCase())
                            {
                                str +=  "Invalid[Already Used] Value For : " + document.getElementById ("EFldNameTd").innerHTML + " " + j + "\n -"
                                InvalFieldIds.push (i)
                            }
                            else
                            {
                                for(var c=0;c<BFieldTextArr.length ;c++)
                                {
                                    if(BFieldTextArr[c].toLowerCase() == document.getElementById ("EFldCodeTxt"+i).value.toLowerCase())
                                    {
                                    str +=  "Invalid[Already Used] Value For: " + document.getElementById ("EFldNameTd").innerHTML + " " + i + "\n -"
                                    InvalFieldIds.push (i)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    */
    if(str!="")
    {	
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;  	
    }
}

function validateeFromTab(src,args) //For back button handling
{
  var EntryFieldsTblCnt=<%=EntryFieldsTblCnt%>
  var EntryFlds=document.getElementById("EntryFieldsCountTxt").value;
  if(EntryFlds>EntryFieldsTblCnt||EntryFlds<EntryFieldsTblCnt)
  {
    document.getElementById("EntryFieldsCountTxt").value=EntryFieldsTblCnt;
  }
  
}

///added for back button issue

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

</html>
