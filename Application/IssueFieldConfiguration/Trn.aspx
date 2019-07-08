<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="IssueFieldConfiguration.Trn" MaintainScrollPositionOnPostback="true"%>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
       <script type="text/javascript" src="../JScript/jquery.min.js"></script>
       

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}



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
    
    
    function FnAllowAlphaNumVal()
{
    var e =event.keyCode
    if(event.ctrlLeft == true){return false}
    if(e==16 || e ==32){return false}
    else if((e ==37)||(e== 39)||(e ==8)||(e== 46)||(e== 9)||((e >=65) && (e <=90))){}
    else if((e >=48) && (e <=57))
    {
        if(event.shiftLeft ==true)
            {return false}
    }
    else{return false}
}
function CheckVal()
{
    var elementVal = window.event.srcElement
    if(elementVal.value !="")
    {
        if(!isNaN(elementVal.value.substr(0,1)))
        {
            alert("<%=NumNotAl1owCaption%>")
            elementVal.focus()
            elementVal.select()
        }
    }
}

var __OldVal 
var __MinimumVal = <%=OldIssueFldsCnt%>
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
        alert("Deleting Existing Fields Is Not Allowed!")
        SrcObj.value = __OldVal
        SrcObj.focus()
    }	
    if(__MinimumVal < NewVal)
	{
	   setTimeout('__doPostBack(\'NewFieldCountTxt\',\'\')', 0)
	}
}



    
	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30"  ReadOnly=true Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" id="StdFieldTitleTd" ColumnSpan="2" Style="font-weight: bold">
                             <span id="StdFieldTitle" runat="server" style="display: inline; width: 100%; text-align: left;"
                                 title="Hide / Show DATA"><%=AvbLogFldcap %> 
                                    <input type="button" value="" class='down' name='LogShowHideBtn' style="text-align:right" onclick="LogShowHideBRT()" />
                                </span>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow id="LoginFldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="RegisterFieldsTab" runat="server" CssClass="SubTable" Width="100%"
                                    CellPadding="0" CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="StdClsFieldTitleTd" ColumnSpan="2" Style="font-weight: bold">
                            
                            <span id="Span2" runat="server" style="display: inline; width: 100%; text-align: left;"
                                 title="Hide / Show DATA"><%=AvbClsFldcap %> 
                                    <input type="button" value="" class='down' name='ClsShowHideBtn' style="text-align:right" onclick="ClsShowHideBRT()" />
                                </span>
                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ClsureFldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="ClosureFieldsTab" runat="server" CssClass="SubTable" Width="100%"
                                    CellPadding="0" CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell ID="NewFieldTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NewFieldCountTxt" onkeydown="return FnAllowNumVal()" Width="35px"
                                    CssClass="TxtCls" Text="0" runat="server" TabIndex="5" onfocusin="SaveCurrentVal()"
                                    onfocusout="CheckCurrentVal()" MaxLength ="2" oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                                <asp:Literal ID="ltlRemoved" runat="server" Visible="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="NewIsuFieldTr" CssClass="MainTD">
                            <asp:TableCell ColumnSpan="2" ID="TableCell1">
                                <asp:Table ID="NewIsuFieldTbl" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
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
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                      
                      <%--  <asp:TextBox ID="LoginTxt" runat ="server" ></asp:TextBox>
                       <asp:TextBox ID="ClsTxt" runat ="server" ></asp:TextBox>   --%>                    
                </asp:TableCell>
              
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()

function LogShowHideBRT(Type)
{
    var ShowHideBtnCls = document.getElementById("LogShowHideBtn").className;
    Type =( ShowHideBtnCls == "up" ? 1 : 2)
    document.getElementById("LogShowHideBtn").className= (Type == 2 ? "up" : "down");
    $("#LoginFldTr").css('display',(Type == 1 ? "none" : "block"));
   //document.getElementById ("LoginTxt").value=document.getElementById("LogShowHideBtn").className;
}

function ClsShowHideBRT(Type)
{
    var ShowHideBtnCls = document.getElementById("ClsShowHideBtn").className;
    Type =( ShowHideBtnCls == "up" ? 1 : 2)
    document.getElementById("ClsShowHideBtn").className= (Type == 2 ? "up" : "down");
    $("#ClsureFldTr").css('display',(Type == 1 ? "none" : "block"));
   // document.getElementById ("ClsTxt").value=document.getElementById("ClsShowHideBtn").className;
    
}

//function Show()
//{
//    if (document.getElementById("LoginTxt").value !=""){

//        document.getElementById("LogShowHideBtn").className=document.getElementById("LoginTxt").value
//    }
//    if (document.getElementById("ClsTxt").value !=""){

//        document.getElementById("ClsShowHideBtn").className=document.getElementById ("ClsTxt").value
//    }
// }

//Show()

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters Exceeding Limit \\ Maximum Length: "+ taMaxLength +" Characters")
			}
			}		
			
			
			var returnval=0
			
			function funChkCtrlExis(CtrlVal,RowCnt)
			{
			
		            if(CtrlVal!=1)
		            {  
		                return
		            }
			  var StdObjFldId=","+"<%=ObjRefIds%>"+","
			  var selectedval=document.getElementById("CtlTypeDdl"+RowCnt).value
			  var selectedval1=","+selectedval+","
			  var FldCnt=<%=FldCount%>
			  if(StdObjFldId.indexOf(selectedval1)!= -1)
			  {
			    returnval=AlertMsgBox()
			    if(returnval==6)
			    {
			      alert("Enter Reasons For Field Adding")
			      
			      if(document.getElementById("ChRes").className !="SubHeadTd")
			      {			      
			        document.getElementById("ChRes").className="SubHeadTd"
			      }
			      for(var j=1;j<=FldCnt;j++)
			      {
			       document.getElementById("ReasonsTd"+j).className="MainTD"
			      }
     		    document.getElementById("ReasonsTxt"+RowCnt).className="TxtCls"
			    }
			   }
			   
			   if(selectedval=="10" || selectedval=="11")
			   {
			     return
			   }
			  
			   
			}
			
			
			function IsValid(Exstval)
			{
			    var ErrerStr="" 
			    var val=document.getElementById ("NewFieldCountTxt").value
			    if (val=="")
			    {
			     ErrerStr="No.of Fields To Add Should Not Be Empty"  
			    }
			    
			    if (ErrerStr != "") 
                {
                  alert(ErrerStr);
                  document.getElementById ("NewFieldCountTxt").value=Exstval;
                }
               else
               {
                if(val=="")
                {
                 document.getElementById ("NewFieldCountTxt").value=Exstval;
                }
                Form1.submit();
               }
            }
            
            function ValidateNewField(src,args)
            {
                args.IsValid=true;
                Page_IsValid=true;
                var ErrerStr=""
                
                var val=document.getElementById ("NewFieldCountTxt").value
			    if (val==0)
			      ErrerStr="No.of Fields To Add Should Be Greater Than Zero"
			   
			    if (ErrerStr != "") 
                {
                    src.errormessage=ErrerStr.substring(0,ErrerStr.length)
                    args.IsValid=false;
                    Page_IsValid=false;
                }
            
            }
            
            function validateFieldTab(src,args) //For back button handling
            {
              var NewIsuFieldTblCnt=<%=NewIsuFieldTblCnt%>
              var FieldCnt=document.getElementById("NewFieldCountTxt").value;
              if(FieldCnt>NewIsuFieldTblCnt||FieldCnt<NewIsuFieldTblCnt)
              {
                document.getElementById("NewFieldCountTxt").value=NewIsuFieldTblCnt;
              }
              
            }
			
			//-->
			
			
			  function RestrictSpecialChar(e) {
        //get the keycode when the user pressed any key in application
        var exp = String.fromCharCode(window.event.keyCode)

        //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
        var r = new RegExp("[$#@%]", "g");

        if (exp.match(r) != null) {
        window.event.keyCode = 0
        alert(" $ # @ % These Characters Are Not Allowed ")
        return false;
        }
    }
</script>

<script language=vbscript>
        function AlertMsgBox
		ReturnVal=MsgBox("This Object Field Data Type Is Already Selected In Standard Fields Still You Need To Add It For New Field?",36,"Greetings From CaliberLIMS")
		if ReturnVal=6 then
		AlertMsgBox=6
		else
		AlertMsgBox=7
		end if
	    End function 
	    
	    
	    
	    
	    
</script>

</html>
