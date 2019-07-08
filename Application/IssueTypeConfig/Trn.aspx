<%@ Page Language="vb" AutoEventWireup="false" enableEventValidation="false" Codebehind="Trn.aspx.vb" Inherits="IssueTypeConfig.Trn"
    MaintainScrollPositionOnPostback="true" %>
<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>
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
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}


var WofLbl
var WofLblTxt
var WofIxIdTXt
var RevCntIDTxt
var AppCntIdTxt
var RevColIdTxt
var AppColIDTxt

 function WRKPopUpFn(WofLblID,WofIdTxtID,WofDescTxtID,RevCntTxtID,AppCntTxtID,RevColTxtID,AppColTxtId)
{
   WofLbl=WofLblID.id
   WofLblTxt=WofDescTxtID.id
   WofIxIdTXt=WofIdTxtID.id
   RevCntIDTxt=RevCntTxtID.id
   AppCntIdTxt=AppCntTxtID.id
   RevColIdTxt=RevColTxtID.id
   AppColIDTxt=AppColTxtId.id
  
    var pageURL;
        
    pageURL ="../TestDynamicEForm/WorkFlowListPopUp.aspx"

    var PWidth=600
    var PHeight=460
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
    SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();

}
function fnCrSetToCode(WofIdVal,WofAulIdVal,WofDesVal,RevCntVal,AppCntVal,RevColVal,AppColVal)
{
  
    document.getElementById(WofIxIdTXt).value=WofIdVal
    document.getElementById(WofLbl).innerHTML =WofDesVal
    document.getElementById(WofLblTxt).value =WofDesVal
    document.getElementById(RevCntIDTxt).value=RevCntVal
    document.getElementById(AppCntIdTxt).value=AppCntVal
    document.getElementById(RevColIdTxt).value=RevColVal
    document.getElementById(AppColIDTxt).value=AppColVal
}

  function fnCrformSubmit()
    {
        //document.all("GoBtn").click()
        Form1.submit ();
    }



	//-->
    </script>

    <script language="javascript">
      function GetFieldsId_1(src,args)
      {
         args.IsValid=false;
  	        Page_IsValid=false;
      
          var i;
          var FldValue=""
          var FieldList="<%=FldList%>"
          var FieldListArr =new Array()
          FieldListArr=FieldList.split(",")
          
          document.getElementById("Fieldlist").value=""
          for(i=0;i<=FieldListArr.length-1;i++)
          {
          
            if(document.getElementById (FieldListArr[i]).checked == true)
            {
              FldValue +=","+ FieldListArr[i] 
            }
          }
          document.getElementById("Fieldlist").value=FldValue.substring(1)
          var Flag= document.getElementById("Fieldlist").value
         if(Flag !="")
           {
		  args.IsValid=true;
  	        Page_IsValid=true;
  	       }
  	       else
  	       {
  	        args.IsValid=false;
  	        Page_IsValid=false;
  	       
  	       }
      }
     
  	      
 function ValidationPopUpFn(RowCnt,Prefix,CtrlID,DBType,CtrlDataType)
{
   var LoginSelFields='<%=LoginFields.ListItemValues %>';
   var ClosureSelFields='<%=closureFields.ListItemValues %>';
    SelRowCnt = RowCnt
    var pageURL;
    var TempArr = new Array()
    TempArr = document.getElementById(Prefix + "ErrerTxt"+RowCnt).value.split("#*#")
    pageURL ="ValidationRulePopUp.aspx?RowCnt=" + RowCnt + "&FieldCnt=" + TempArr.length + "&prefix=" +Prefix + "&CtrlID="+ CtrlID + "&DBType="+ DBType + "&CtrlDataType=" + CtrlDataType + "&LoginSelFields=" + LoginSelFields + "&ClosureSelFields=" + ClosureSelFields; 

    var PWidth=600
    var PHeight=480
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
    SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
}      

function SetSelFieldVal(prefix,FielIdLstArr,FieldValLstArr,ValTypeText,ValTypeVal,RowCnt)
{
    for(var k=0;k<FielIdLstArr.length;k++)
    {
        document.getElementById(prefix+FielIdLstArr[k]+RowCnt).value = FieldValLstArr[k]
    }
   
        var ValidTypeArr=new Array()
        ValidTypeArr=ValTypeText.split("#*# ")
        
    document.getElementById(prefix+"ValidTypeCapLab"+RowCnt).innerHTML =ValidTypeArr.join(", "); //ValTypeText;
    document.getElementById(prefix+"ValidTypeCapTxt"+RowCnt).value =ValidTypeArr.join(","); //ValTypeText;
    document.getElementById(prefix+"ValidTypeValTxt"+RowCnt).value = ValTypeVal;

    SelRowCnt =""
}

      
function SetHeadColCaption(k)
{
    var dropId=  "drop" + k
    var txtId=  "txt" + (k-1)
    document.all(txtId).value=document.getElementById(dropId)(document.getElementById(dropId).selectedIndex).text
   }

var UserGrpIDTxt
var UserGrpLab
var UserGrpTxt

    function FnUserGroupSelPopUp(UserGrpBaseIdTxtID,UserGrpCodeTxtID,UserGrpCodeLblID)
    { 

        UserGrpIDTxt=UserGrpBaseIdTxtID.id
        UserGrpTxt=UserGrpCodeTxtID.id
        UserGrpLab=UserGrpCodeLblID.id
        
        var pageURL;
        pageURL ="RevAppListPopUp.aspx?IssId=0"
        var SpWinObj;
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    //Approver Reviewer group selection ID and Code handling Function
    function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
        document.getElementById(UserGrpTxt).value=UsrGrpUCodeVal
        document.getElementById(UserGrpLab).innerHTML=UsrGrpUCodeVal
        document.getElementById(UserGrpIDTxt).value=UsrGrpIdVal
    }
    
    function SetWorkCol(RCnt,Prefix)
    { 
       var DDLObj = document.getElementById(Prefix+"WorkFlowTypeDDL"+RCnt)
       document.getElementById(Prefix+"WorkflowColTxt"+RCnt).value =DDLObj.item(DDLObj.selectedIndex).wcol    
    
        if(document.getElementById(Prefix + "FldDBID_"+RCnt).value=="12")
         {
           if(document.getElementById(Prefix + "WorkFlowTypeDDL" + RCnt).value=="1")
           {
            alert("Work Is Assigned Only By Reviewer / Approver")
            document.getElementById(Prefix + "WorkFlowTypeDDL" +RCnt).value=""
           }
         }
     }
    
    function ClassChange()
    {
      if (document.getElementById("UniqueCodeRdl_2").checked == true)
      {
       document.getElementById("CodelvlTr").className="MainTD" 
       document.getElementById("UcodeLevelTabTR").className="MainTD" 
      }
      else
      {
       document.getElementById("CodelvlTr").className="HideRow" 
       document.getElementById("UcodeLevelTabTR").className="HideRow"
       document.getElementById("CodelvlTxt").value="0";
       $("#UcodeLevelTab").remove();       
      }
    }
    
      function CheckUcode(RowCnt)
      {
        var Ucodelevel=document.getElementById("Ucodelevel" + RowCnt).value
        var Codelvl=document.getElementById("CodelvlTxt").value
       
        for(var i=0;i<Codelvl;i++)
        {
          if (i != RowCnt)
          {
              var oldUCodeVal=document.getElementById("Ucodelevel" + i).value 
              if (oldUCodeVal==Ucodelevel && Ucodelevel != "")
              { 
                alert("Already Selected In Section " + (i+1) )
                document.getElementById("Ucodelevel" + RowCnt).value=""
                return;
              }
          }
        
        }
      }
      
      
      function CheckFldWorkFlow(RowCnt,Prefix)
      {
       
      }
      
      function ValidateDuration(src,args)
      {      
            ErrerString=""
            args.IsValid=true;
            Page_IsValid=true;
            var num = parseInt(document.getElementById("IsuDurationTxt").value);
            var num1 = parseInt(document.getElementById("CAPADurationTxt").value);
            if(num==0)
            {
                ErrerString =ErrerString + "Max Duration Between Issue Login To Closure Value Should Be Greater Than Zero" + "  \n -"
            
            }
            if(num1==0) //document.getElementById("CAPADurationTxt").value=="0")
            {
                ErrerString =ErrerString + "Max Duration Between CAPA Proposal To Completion Value Should Be Greater Than Zero" + "  \n -"
       
            }
            
            if(num<num1) //document.getElementById("IsuDurationTxt").value < document.getElementById("CAPADurationTxt").value)
            {
              
              ErrerString =ErrerString + "Max Duration Between CAPA Proposal To Completion Value Must Be Less Than Or Equal To Max Duration Between Issue Login To Closure Value" + "  \n -"
            }
            if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length-3)
                args.IsValid=false;
                Page_IsValid=false;
            
            }
      
      }
      
      
       function UniqueCodeValidation(src,args)
      {
      
            args.IsValid=true;
            Page_IsValid=true;
            ErrerString="";
            
            if (document.getElementById("UniqueCodeRdl_2").checked == true)
            {
                document.getElementById("CodelvlTr").className="MainTD" 
                document.getElementById("UcodeLevelTabTR").className="MainTD" 
                
                var Ucodetype=document.getElementById("CodelvlTxt").value;
                var UcodeTabCnt=$("#UcodeLevelTab tr").length;//For Back Butn Issue
                if(Ucodetype<UcodeTabCnt||Ucodetype>UcodeTabCnt){
                       document.getElementById("CodelvlTxt").value=UcodeTabCnt;
                }
                if (document.getElementById("CodelvlTxt").value == "")
                {
                    ErrerString=ErrerString + "Enter Value For: No. of Levels Required"
                }
                else if(document.getElementById("CodelvlTxt").value ==0)
                {
                    ErrerString=ErrerString + "No. of Levels Required Should Be Greater Than Zero"
                }
                
            }
           
            if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length)
                args.IsValid=false;
                Page_IsValid=false;
            
            }
           
      }
    </script>

    <script language="javascript">
    
     function HeaderRowsValidation(src,args){

    args.IsValid=true;
    Page_IsValid=true;
    ErrerString="";
    var DHTabRowsCnt=<%=DHTabRowsCnt%>
    var RowsCnt=document.getElementById("HRowsTxt").value ; 
     if (RowsCnt<DHTabRowsCnt||RowsCnt>DHTabRowsCnt)
     {
        ErrerString=ErrerString + "No. of Rows Entered and No. Of Rows Displayed in Header Should be same";                
     }
      if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length)
                args.IsValid=false;
                Page_IsValid=false;
            
            }
 
    }
 
 function SectionsValidate(src,args){

    args.IsValid=true;
    Page_IsValid=true;
    ErrerString="";
    var Ucodetype=document.getElementById("CodelvlTxt").value ; 
     if (document.getElementById("UniqueCodeRdl_2").checked == true)
     {
       for(var k=0;k<Ucodetype;k++)
                {
                    if(document.getElementById("Ucodelevel"+k).value=="")
                    {
                    ErrerString=ErrerString + "Select: " + "Section - " + (k+1) +"\n";
                        
                    }
                }
     }
      if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length)
                args.IsValid=false;
                Page_IsValid=false;
            
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
        if(NewVal >4)
        {
          //alert("Ucode Level Must Be Grater Less Than Or Equal To 4")
          alert("No. of Levels Required Must Be Less Than Or Equal To 4")
           SrcObj.value = __OldVal
           SrcObj.focus()
          return
        }
        
        if(__MinimumVal < NewVal || NewVal==0)
	    {
	       setTimeout('__doPostBack(\'CodelvlTxt\',\'\')', 0)
	    }
    }


    function IsDigit1(e)  ///Function To check Numeric values
    {
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
       
        if(e.shiftKey==true)
            return false

      var iCode = ( e.keyCode || e.charCode );

      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

             if(iCode == 39 ) return false;
         return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
    }
    
    function validateListSelDisp(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
          var ExpMsg=''

        if(CheckSelected() == false) { ExpMsg=ExpMsg+ "Click Refresh Display Button" + "\n" }
        if(document.getElementById("AutoWrkAllRdl_0").checked==true)
           {  
             if (document.getElementById("WrkTempDDl").value =="") 
                 ExpMsg= ExpMsg+ "Select Value For : Work Template " + "\n"
           }     
        
        if(ExpMsg != '')
        {
            src.errormessage= ExpMsg.substring(0,ExpMsg.length)  //ExpMsg.substring(0,ExpMsg.length-3) 
            args.IsValid=false;
            Page_IsValid=false;
        }
    }
  	
  	function CheckSelected()
  	{
  	    var PreStandordFields = "<%=LoginFields.ListItemValues%>"
  	    var PreTestFields = "<%=closureFields.ListItemValues%>"
  	    
  	    document.getElementById("OldLogFldIdLst").value="<%=LoginFields.ListItemValues%>"
  	    document.getElementById("OldClsFldIdLst").value="<%=closureFields.ListItemValues%>"
  	    
  	    var SelStandordFields = document.getElementById("LoginFields"+"_OptValues").value
  	    var SelTestFields = document.getElementById("closureFields"+"_OptValues").value
  	    
  	    var PreStandordFieldsArr = new Array()
        var PreTestFieldsArr = new Array()
        var SelStandordFieldsArr = new Array()
        var SelTestFieldsArr = new Array()
        PreStandordFieldsArr = PreStandordFields.split(",")
        PreTestFieldsArr = PreTestFields.split(",")
        SelStandordFieldsArr = SelStandordFields.split(",")
        SelTestFieldsArr = SelTestFields.split(",")

        if(SelStandordFields != "")
        {
            if(PreStandordFieldsArr.length != SelStandordFieldsArr.length )
            {
                return false;        
            }
            else
            {
                for(var k=0;k<SelStandordFieldsArr.length;k++)
                {
                    if((","+PreStandordFields+",").indexOf(SelStandordFieldsArr[k]) == -1)
                    {
                        return false
                        break;
                    }
                }
            }
        }
        
       if(SelTestFields!="")
        {
           if(PreTestFieldsArr.length != SelTestFieldsArr.length )
            {
                return false;        
            }
            else
            {
                for(var k=0;k<SelTestFieldsArr.length;k++)
                {
                    if((","+PreTestFields+",").indexOf(SelTestFieldsArr[k]) == -1)
                    {
                        return false
                        break;
                    }
                }
            }
        }     
        return true;     
  	}
    
    function FnCheckRepeat()
    {
        Detach();
    }

    function Detach()
    {
        var formName = document.forms(0).name
        document.forms(0).detachEvent('onsubmit',fnCallESign)
    }
    
    function FnDataSheetpopup(SheetTypeId)
   {
     //SetPopDimensions()
            var pageURL = "../ControlConfiguration/DataSheetsPopup.aspx?SheetTypeId=" + SheetTypeId
            
            var PWidth=550
            var PHeight=420
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
   }
   
   function fnOpenDataSheetPopUp_Ret(SheetIdVal,SheetCode,SheetType,SheetTypeId)
   {
     document.getElementById("DataSheetLbl" + SheetTypeId).innerHTML=SheetCode
     document.getElementById("DataSheetidTxt"+ SheetTypeId).value=SheetIdVal
     document.getElementById("DataSheetDescTxt"+ SheetTypeId).value=SheetCode
   }   
   
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
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CategoryDDl" runat="server" CssClass="MainTD">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="3" Width="50px"
                                    AccessKey="C" TabIndex="1" OnKeyPress="RestrictSpecialChar()" oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" OnKeyPress="RestrictSpecialChar()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="UniqueCodeTD" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList CssClass="MainTd" ID="UniqueCodeRdl" RepeatDirection="Vertical"
                                    runat="server" onclick="ClassChange()">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="CodelvlTr">
                            <asp:TableCell CssClass="MainTD" ID="CodeLevelTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodelvlTxt" runat="server" CssClass="TxtCls" MaxLength="1" onkeypress="return IsDigit1(event)"
                                    Width="35px" onfocusin="SaveCurrentVal()" onfocusout="CheckCurrentVal()" oncopy="return false" onpaste="return false" oncut="return false"></asp:TextBox>&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="Label1" CssClass="MainTD" Text="Max Value 4" runat="server"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="UcodeLevelTabTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="UcodeLevelTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="PrefixTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="PrefixTxt" runat="server" CssClass="UCTxtCls" MaxLength="3" Width="50px"
                                    AccessKey="D"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="Fieldlist"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="LogIniGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(LogInitGrpIdTxt,LogInitGrpTxt,LogInitGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="LogInitGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="LogInitGrpIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="LogInitGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="LogWofTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="WRKPopUpFn(LogWofLbl,LogWofIdTxt,LogWofDescTxt,LogRevCntTxt,LogAppCntTxt,LogRevColTxt,LogAppColTxt)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="LogWofLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="LogWofIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="LogWofDescTxt"></asp:TextBox>
                                <asp:TextBox ID="LogRevCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="LogAppCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="LogRevColTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="LogAppColTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="StdFieldTitleTd" ColumnSpan="2" Style="font-weight: bold"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="RegisterFieldsTab" runat="server" CssClass="SubTable" Width="100%"
                                    CellPadding="0" CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc2:ListSelection id="LoginFields" runat="server">
                                </uc2:ListSelection>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" ID="LoginFldTab" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Button ID="LoginFldBtn" runat="server" CssClass="ButexCls" Text="Refresh Display"
                                    CausesValidation="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="HeaderTd" ColumnSpan="2">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="ttt" runat="server" EnableViewState="False" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="HRowsTd" ColumnSpan="1" Text="Rows"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="HRowsTxt" CssClass="TxtCls" MaxLength="1" Width="30px" runat="server"
                                                AccessKey="c" AutoPostBack="True" Text="" TabIndex="5"></asp:TextBox></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="HRows1Td" ColumnSpan="1" Text="Columns"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:DropDownList ID="HRowsDd" runat="server" CssClass="TxtCls" MaxLength="50" Width="70px"
                                                TabIndex="6" AccessKey="c" AutoPostBack="True">
                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                <asp:ListItem Value="6">6</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HeaderTr" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DHTabTd" ColumnSpan="2" runat="server">
                                <asp:Table ID="DHTab" runat="server" EnableViewState="False" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="WorlAllGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(WorlAllGrpIdTxt,WorlAllGrpTxt,WorlAllGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="WorlAllGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="WorlAllGrpIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="WorlAllGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ActPlnInitGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(ActPlnInitGrpIDTxt,ActPlnInitGrpTxt,ActPlnInitGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="ActPlnInitGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ActPlnInitGrpIDTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ActPlnInitGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="StdPlaningGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(StdPlaningGrpIdTxt,StdPlaningGrpTxt,StdPlaningGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="StdPlaningGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="StdPlaningGrpIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="StdPlaningGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ActPlnClsGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(ActPlnClsGrpIdTxt,ActPlnClsGrpTxt,ActPlnClsGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="ActPlnClsGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ActPlnClsGrpIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ActPlnClsGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ClsIniGrpTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="FnUserGroupSelPopUp(ClsInitGrpIDTxt,ClsInitGrpTxt,ClsInitGrpLbl)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="ClsInitGrpLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ClsInitGrpIDTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ClsInitGrpTxt"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ClsWofTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" class="RsnPUP" onclick="WRKPopUpFn(ClsWofLbl,ClsWofIdTxt,ClsWofDescTxt,ClsRevCntTxt,ClsAppCntTxt,ClsRevColTxt,ClsAppColTxt)" />
                                <asp:Label CssClass="MainTD" runat="server" ID="ClsWofLbl"></asp:Label>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ClsWofIdTxt"></asp:TextBox>
                                <asp:TextBox CssClass="HideRow" runat="server" ID="ClsWofDescTxt"></asp:TextBox>
                                <asp:TextBox ID="ClsRevCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ClsAppCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ClsRevColTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ClsAppColTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="StdClsFieldTitleTd" ColumnSpan="2" Style="font-weight: bold"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="ClosureFieldsTab" runat="server" CssClass="SubTable" Width="100%"
                                    CellPadding="0" CellSpacing="1">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <uc2:ListSelection id="closureFields" runat="server">
                                </uc2:ListSelection>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" ID="ClosureFldTab" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Button ID="ClosureFldBtn" runat="server" CssClass="ButexCls" Text="Refresh Display"
                                    CausesValidation="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AutoWrkAllTD" Style="font-weight: bold; width: 30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="AutoWrkAllRdl" runat="server" CssClass="MainTD" RepeatDirection="Horizontal"
                                    onclick="ShowWorkTemplate()">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="WrkTempTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="WrkTempTd" Style="font-weight: bold; width: 30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="WrkTempDDl" runat="server" CssClass="MainTD">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="WrkPlanTd" Style="font-weight: bold; width: 30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="WrkPlanRdl" runat="server" CssClass="MainTD" RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AcceptanceTr">
                            <asp:TableCell CssClass="MainTD" ID="AcpDataShhetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(2)" tabindex="5" type="button">
                                <asp:Label ID="DataSheetLbl2" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt2" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt2" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="Recomendedrt">
                            <asp:TableCell CssClass="MainTD" ID="RecDataShhetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(3)" tabindex="5" type="button">
                                <asp:Label ID="DataSheetLbl3" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt3" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt3" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ImplimentationDsTr">
                            <asp:TableCell CssClass="MainTD" ID="ImpDataShhetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(4)" tabindex="5" type="button">
                                <asp:Label ID="DataSheetLbl4" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt4" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt4" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TaskDsTr">
                            <asp:TableCell CssClass="MainTD" ID="DataShhetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(5)" tabindex="5" type="button">
                                <asp:Label ID="DataSheetLbl5" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt5" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt5" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ETdDSTr">
                            <asp:TableCell CssClass="MainTD" ID="ETDDatasheetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(10)" tabindex="5" type="button" />
                                <asp:Label ID="DataSheetLbl10" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt10" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt10" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="MRequestDsTr">
                            <asp:TableCell CssClass="MainTD" ID="MRDatasheetTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="FnDataSheetpopup(11)" tabindex="5" type="button" />
                                <asp:Label ID="DataSheetLbl11" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSheetidTxt11" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="DataSheetDescTxt11" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="IsuDurationTr">
                            <asp:TableCell CssClass="MainTD" ID="IsuDurationTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="IsuDurationTxt" runat="server" CssClass="TxtCls" Width="100px" MaxLength="3"
                                    onkeydown="return FnAllowNumVal()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CAPADurationTr">
                            <asp:TableCell CssClass="MainTD" ID="CAPADurationTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CAPADurationTxt" runat="server" CssClass="TxtCls" Width="100px"
                                    MaxLength="3" onkeydown="return FnAllowNumVal()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold">
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
                    <asp:CustomValidator ID="CustVal" runat="server" ClientValidationFunction="validateListSelDisp"></asp:CustomValidator>
                    <asp:TextBox runat="server" ID="OldLogFldIdLst"></asp:TextBox>
                    <asp:TextBox runat="server" ID="OldClsFldIdLst"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById("CodeTxt").focus()

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
			
	
	
	function ShowWorkTemplate()
	{
	  if(document.getElementById("AutoWrkAllRdl_0").checked==true)
	     document.getElementById("WrkTempTr").className="MainTD"
	  else if(document.getElementById("AutoWrkAllRdl_1").checked==true)
	     document.getElementById("WrkTempTr").className="HideRow"
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
document.getElementById("IsuDurationTxt").onpaste=new Function("return false")
document.getElementById("CAPADurationTxt").onpaste=new Function("return false")
 

//-->


   function RestrictSpecialChar(e) {
        //get the keycode when the user pressed any key in application
        var exp = String.fromCharCode(window.event.keyCode)

        //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
        var r = new RegExp("[$#@%]", "g");

        if (exp.match(r) != null) {
        window.event.keyCode = 0
        alert(" $ # @ % These Characters Are Not Allowed")
        return false;
        }
        
        taLimit();
    }
</script>

</html>
