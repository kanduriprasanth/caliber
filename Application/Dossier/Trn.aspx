<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Trn.aspx.vb" Inherits="Dossier.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

 
<html>
<head>
    <title>Trn</title>
    <script src="../JScript/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../JScript/Common2.js"></script>
    <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript">
	<!--
//	RequestPrefix='<%=me.ClientID%>'
	
    function FnHideShow()
    { 
        document.getElementById("DocIdTxt").value= "";
        document.getElementById("DocNameTxt").value = "";
        document.getElementById("IsuTypeIDLstTxt").value = "";
        document.getElementById("DocNameLbl").innerHTML ="";
        document.getElementById("DocCodeTxt").value="";
        document.getElementById("DocDetTr").className="HideRow"; 
    }
	 
    
    
//Custon Validator Validatoin Function  
function FnValidMulDocSel(src,args)
{ 
    args.IsValid=true;
    Page_IsValid=true; 
    var ChkAtLstTwo=false;
    var tmpChkCnt=0;
   
    var msg=""
    
    if ($("#PwdRqdRBL_0:checked").val() == "1")
    {
        if($("#SecPwdTxt").val() == "")
        {
             msg+="Enter Value For: Security Password"
        }
        if($("#CfmPwdTxt").val()== "")
        {
            if(msg=="")
            {
               msg+="Enter Value For: Confirm Password"  
            }
            else
            {
               msg+="\n- Enter Value For: Confirm Password"
            } 
        }
        if($("#SecPwdTxt").val() != "" && $("#CfmPwdTxt").val()!= "")
        {
            if($("#CfmPwdTxt").val() != $("#SecPwdTxt").val())
            {
                if(msg=="")
                {
                     msg+="Entered Passwords Does Not Match"  
                }
                else
                {
                     msg+="\n- Entered Passwords Does Not Match"
                } 
            }
        } 
    }
    var ChkBIds=$("#ChkBIdsTxt").val()
    var ChkBAry=new Array();
    ChkBAry=ChkBIds.split("#*#")
    for(var i=0;i<ChkBAry.length;i++)
    {   if(tmpChkCnt==2)
        {
            break;
        }
        if(document.getElementById(ChkBAry[i]))
        {
            if(document.getElementById(ChkBAry[i]).checked==true)
            {
                tmpChkCnt=tmpChkCnt+1 
            }
        }
    }
    if(tmpChkCnt!=2)
    {
        if(msg=="")
        {
        msg+="Select Atleast Two Documents For Merging"  
        }
        else
        {
        msg+="\n- Select Atleast Two Documents For Merging"
        }  
    }     
   
    if(msg!="")
    {
        args.IsValid=false;
        Page_IsValid=false; 
        src.errormessage=msg;
        return; 
    } 
}
    
function fnviewDoc(DocId)
{
    var yval = parseInt(screen.availHeight) -100
    var xval = screen.availWidth
    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=1,left=1");
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}

function fnviewEditDoc(DocId)
{
    var yval = parseInt(screen.availHeight) -100
    var xval = screen.availWidth
    var pageURL = "../DMSManagement/ViewOfficeDocument.aspx?DocId=" + DocId;
    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=1,left=1");
    if (SpWinObj.opener == null) SpWinObj.opener = self;
    SpWinObj.focus();

}

function fnCheck(ChkBId)
{
 
    var AllChked=true;
    var ChkBIds=$("#ChkBIdsTxt").val()
    var ChkBAry=new Array();
    ChkBAry=ChkBIds.split("#*#")
    for(var i=0;i<ChkBAry.length;i++)
    {
        if(document.getElementById(ChkBAry[i]))
        {
            if(document.getElementById(ChkBAry[i]).checked==false)
            {
                AllChked=false;
                break;
            }
        }
    }
    if(AllChked==true)
    {
     $("#ChkAll").attr('checked',true)
    } 
    else
    {
        $("#ChkAll").attr('checked',false)
    }
     CallAssignValues()
    
}

	//-->
    </script>
</head>
<body  ms_positioning="GridLayout" onload="return window_onload()" >
    <form autocomplete="off" id="Form1" method="post" runat="server">
     
    <asp:Table ID="tt" HorizontalAlign="center" CssClass="MainTable" runat="server"  CellPadding="0" CellSpacing="0" BorderWidth="0" >
        <asp:TableRow  Height="20">
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
                         <asp:TableCell></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow CssClass="SubHead">
                        <asp:TableCell ColumnSpan="3">
                            <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="40%" Font-Bold="true">Request Id</asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                AccessKey="C" TabIndex="1"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="DescTd" Font-Bold="true"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls"  onkeypress="taLimit()"
                                onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                     <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="ReqTypeTd" Font-Bold="true"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                        PDF
                     
                        </asp:TableCell>
                    </asp:TableRow>
                
 
                    <asp:TableRow ID="ChkTr" CssClass="MainTD">
                        <asp:TableCell Font-Bold="true">Document(s)</asp:TableCell>
                        <asp:TableCell runat="Server">
                        
                        Select / Clear All: &nbsp;&nbsp;&nbsp;
                        <input type='checkbox' id='ChkAll' onclick="fnCheckAll()"/>
                         
                            
                        </asp:TableCell>
                        <asp:TableCell Font-Bold="true">
                        <input type='button' value='' class='up' id='ExpandCollapsebtn' title='Expand / Collapse All' onclick="fnExpndRClpse()" /> 
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow >
                     <asp:TableCell CssClass="MainTD"  runat="Server" ColumnSpan="3">
                         <asp:Table ID="DocListTab" runat="Server" CssClass="SubTable" CellPadding="0" border="0" cellspacing="1"
							HorizontalAlign="center" Width="100%">
                         </asp:Table>
                        
                         </asp:TableCell>
                         </asp:TableRow>
                    <asp:TableRow ID="DocDetTr" CssClass="HideRow">
                        <asp:TableCell  ColumnSpan="2">
                            <asp:Table runat="server" CssClass="SubTable" HorizontalAlign="center" ID="DocTable">
                            </asp:Table>
                        </asp:TableCell>
                    </asp:TableRow>
                    
                         <asp:TableRow ID="PwdRqdTr">
                        <asp:TableCell CssClass="MainTD" ID="PwdRqdTd" Font-Bold="true"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:RadioButtonList ID="PwdRqdRBL" CssClass="RBList" RepeatDirection="Horizontal"
                                runat="server" onclick="FnPwdRqd()">
                                <asp:ListItem Value="1" Selected="True">Yes</asp:ListItem>
                                <asp:ListItem Value="2">No</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow id="SecPwdTr">
                        <asp:TableCell CssClass="MainTD" ID="SecPwdtd" Font-Bold="true"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:TextBox ID="SecPwdTxt" runat="server" CssClass="TxtCls" TextMode="Password"
                                MaxLength="50" Width="200px" AccessKey="D" TabIndex="2" ></asp:TextBox>
                                 
                               
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow id="CfmPwdTr">
                        <asp:TableCell CssClass="MainTD" ID="CfmPwdTd" Font-Bold="true"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:TextBox ID="CfmPwdTxt" runat="server" CssClass="TxtCls" TextMode="Password"
                                MaxLength="50" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                               
                        </asp:TableCell>
                    </asp:TableRow>
                 <asp:TableRow CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" ID="TableCell2" Font-Bold="true">Reason(s)</asp:TableCell>
                        <asp:TableCell CssClass="MainTD">
                            <asp:TextBox ID="RemarkTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine"
                                onkeypress="taLimit()" onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D"
                                TabIndex="2"></asp:TextBox>
                                 <asp:TextBox runat="server" CssClass="HideRow"  ID="NonEditIdsTxt"></asp:TextBox>
                      <asp:TextBox runat="server" CssClass="HideRow" ID="EditIdsTxt"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD" Font-Bold="true">
                            <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                        </asp:TableCell>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                            <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP' />
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                            <uc1:esignobj id="EsignObj1" runat="server" visible="false">
                                </uc1:esignobj>
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
            <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell>
                            </asp:TableCell>
                            <asp:TableCell>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                                <asp:Label ID="BtnMsgLbl" runat="server" ForeColor="red"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False">
                                </asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        </asp:Table>
                 
            </asp:TableCell>
            
        </asp:TableRow>
        <asp:TableRow CssClass="HideRow" Height="0">
            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                    ShowMessageBox="True"></asp:ValidationSummary>
                <asp:Button ID="Clk" CausesValidation="false" runat="server" />
                <asp:CustomValidator ID="CusValid" runat="server" ClientValidationFunction="FnValidMulDocSel"></asp:CustomValidator>
                    
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="ChkBIdsTxt"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="DocIdsTxt"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="DocUCodeTxt"></asp:TextBox>
                    <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="DocDescTxt"></asp:TextBox>
                      <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="BookMarksTxt"></asp:TextBox>
                      <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="ChkIdFlgLstTxt"></asp:TextBox>
                      <asp:TextBox runat="server" Style="visibility: hidden" Height="0" Width="0" ID="DmsDocTypeTxt"></asp:TextBox>
                        
                       
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     
    </form>
</body>
<script type="text/javascript">

    document.getElementById("CodeTxt").focus()

    var taMaxLength = 250
    function taLimit() {
        var taObj = window.event.srcElement;
        if (taObj.value.length == taObj.maxLength * 1) return false;
    }

    function taCount() {
        var taObj = window.event.srcElement;
        if (taObj.value.length > taMaxLength * 1) {
            taObj.value = taObj.value.substring(0, taMaxLength * 1);
            alert("Characters exceeding limit\nMaximum Length: " + taMaxLength + " Characters")
        }
    }		
			
			
 function fnExpndRClpse()
{
   
    var XRC=document.getElementById("ExpandCollapsebtn");
    if(XRC.className=="up")
    {
        document.getElementById("DocListTab").className = "HideRow";
        XRC.className = "down";
    }
    else
    {
        document.getElementById("DocListTab").className = "SubTable";
        XRC.className = "up";

    }
     
}

</script>

<script type="text/javascript">
    

    function FnPwdRqd() {
        if ($("#PwdRqdRBL_0:checked").val() == "1") {
            $("#SecPwdTr,#CfmPwdTr").removeClass("HideRow");
            
        }
        if ($("#PwdRqdRBL_1:checked").val() == "2") {
            $("#SecPwdTr,#CfmPwdTr").addClass("HideRow");
            $("#SecPwdTxt,#CfmPwdTxt").val("");
        }
    }
    function FnSecPwdValid(src, args) { 
        if ($("#PwdRqdRBL_0:checked").val() == "1") {
            if (document.getElementById("SecPwdTxt").value == "") {
                args.IsValid = false;
                Page_IsValid = false;
            }
        }
    }
    function fnCheckAll()
    {
 
         var ChkFlg=false;
         if($("#ChkAll").is(':checked'))
         {
            ChkFlg=true
         } 
         var ChkBIds=$("#ChkBIdsTxt").val()
         var DmsDocType=$("#DmsDocTypeTxt").val()
         var ChkBAry=new Array();
         var DmsDocTypeAry=new Array();
         ChkBAry=ChkBIds.split("#*#")
         DmsDocTypeAry=DmsDocType.split("#*#")
            for(var i=0;i<ChkBAry.length;i++)
            {
                if(document.getElementById(ChkBAry[i]))
                {
                    document.getElementById(ChkBAry[i]).checked=ChkFlg;
                }
            }
      CallAssignValues()      
    }



function CallAssignValues()
{
    var DocIdsStr=''
    var DocDescStr=''
    var DocUCodeStr=''
    var BookMarksStr=''
    var ChkFlgLstStr=''
    var DMSDocTypeStr=''
    var ExtPwdStr=''
    var ChkBIds=$("#ChkBIdsTxt").val()
    var DmsDocType=$("#DmsDocTypeTxt").val()
    var ChkBAry=new Array();
    var DmsDocTypeAry=new Array();
    var EditDocIdsStr='';
    var NonEditDocIdsStr='';
    var EditDocIdsStr='';
    
    
    ChkBAry=ChkBIds.split("#*#")
    DmsDocTypeAry=DmsDocType.split("#*#")
    
    
    for(var i=0;i<ChkBAry.length;i++)
    {
        if($("#"+ChkBAry[i]).is(':checked'))
        {
            if(ChkFlgLstStr==''){ChkFlgLstStr="1"}else{ChkFlgLstStr=ChkFlgLstStr+","+"1"}
            if(DocIdsStr=='')
            {
                DocIdsStr= $("#"+ChkBAry[i]+"_IdSpn").text() 
                DocDescStr=  $("#"+ChkBAry[i]+"_DescSpn").text()
                DocUCodeStr=$("#"+ChkBAry[i]+"_UCodeSpn").text()
                BookMarksStr=$("#"+ChkBAry[i]+"_BkMrkSpn").text()
                ExtPwdStr=$("#"+ChkBAry[i]+"_PWDSpn").text()
                DMSDocTypeStr=DmsDocTypeAry[i]
                
                 NonEditDocIdsStr=$("#"+ChkBAry[i]+"_NonEdit").text()
                EditDocIdsStr=$("#"+ChkBAry[i]+"_Edit").text()
            }
            else
            {
                DocIdsStr = DocIdsStr + "," + $("#"+ChkBAry[i]+"_IdSpn").text() 
                DocDescStr = DocDescStr + "#*#" + $("#"+ChkBAry[i]+"_DescSpn").text()
                DocUCodeStr = DocUCodeStr + "#*#" + $("#"+ChkBAry[i]+"_UCodeSpn").text()
                BookMarksStr = BookMarksStr + "," + $("#"+ChkBAry[i]+"_BkMrkSpn").text()
                ExtPwdStr = ExtPwdStr + '#*#'+ $("#"+ChkBAry[i]+"_PWDSpn").text()
                DMSDocTypeStr =DMSDocTypeStr + '#*#' + DmsDocTypeAry[i]

                if(NonEditDocIdsStr=="")
                    NonEditDocIdsStr=$("#"+ChkBAry[i]+"_NonEdit").text()  ;              
                else if($("#"+ChkBAry[i]+"_NonEdit").text()!="")
                     NonEditDocIdsStr=NonEditDocIdsStr + ','+ $("#"+ChkBAry[i]+"_NonEdit").text();
                     
                if(EditDocIdsStr=="")
                     EditDocIdsStr=$("#"+ChkBAry[i]+"_Edit").text();
                else if($("#"+ChkBAry[i]+"_Edit").text()!="")
                     EditDocIdsStr=EditDocIdsStr + ','+ $("#"+ChkBAry[i]+"_Edit").text();                     
            } 
        } 
        else
        {
           if(ChkFlgLstStr==''){ChkFlgLstStr="0"}else{ChkFlgLstStr=ChkFlgLstStr+","+"0"} 
        }       
    } 
    
    document.getElementById("DmsDocTypeTxt").value=""
    $("#DocIdsTxt").val(DocIdsStr)
    $("#DocDescTxt").val(DocDescStr)
    $("#DocUCodeTxt").val(DocUCodeStr) 
    $("#BookMarksTxt").val(BookMarksStr) 
    $("#ChkIdFlgLstTxt").val(ChkFlgLstStr) 
    //$("#DmsDocTypeTxt").val(DMSDocTypeStr) 
    $("#DmsDocTypeTxt").val(ExtPwdStr) 
    $("#NonEditIdsTxt").val(NonEditDocIdsStr) 
    $("#EditIdsTxt").val(EditDocIdsStr) 
}
 
function window_onload() {
    if(<%=TransType %>==2){
       ChkFlagsAssign()
      
    }
}
function ChkFlagsAssign()
{
    var ChkBIds=$("#ChkBIdsTxt").val()
    var ChkBxFlgs=$("#ChkIdFlgLstTxt").val() //checked or not
    var ChkBxFlgAry=new Array();
    var ChkBAry=new Array();
    ChkBAry=ChkBIds.split("#*#");
    ChkBxFlgAry=ChkBxFlgs.split(",");
    for(var i=0;i<ChkBAry.length;i++)
    {
        if(ChkBxFlgAry[i]==1)
        {
            $("#"+ChkBAry[i]).attr('checked',true); 
        } 
    } 
}

</script>
</html>
