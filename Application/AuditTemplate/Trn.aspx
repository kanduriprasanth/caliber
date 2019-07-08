<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AuditTemplate.Trn" %>

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
	
function RefreshPage()
{
    Form1.submit();
}

function FnCheckChkbox(Cnt)
{
    var SelAr = new Array();
    for(var i=0;i<Cnt;i++)
    {
        if(document.getElementById("Chk_" + i).checked==true)
        {
            SelAr.push ($("label[for='" + "Chk_" + i + "']").html());//document.getElementById("Chk_" + i).offsetParent.all[i].innerText
        }
    }
    $("input[id='ObsTxt']").val(SelAr.join(","));
}
function Check(i)
{


 document.all("TxtIdTxt").value=i
document.all("TxtCnageTxt").value=document.all("Insptxt"+i).value
//alert(document.all("TxtCnageTxt").value)
//document.forms(0).submit(); 
}
	//-->
	
	 function fnOpenPopUp(){
  SetPopDimensions()
    	var pageURL = "DecisionPopUp.aspx"
   var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
	
	function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        
        var Transcode=$("#TranscodeTxt").val();
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function FnDocpopup()
    {
        var UParam = "";
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            {
               
                document.all("DocId").value=DocId ;
                var DocDescArr = new Array();
                DocDescArr = DocDesc.split("$@$");
                DocDesc = DocDescArr.join ('; ');
                document.all("DocNameLbl").innerHTML=document.all("DocName").value=DocDesc;
             
            }
           
            function OkRet_OpenDMSPopUp(UParam)
            {
               
            }
            
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
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
                         <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="HeaderCodeTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="HeaderCodeTxt" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" oncontextmenu = "return (false)" onkeypress="RestrictSpecialChar()" OnMouseDown="return noCopyMouse2(event);" onkeydown="return noCopyKey(event);"
                                     MaxLength="25" Width="200px" AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DeptTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="DeptDDL" runat="server" AutoPostBack="true" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ProcessTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ProcessDDL" runat="server" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--'Commented by P Suresh	--%>
                        <%--<asp:TableRow >							
								<asp:TableCell ID="AtcHFleTd" CssClass="MainTD">File Attachments</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								 <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                 <asp:Label ID="DocNameLbl" runat=server CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox> 
								</asp:TableCell>
							</asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell ID="ReqTd" CssClass="MainTD">Checklist Type?</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="ReqRbl" AutoPostBack="true" CssClass="RBList" runat="server"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Internal</asp:ListItem>
                                    <asp:ListItem Value="2">External</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">New Observation Field(s)</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:HyperLink NavigateUrl="#" ID="HyperLink1" ForeColor="blue" runat="server" Text="Register New Observation Fields"
                                    onclick="fnOpenPopUp()"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="hideRow">
                            <asp:TableCell CssClass="MainTD" ID="TableCell1" Width="45%">Select Common Observations</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="ObsFldTD">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SessionTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SessionTd" Width="45%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="SessionTxt" runat="server" AutoPostBack="true" CssClass="TxtCls"
                                    MaxLength="2" onblur='IsDigit2(event,0);' onkeypress="return IsDigit1(event)" onMouseOut="return IsDigit1(event)" onmousedown="return noCopyMouse(event)" onkeydown='return noCopyKey(event);' Width="35px" AccessKey="C" TabIndex="3"></asp:TextBox>
                                <asp:TextBox ID="SessionDataTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                                <asp:TextBox ID="SubSessionTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                                <asp:TextBox ID="SubSessionDataTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                                <asp:TextBox ID="Control4IdText" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LotInfoTr" CssClass="HideRow" Width="45%">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="LotInfoTab" runat="server" CssClass="SubTable" Width="100%">
                                </asp:Table>
                                <asp:TextBox ID="TxtIdTxt" runat="server" Width="0" Height="0"></asp:TextBox>
                                <asp:TextBox ID="TxtId1Txt" runat="server" Width="0" Height="0"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Added by P Suresh--%>
                        <asp:TableRow>  
                            <asp:TableCell ID="AtcHFleTd" CssClass="MainTD">File Attachments</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP' style="height: 20px">
                                <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
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
                                <uc1:esignobj id="EsignObj1" runat="server" visible="false"></uc1:esignobj>
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
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" 
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
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
                    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ObsTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TxtCnageTxt" CssClass="hiderow" AutoPostBack="true" runat="server"
                                    Width="0" Height="0"></asp:TextBox>                    
                    <asp:HiddenField runat="server" ID="hf1"/>
                    <asp:HiddenField runat="server" ID="hf2"/>
                </asp:TableCell>
                <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">

//Back button validation ---Start---
//	function Hdnfieldchk(src,args)
//	{
////	        IsAllValid(src,args)
//	       if(document.getElementById("ReqRbl_0").checked == true)
//		   {
//		        if(document.getElementById("hf1").value == document.getElementById("SessionTxt").value &&  document.getElementById("SessionTr").className == "")
//		        {
//	        	    args.IsValid=true;
//		        }
//		        else
//		        {
//    	            document.getElementById("SessionTxt").value = document.getElementById("hf1").value
//    	            document.getElementById("SessionTr").className = ""
//    	            return args.IsValid=false;
//		        }
//		   }
//		   else if(document.getElementById("ReqRbl_1").checked == true)
//		   {
//		       document.getElementById("SessionTxt").value = ""
//		       if(document.getElementById("SessionTr").className == "")
//		       {
//		            document.getElementById("SessionTr").className == "HideRow"
//		            document.getElementById("LotInfoTr").className == "HideRow"
//		            document.getElementById("SessionTxt").value = ""
//		            document.getElementById("ReqRbl_1").checked = false
//		            return args.IsValid=false;
//		       }
//		   }
//	 }
	 
	  function IsAllValid(src,args)
      {
            if(document.getElementById("hf1").value == document.getElementById("SessionTxt").value && document.getElementById("ReqRbl_0").checked == true)
            {
               if(document.getElementById("SessionTr").className == "")
               {
                    args.IsValid=true;
               }
               else
               {    
                    document.getElementById("ReqRbl_1").checked = true
                    document.getElementById("ReqRbl_0").checked = false
                    return args.IsValid=false;
               }     
            }
            else if(document.getElementById("ReqRbl_1").checked == true)
            {   
                 document.getElementById("SessionTr").className = "HideRow"
                 document.getElementById("LotInfoTr").className = "HideRow"
            }
            else if(document.getElementById("ReqRbl_0").checked == true)
            {
                 document.getElementById("SessionTxt").value = document.getElementById("hf1").value;
    	         document.getElementById("SessionTr").className = "";
    	         document.forms(0).submit();
    	         return args.IsValid=false;
            }
//            else if(document.getElementById("ReqRbl_0").checked == true)
//            {
//                if(document.getElementById("SessionTr").className != "")
//                {
//                    document.getElementById("SessionTr").className = ""
//                    document.getElementById("ReqRbl_0").checked == false
//                    document.getElementById("ReqRbl_1").checked == false
//                    return args.IsValid=false;
//                }
//                else if(document.getElementById("SessionTr").className == "")
//                {
//                    if(document.getElementById("SessionTxt").value=="" || document.getElementById("SessionTxt").value==undefined)
//                    {
//                        return args.IsValid=false;
//                    }
//                    else if(document.getElementById("SessionTxt").value!="")
//                    {
//                        if(document.getElementById("LotInfoTr").className!="")
//                        {
//                            return args.IsValid=false;
//                        }
//                    }
//                }
//            }
//            else if(document.getElementById("ReqRbl_1").checked == true)
//            {
//               if(document.getElementById("SessionTr").className == "")
//                {
//                    document.getElementById("SessionTr").className = "HideRow"
//                    document.getElementById("LotInfoTr").className = "HideRow"
//                    return args.IsValid=false;
//                }
//            }       
        }
	 //Back button validation ---END---
	 
//	function UpdtRbVal()
//	{
//		   if(document.getElementById("SessionTxt").value != "")
//		   {
//		        if(document.getElementById("hf1").value == document.getElementById("SessionTxt").value)
//		        {
//	        	    args.IsValid=true;
//		        }
//		        else
//		        {
//    	            document.getElementById("SessionTxt").value = document.getElementById("hf1").value
//		            return args.IsValid=false;
//		        }
//		   }
//	 }
	
function  NumValidation1(src,errMsg)
{
    var val = document.getElementById("SessionTxt").value 
    if(val!='')
    {
        if(isNaN(val))
        {
            alert('Enter Only Positive Integer Values')
            document.getElementById("SessionTxt").value = ""
            document.getElementById("LotInfoTr").className == "HideRow"
            document.getElementById("SessionTxt").focus()
            document.forms(0).submit()
            return(false)
        }
        if(val=='0' || val=='00' || val=='-0' || val<0 || val.indexOf(".")!=-1) 
        {
            alert("Zero(0) is not Allowed")
            document.getElementById("SessionTxt").value = ""
            document.getElementById("LotInfoTr").className == "HideRow"
            document.getElementById("SessionTxt").focus()
            document.forms(0).submit()
            return(false)
        }
    }	
}	

function  ChkZero(src,args)
{
    var val = document.getElementById("SessionTxt").value
    if(val=='0' || val=='00' || val=='-0' || val<0 || val.indexOf(".")!=-1) 
    {
        document.getElementById("SessionTxt").value = ""
        document.getElementById("LotInfoTr").className == "HideRow"
        document.getElementById("hf1").value = document.getElementById("SessionTxt").value;
        return args.IsValid=false;
    }
}

function  ChkZero2(src,args)
{
    for (i = 1; i <= document.getElementById("SessionTxt").value; i++) {
        if (document.getElementById("Insptxt" + i).value == "0" || document.getElementById("Insptxt" + i).value == "00") {
            document.getElementById("Insptxt" + i).value = ""
            return args.IsValid=false;
        }
    }
}
//------------No of Topics required validation Start---	
 function noCopyMouse(e) {
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
       
        if(isRight) {
            var AvailableVal = window.event.srcElement.value;   
            if(isNaN(AvailableVal)==true || AvailableVal=='')
            window.event.srcElement.value="";
            window.forms(0).submit();
            return false;
        }
    }

 function IsDigit2(e,Value)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
    {
        var AvailableVal = window.event.srcElement.value;   
        if(isNaN(AvailableVal)==true || AvailableVal=='')
        window.event.srcElement.value="";
        NumValidation1()
        //window.forms(0).submit();
    }
   


    function noCopyKey(e) {
        var forbiddenKeys = new Array('c','x','v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;


        if(window.event)
            isCtrl = e.ctrlKey
        else
            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;
   

        if(isCtrl) {
            for(i = 0; i < forbiddenKeys.length; i++) {
                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                    return false;
                }
            }
        }
     
    }
   
       function IsDigit1(e)  ///Function To check Numeric values
       {
            if(isNaN(document.getElementById("SessionTxt").value))
            {
                document.getElementById("SessionTxt").value = ""
                return false
            }
        if(e.shiftKey ==true)
        return false;
        var KeyIdentifierMap =
        {
            End            : 35,
            Home        : 36,
            Left        : 37,
            Right        : 39,
            'U+00007F'    : 46        // Delete
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
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab
            )
 
        if(document.getElementById("SessionTxt").value != "")
        {
            window.forms(0).submit();
        }
 
    }
    
//------------No of Topics required validation end---	
	
    function  NumValidation(src,errMsg)
    { 
        var Id=src.substr(7,src.length)
        var val = document.getElementById(src).value
        var count = document.getElementById("TxtIdTxt").value 

        if(val!='')
        {
            if(isNaN(val))
            {
                alert('Enter Only Positive Integer Value For: No. Of Questions '+Id)
                document.getElementById(src).value = ""
                document.getElementById(src).focus()
                document.forms(0).submit()
                return(false)
            }

            if(val=='0' || val=='00' || val=='-0' || val<0 || val.indexOf(".")!=-1) 
            {
                alert('Zero(0) is not Allowed For: No. Of Questions '+ Id)
                document.getElementById(src).value = ""
                document.getElementById(src).focus()
                document.forms(0).submit()
                return(false)
            }
        }
    }
	 	
	 
function Validatesession(src,args)
{
var counter=0

var i = 0;
var valsub
var SessionVal = document.getElementById("SessionTxt").value;

var flag = 0;
var k = 0

for(i=1; i<=SessionVal; i++)
{

    if (document.getElementById("Insptxt" + i).value != "")
{


   
    flag=1;
    valsub = document.getElementById("Insptxt" + i).value
	k=0
	for(k=1;k<valsub;k++)
				{
				    if (document.getElementById("Dytxt" + i + "_" + k).value != "")
						{
						 
							flag=1;
						}
				}
				
	}

counter=counter+1
}


if(flag==0)
{   
args.IsValid=false;
Page_IsValid=false;
  
}
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

<script language="javascript">
<!--
//----------------for Description not to exceed 100 charecters --------------------------------------------
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

 
 function fnOnlyNumericals(){
	var KC = window.event.keyCode
	if((KC<45 || KC>57) || KC==47 ){
	window.event.cancelBubble = true;	
	return(false);
	}
}
 
 
//-----------------------For description limit upto 250----
var taMaxLength1 = 1500
function taLimit1() {
		
	
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount1() {
		
			 
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}		
	
	
	function fnSetToReasons(argValue)
{   
document.getElementById('RemarksTxt').value = argValue
}		

    //Restricting Special Characters

    function RestrictSpecialChar(e) {
        //get the keycode when the user pressed any key in application
        var exp = String.fromCharCode(window.event.keyCode)

        //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
        var r = new RegExp("[,$#*@^&!]", "g");

        if (exp.match(r) != null) {
        window.event.keyCode = 0
        alert(" , $ # * @ ^ & ! These Characters Are Not Allowed ")
        return false;
        }
    }
    
    //Function To restrict  the  Copy  of  data
    //onmousedown
    function noCopyMouse2(e) {
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
        
        if(isRight) {
            return false;
        }
    }
        function noCopyKey(e) {
        var forbiddenKeys = new Array('c','x','v');
        var keyCode = (e.keyCode) ? e.keyCode : e.which;
        var isCtrl;


        if(window.event)
            isCtrl = e.ctrlKey
        else
            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;


        if(isCtrl) {
            for(i = 0; i < forbiddenKeys.length; i++) {
                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                    return false;
                }
            }
        }
    }
    //------------------------------
//----------------------------------------------------------------------------------------------->
</script>

</html>
