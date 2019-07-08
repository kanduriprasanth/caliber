<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AdtrQalification.Trn" %>

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
    <script language="javascript" src="../JScript/jquery.min.js"></script> <%--Added by P Suresh--%>
    <script language="javascript">
    
    //Added by P Suresh -Start-
    //--- Validation for Check box list ------
	function CheckBoxValidation(src,args){
		   args.IsValid=false
		   if(document.getElementById('AccreditedAsChk_0').checked==true || document.getElementById('AccreditedAsChk_1').checked==true || document.getElementById('AccreditedAsChk_2').checked==true || document.getElementById('AccreditedAsChk_3').checked==true || document.getElementById('AccreditedAsChk_4').checked==true|| document.getElementById('AccreditedAsChk_5').checked==true)
		   {
	        	args.IsValid=true;
		   }
	}

	function Hdnfieldchk(src,args){
		   //args.IsValid=false
		   if(document.getElementById("NFRTxt").value != "")
		   {
		        if(document.getElementById("hf1").value == document.getElementById("NFRTxt").value)
		        {
	        	    args.IsValid=true;
		        }
		        else
		        {
    	            document.getElementById("NFRTxt").value = document.getElementById("hf1").value
		            return args.IsValid=false;
		        }
		   }
	}

	//---validation for No.of fields Required Textbox---
	//------------
 function noCopyMouse(e) {
        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
        if(isRight) {
            return false;
        }
        
    }

 function IsDigit2(e,Value)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
    {
        var AvailableVal = window.event.srcElement.value;   
        if(isNaN(AvailableVal)==true || AvailableVal=='')
        window.event.srcElement.value="";
        NumValidation()
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
   
   //for Number of fields required TextBox---
       function IsDigit1(e)  ///Function To check Numeric values
       {
            if(isNaN(document.getElementById("NFRTxt").value))
            {
                document.getElementById("NFRTxt").value = ""
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
//            || iCode == 46                        // Delete
            || iCode == 9                        // Tab
            )
 
        if(document.getElementById("NFRTxt").value != "")
        {
            window.forms(0).submit();
        }
    }
//------------

	function  NumValidation()
    { 
            if(document.getElementById("NFRTxt").value=="0" || document.getElementById("NFRTxt").value=="00" || isNaN(document.getElementById("NFRTxt").value))
            {
                alert("Zero(0) is not Allowed")
                document.getElementById("NFRTxt").value = ""
            }
            document.forms(0).submit();

// 			var NFRObj=window.event.srcElement;
//			if (isNaN(NFRObj.value))
//			{ 
//			    alert("Enter only Numbers(Maximum of 2 Digits)")
//			    document.getElementById("NFRTxt").value = ""
//			    return false;
//			    
//			}
    }
	
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	//-->
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="UserNameTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="UserNameValTd" ColumnSpan="3">
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Table Row Added by P Suresh - Start --%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RespTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="RespTxt" CssClass="TxtCls" runat="server" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--End--%>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="35%" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QalTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="QalValTd" ColumnSpan="1">
                                <asp:TextBox ID="QalTxt" runat="server" CssClass="TxtCls" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                            <%--Added by P Suresh--%>
                            <asp:TableCell CssClass="MainTD" ID="YorPTd" ColumnSpan="1" HorizontalAlign="Center" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="YorPValTd" ColumnSpan="1">
                                <asp:TextBox ID="YorPTxt" runat="server" CssClass="TxtCls" Width="200px" MaxLength="25"></asp:TextBox>
                            </asp:TableCell>
                            <%---------------------%>
                        </asp:TableRow>
                        <%--Added by P Suresh--%>
                        <asp:TableRow>                 
                            <asp:TableCell CssClass="MainTD" ID="IorUTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="IorUValTd" ColumnSpan="3">
                                <asp:TextBox ID="IorUTxt" runat="server" CssClass="TxtCls" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%---------------------%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ExpTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="NFRTd"  ColumnSpan="1" Width="20%" HorizontalAlign="Center"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="NFRValTd" ColumnSpan="2">
                                <asp:TextBox ID="NFRTxt" runat="server" Width="80px"  CssClass="TxtCls" MaxLength="2" onblur='IsDigit2(event,0);' onkeypress="return IsDigit1(event)" onMouseOut="return IsDigit1(event)" onmousedown="return noCopyMouse(event)" onkeydown='return noCopyKey(event);'></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DepTabRw">
                            <asp:TableCell CssClass="MainTD" ID="ExptabTd" ColumnSpan="4">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ExpTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TraingTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="ExtTrngTxt" runat="server" CssClass="TxtCls" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--<asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="RespTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RespTxt" CssClass="TxtCls" runat="server" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AreaTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="AreaTxt" CssClass="TxtCls" runat="server" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Added by P Sureh -Start--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="NomByTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="NomByValTd" ColumnSpan="3">
                                <asp:TextBox ID="NomByTxt" runat="server" CssClass="TxtCls" Width="200px" MaxLength="100"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--END--%>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AttchMntTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP' style="height: 20px">
                                <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Added by P Suresh -Start --%>
                        <asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ToBeAccAsTd" ColumnSpan="1"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ColumnSpan="3">
									<asp:checkboxlist cssclass=rblist id="AccreditedAsChk" RepeatDirection="Horizontal" runat="server">
									</asp:checkboxlist>
								</asp:TableCell>
						</asp:TableRow>
                        <%--End--%>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
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
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" Height="20px" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>   <%--Added by P Suresh--%>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="VendIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ItemIdsTxt" runat="server"></asp:TextBox>
                    <asp:HiddenField runat="server" ID="hf1"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

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
			
			
	function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val(); //Added by P Suresh
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode; //Edited by P Suresh
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
//-->
</script>

</html>
