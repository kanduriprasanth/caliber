<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="Vndor.Trn" %>

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
	<!--
	RequestPrefix='<%=me.ClientID%>'
	
    function RefreshPage()
    {
        Form1.submit();
    }

	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

    function IsDigit(e)  ///Function To check Numeric values And Allow , Also
    {
        var KeyIdentifierMap =
                {
                    End: 35,
                    Home: 36,
                    Left: 37,
                    Right: 39,
                    'U+00007F': 46        // Delete
                }
        if (!e)
            e = event;

        if (e.altKey || e.ctrlKey || e.shiftKey)
            return false;

        var iCode = (e.keyCode || e.charCode);

        if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
            iCode = KeyIdentifierMap[e.keyIdentifier];
        if (iCode == 39) return false;
        return (
                    (iCode >= 48 && iCode <= 57)        // Numbers
                    || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                    || iCode == 8                        // Backspace
                    || iCode == 44                        // Delete
                    || iCode == 9                        // Tab.
                )
    }

	//-->
	
	function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val();
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" + Transcode;
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
            
            function FnOpenVendor()
            {
                 SetPopDimensions()
    
    	            var pageURL = "SupplierPopUP.aspx"
                    var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
             
                     SpWinObj = window.open(pageURL,'SpecCodes',features)
	                if(SpWinObj.opener == null) SpWinObj.opener=self;
	                SpWinObj.focus();
            }
            
             function fnCrSuppSetToCode(KfIdVal,KfLableVal, CodeLableVal, IsSrvcePr){
             var Flag=0;
             if(document.getElementById("VendIdTxt").value!=KfIdVal)
             {
                document.all("MatNameTxt").value=""
                document.all("MatNameLbl").innerHTML=""
                document.all("MatNameLblTemp").innerHTML=""
   	            document.all("MatIdTxt").value=""
   	            document.all("MatCodeTxt").value=""
   	            document.getElementById("MatAddDetTr").className="HideRow";
   	            document.getElementById("MatDesc1Txt").value="";
   	            Flag=1;
             }
             document.getElementById("VendIdTxt").value=KfIdVal
             document.getElementById("VendNameTxt").value=CodeLableVal
             document.getElementById("VendNameLbl").innerHTML=CodeLableVal
             document.getElementById("CodeTxt").value=CodeLableVal
             document.getElementById("DescTxt").value=KfLableVal
             document.getElementById("IsSrvcePr").value=IsSrvcePr
             if (KfLableVal!="")
             {
                document.getElementById("BSATr").className=""
             }
             else
             {
                document.getElementById("BSATr").className="HideRow"
             }
             document.getElementById("BSATD").innerHTML=KfLableVal
             
             if (Flag==1)
             {
                //Form1.submit();
                document.getElementById("Sbmit").click();
             }
   } 	
   
function FnOpenMaterial(){
        if(document.getElementById("VendIdTxt").value=="")
        {
            alert('Select Vendor Code');
            return false;
        }
        if(document.getElementById("MatAddDetTr").className=="HideRow")
        {
            document.all("MatIdTxt").value = ""
            document.all("MatNameTxtTemp").value = ""
            document.all("MatCodeTxtTemp").value = ""
        }
	    SetPopDimensions()
    	var pageURL = "ProductMaterialPopUp.aspx?IsSrvcePr=" + document.getElementById("IsSrvcePr").value + "&MatIds=" + document.all("MatNameLblTemp").innerHTML + "&VendId=" + document.getElementById("VendIdTxt").value;
    	PopUpWidth=600
    	PopUpHeight=400
        var features = "height="+ PopUpHeight + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
       //var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
		SpWinObj = window.open(pageURL,'SpecCodes1',features)
		if(SpWinObj.opener == null) SpWinObj.opener=self;
		SpWinObj.focus();
	}
function fnPrdCrSetToCode(KdIdVal,KfLableVal,KfLableVal2,KfCodeVal,ReqalPrd,ReqalFreq)
{
    
    if(document.all("MatIdTxtTemp").value=="" || document.all("MatIdTxt").value=="")
    {
   	    document.all("MatIdTxt").value=KdIdVal
   	    document.all("MatNameTxt").value=KfLableVal
   	    document.all("MatCodeTxt").value = KfCodeVal   
   	    
   	    document.all("MatIdTxtTemp").value=KdIdVal
   	    document.all("MatNameTxtTemp").value=KfLableVal
   	    document.all("MatCodeTxtTemp").value=KfCodeVal
   	}
   	else
   	{
   	    document.all("MatIdTxtTemp").value = document.all("MatIdTxt").value
   	    document.all("MatNameTxtTemp").value = document.all("MatNameTxt").value
   	    document.all("MatCodeTxtTemp").value = document.all("MatCodeTxt").value
   	    
   	    document.all("MatIdTxt").value=KdIdVal
   	    document.all("MatNameTxt").value=KfLableVal
   	    document.all("MatCodeTxt").value = KfCodeVal   
   	}
   	 var MatDescArr = new Array();
     MatDescArr = KfLableVal.split("#*#");
     document.all("MatDesc1Txt").value=MatDescArr.join (',');
     document.all("MatNameLbl").innerHTML=MatDescArr.join (',');
     document.all("MatNameLblTemp").innerHTML=document.all("MatIdTxt").value;
          
     var MatCodeArr = new Array();
     MatCodeArr = KfCodeVal.split("#*#");
     document.all("MatCode1Txt").value=MatCodeArr.join (',');
        
    if(KfCodeVal=="")
    {
      //Form1.submit();
      document.getElementById("Sbmit").click();
    }
 }
 
  
 function ResetVal()
 {
    var MatCodeArr = new Array();
    MatCodeArr=document.all("MatCodeTxt").value.split("#*#");
    
    var MatIdArr = new Array();
    MatIdArr=document.all("MatIdTxt").value.split("#*#");
    
    for(var i=0; i<MatCodeArr.length; i++)
    {
        if(document.getElementById("SapCodeTxt_" + MatIdArr[i])!=null)
        {
            document.getElementById("SapCodeTxt_" + MatIdArr[i]).value=document.getElementById("SapCodeLBL_" + MatIdArr[i]).innerText
            
        }
    }
    for(var i=0; i<MatCodeArr.length; i++)
    {
        if(document.getElementById("DetTxt_" + MatIdArr[i])!=null)
        {
            document.getElementById("DetTxt_" + MatIdArr[i]).value=document.getElementById("DetLbl_" + MatIdArr[i]).innerText
            document.getElementById("COmbTxt_" + MatIdArr[i]).value=document.getElementById("COmbLbl_" + MatIdArr[i]).innerText
        }
    }
    

//    for(var i=0; i<MatCodeArr.length; i++)
//    {
//    
//         if(document.getElementById("ExstVal").value!="")
//         {
//            var ValArr = new Array();
//            ValArr=document.all("ExstVal").value.split("$");
//            var ValArr1 = new Array();
//            ValArr1=document.all("DetTxt").value.split("$");
//            
//            if(document.getElementById("SapCodeTxt_" + i).value==ValArr[i])
//            {
//                document.getElementById("DetTxt_" + i).value=ValArr1[i]
//                document.getElementById("DetLbl_" + i).innerText=ValArr1[i]
//            }
//         }
//         else
//         {
//             if(document.getElementById("DetTxt_" + i)!=null)
//            {
//                if(document.getElementById("SapCodeTxt_" + i).value + '#*#' + document.getElementById("DetTxt_" + i).value!=document.getElementById("COmbTxt_" + i).value)
//                {
//                    document.getElementById("DetTxt_" + i).value=""
//                    document.getElementById("DetLbl_" + i).innerText=""
//                }
//            }
//         }
//                  
//    }

 }
//function ItemsChk(src,args)
//{
////    if (window.history.back == true)
////    {
////         document.all("MatIdTxt").value = document.all("MatIdTxtTemp").value
////    }
//  var oldval = 0;
//  if(document.all("MatNameLbl").innerHTML != "")
//  {
//    var TempArr = new Array();
//    TempArr = document.all("MatNameLbl").innerHTML.split(",");
//    var TempArr2 = new Array();
//    TempArr2 = document.all("MatNameTxt").value.split("#*#");
//    if(TempArr.length != TempArr2.length)
//    {
//        oldval = 1;
//    }
//    if(oldval != 1)
//    {
//        var tmp1 = 0;
//        for(var i=0;i<TempArr.length;i++)
//        {
//            for(var j=0;j<TempArr2.length;j++)
//            {
//                tmp1 = 1;
//                if(TempArr[i]==TempArr2[j])
//                {
//                    tmp1 = 2;
//                    break;
//                }
//            }
//            if(tmp1 == 1)
//            {
//                oldval = 1;
//                break;
//            }
//         }
//     }
//  }
//    if(document.getElementById("MatAddDetTr").className=="HideRow")
//    {
//       args.IsValid=false;
//    }
//    if((document.all("MatIdTxtTemp").value != document.all("MatIdTxt").value) && oldval==1)
//    {
//   	        document.all("MatIdTxt").value = document.all("MatIdTxtTemp").value
//   	        document.all("MatNameTxt").value = document.all("MatNameTxtTemp").value
//   	        document.all("MatCodeTxt").value = document.all("MatCodeTxtTemp").value
//   	    
//   	        var MatDescArr2 = new Array();
//            MatDescArr2 = document.all("MatNameTxt").value.split("#*#");
//            document.all("MatDesc1Txt").value=MatDescArr2.join (',');
//            document.all("MatNameLbl").innerHTML=MatDescArr2.join (',');
//            document.all("MatNameLblTemp").innerHTML=document.all("MatIdTxt").value
//          
//            var MatCodeArr2 = new Array();
//            MatCodeArr2 = document.all("MatCodeTxt").value.split("#*#");
//            document.all("MatCode1Txt").value=MatCodeArr2.join (',');
//    }
//}

function Submit()
{
    
   		//Form1.submit();
   		document.getElementById("Sbmit").click();
}
            
    function Detach()
    {
        if(typeof(fnCallESign)!="undefined")
        {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }
    }
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" autocomplete="off" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="VendCodeTD" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id="VendBtn" class="RsnPUP" runat="server" onclick="FnOpenVendor()"/>
                                <asp:Label ID="VendNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="VendIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="VendNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="BSATr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="BSACapTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="BSATD">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MatCapTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id="MatBtn" class="RsnPUP" onclick="FnOpenMaterial()" />
                                <asp:Label ID="MatNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:Label ID="MatNameLblTemp" runat="server" CssClass="HideRow"></asp:Label>
                                <asp:TextBox ID="MatIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MatIdTxtTemp" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MatNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MatCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MatNameTxtTemp" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="MatCodeTxtTemp" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="MatAddDetTr">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="MatAddDetTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TypeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="TypeRBL" runat="Server" CssClass="RBList" RepeatDirection=Horizontal>
                                    <asp:ListItem Value="1">New</asp:ListItem>
                                    <asp:ListItem Value="2">Existing</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Commented by P Suresh--%>
                        <%--<asp:TableRow> 
                            <asp:TableCell CssClass="MainTD" ID="CatTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="CatRbl" runat="Server" CssClass="RBList" RepeatDirection=Horizontal>
                                    <asp:ListItem Value="1">Domestic</asp:ListItem>
                                    <asp:ListItem Value="2">Overseas</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="FileAttachTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type=button id="DmsBtn" class="RsnPUP" onclick="FnDocpopup()" />
                                <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="HideRow"></asp:TextBox>
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
                        <asp:TableRow id="OthTr">								
								<asp:TableCell CssClass="MainTD" ID="OthTd" columnspan=2>       
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
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
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
                        <asp:TextBox ID="IsSrvcePr" runat="server"></asp:TextBox>  
                        <asp:TextBox ID="MatCode1Txt" runat="server"></asp:TextBox> 
                        <asp:TextBox ID="MatDesc1Txt" runat="server"></asp:TextBox> 
                        <asp:Button ID="Sbmit" runat="server" CausesValidation="false" />  
                        <asp:TextBox ID="ExstVal" runat=server></asp:TextBox>        
                        <asp:TextBox ID="DetTxt" runat=server></asp:TextBox>              
                        <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>
                        <%--<asp:TextBox ID="ChkBsaTxt" runat="server"></asp:TextBox>--%>
                </asp:TableCell>
                <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
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
			
			
			setTimeout("ResetVal()",100);
			
//-->
</script>

</html>
