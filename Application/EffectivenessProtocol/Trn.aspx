<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="EffectivenessProtocol.Trn" %>

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
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    <script language="javascript">
	<!--
        RequestPrefix = '<%=me.ClientID%>'
        function fnSetToReasons(argValue) {
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30"  ReadOnly=true Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                             <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                 <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderTAb"></asp:Table>
                             </asp:TableCell>
                         </asp:TableRow>
                         
                          <asp:TableRow>
                             <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                 <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ActPlnTab"></asp:Table>
                             </asp:TableCell>
                         </asp:TableRow>
                                                 
                         <asp:TableRow>
                            <asp:TableCell ID="NumPlanReqTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NumPlanReqTxt" onkeydown="return FnAllowNumVal()" onblur="IsDigit2()" Width="200px" CssClass="TxtCls" runat="server"  TabIndex="5" onfocusin ="SaveCurrentVal()" onfocusout="CheckCurrentVal()" MaxLength ="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow id ="EftPlnTr" CssClass ="MainTD" runat="server">
                             <asp:TableCell ID="TableCell1" CssClass="MainTD" ColumnSpan="2" runat="server">
                                 <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="EftPlnTab" runat="server"></asp:Table>
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
                                <asp:HyperLink ID="Hlink" runat="server" AccessKey="V" CssClass="HideRow" Font-Underline="False"
                                    onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>   
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
    
     
    var __OldVal 
    var __MinimumVal = <%=OldPlansCnt%>
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
       
       if(isNaN(NewVal)==true)
         NewVal=0;       
       
        if(__MinimumVal > NewVal)
        {
            if (_TransType != 2)
            {
                alert("Deleting Existing Plans Is Not Allowed")
                SrcObj.value = __OldVal
                SrcObj.focus()
            }
            else
            {setTimeout('__doPostBack(\'NumPlanReqTxt\',\'\')', NewVal)} 
        }	
        if(__MinimumVal <= NewVal)
	    {
	       setTimeout('__doPostBack(\'NumPlanReqTxt\',\'\')', 0)
	    }
    }
     	
    	
//-->
</script>

<script language ="javascript" >

     function fnOpenACPPopUp(RowCnt)
     {
        RowCount=RowCnt
        //var PlanId=document.getElementById("PlanIdTxt_" + RowCnt).value
        var PlanId=document.getElementById("PlanIdTxt_0").value
        var pageURL = "../PrsWorkFlow/ActionPlanWrkList.aspx?PlanId=" + PlanId
        var PWidth=600
        var PHeight=400
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
	    var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }


function OpenDMSPopUp(UParam,IsuTransCode,PrsType)
    {
        var UParam =UParam;
        var RepositoyTypeId =3;   // Repository Type
        var SourceTypeId   
        
         switch (parseInt(PrsType))
        {
            case 1: SourceTypeId=5; //CC
                 break; 
            case 2:SourceTypeId=4; //DI
                 break;
            case 3:SourceTypeId=6; //MC
                 break;
            case 6:SourceTypeId=7; //AF
                 break;
            case 4:SourceTypeId=21; //CAPA
                 break;
            case 5:SourceTypeId=26; //CCT
                 break;
            case 0: SourceTypeId=999; //CCT
                 break;
        }
            
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching
       
        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,IsuTransCode,UParam);
    }

    function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
    {
        if (DocId!="")
        {
            var DocNameArr=new Array()
            DocNameArr=DocDesc.split("$@$")
            document.getElementById("DocumentIdTxt" + UParam ).value= DocId + '#*#' + DocDesc 
            document.getElementById("DocumentNameLbl" + UParam).innerHTML =DocNameArr.join("; ");
            document.getElementById("DocumentNameTxt" + UParam).value =DocNameArr.join("; ");
        }
        else
        {
            document.getElementById("DocumentIdTxt" + UParam ).value= "";
            document.getElementById("DocumentNameLbl" + UParam).innerHTML = "";
            document.getElementById("DocumentNameTxt" + UParam).value = "";
        
        }
    }

    function OkRet_OpenDMSPopUp(UParam)
    {

    }

     function fnSetWorkItemVal(WorkItemIdVal, WorkItemCodeVal)
     {
       document.getElementById("MonitiringWITIDTXT_"+ RowCount).value=WorkItemIdVal
       document.getElementById("MonitiringWITCodeTXT_"+ RowCount).value=WorkItemCodeVal
       document.getElementById("MonitiringWITTXT_"+ RowCount).innerHTML=document.getElementById("MonitiringWITCodeTXT_"+ RowCount).value
     } 

    function CheckNumPlans(src,args)
    {
       
        args.IsValid=true;
        Page_IsValid=true;
        var ErrerStr=""
               
        var val=document.getElementById("NumPlanReqTxt").value;
        
        if(val=="0")
              ErrerStr="No.of Monitoring Plans Should be Greater Than Zero";
    
        if (ErrerStr != "") 
        {
            src.errormessage=ErrerStr.substring(0,ErrerStr.length)
            args.IsValid=false;
            Page_IsValid=false;
        }
   
    }
    
    function CheckVal(cnt)
    {
           var PlnDuration= parseInt(document.getElementById("DurationTxt_" + cnt).value)
           var SchFreq = parseInt(document.getElementById("MonitiringDays_" + cnt).value)              
         
            if (SchFreq <= PlnDuration)
            {
                alert("Monitoring Plan Duration Should Be Less Than Schedule Frequency") ;
                document.getElementById("DurationTxt_" + cnt).value='<%=ConfigurationManager.AppSettings("PlanDuration")%>'
                document.getElementById("MonitiringDays_" + cnt).value='<%=ConfigurationManager.AppSettings("ScheduleFreq")%>'
            }                             
    }
    
    function ChkZeroVal(Type,cnt)
    {
    var SchFreq = document.getElementById("MonitiringDays_" + cnt).value;
    var PlnDuration= document.getElementById("DurationTxt_" + cnt).value;
            if(Type==1){
                    if(SchFreq <= 0 || SchFreq==""){
                        alert("Schedule Frequency Should Be Greater Than 0") ;
                        document.getElementById("MonitiringDays_" + cnt).value='<%=ConfigurationManager.AppSettings("ScheduleFreq")%>'
                    }
            }
            else if(Type==2){
                    if(PlnDuration <= 0 || PlnDuration==""){
                        alert("Monitoring Plan Duration Should Be Greater Than 0") ;
                        document.getElementById("DurationTxt_" + cnt).value='<%=ConfigurationManager.AppSettings("PlanDuration")%>'
                    }
            }
    }
    
    
    
      function UpdateStatus(Cnt)
         {
            var Status=0
            if (document.getElementById("StatusRdl_" + Cnt + "_0").checked==true)
                Status=1
            else if (document.getElementById("StatusRdl_" + Cnt + "_1").checked==true)  
                  Status=2
            if (document.getElementById("StatusRdl_" + Cnt + "_0").checked==true||document.getElementById("StatusRdl_" + Cnt + "_1").checked==true)
                 document.getElementById("StsTxt" + Cnt).value=Status
                 document.getElementById("StatusTxt" + Cnt).value=Status
         }
         
          function SetMSTFieldsValue(ID,SelDate)
          {
          var TT="<%=TransType%>"
            if(TT == 3 || TT==4){
            var cnt=ID.substring(ID.length-1,ID.length) //to get the row count
            var InitDateVal=document.getElementById("dateTxt" + cnt).value;
            var DDgap=DateDiffFun(InitDateVal,SelDate)
            if (DDgap < 0)
            {
               alert("Selected Monitoring End Date Should be Greater than Or Equal to Monitoring End Date")
               document.getElementById(ID + "_CalDateVal").value=SetDateFormat(InitDateVal);
               document.getElementById(ID + "_CalDateDisplay").value=SetDateFormat(InitDateVal) ;          
            }
           }      
          
          }
          
        function SetDateFormat(CurrentDate)
        {
            var m,d,y,Result;
            var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
            var nDate = new Date(CurrentDate)
            m = nDate.getMonth();
            d = nDate.getDate();
            y = nDate.getFullYear(); 

            var Result= d + '-' + monthname[m] + '-' + y  ;
            return Result;
        }

            function validateFieldTab(src,args) //For back button handling
            {
              var NewIsuFieldTblCnt=<%=EftPlnTabTblCnt%>
              var FieldCnt=document.getElementById("NumPlanReqTxt").value;
              if(FieldCnt>NewIsuFieldTblCnt||FieldCnt<NewIsuFieldTblCnt)
              {
                document.getElementById("NumPlanReqTxt").value=NewIsuFieldTblCnt;
              }
              
            }
    
makeFieldsEditable(parseInt(document.getElementById("NumPlanReqTxt").value),"<%=PlantType%>","<%=TransType%>")//for making effectivenes monitoring row disable



//for checking the Monitoring End Date with Shedule Frequency
function getDateDiff(time1, time2) {
            var str1= time1.split('/');
            var str2= time2.split('/');
            var t1 = new Date(str1[2], str1[0]-1, str1[1]);
            var t2 = new Date(str2[2], str2[0]-1, str2[1]);

            var diffMS = t1 - t2;               
            var diffS = diffMS / 1000;               
            var diffM = diffS / 60;      
            var diffH = diffM / 60;         
            var diffD = diffH / 24;
           
           return diffD;
}  

function ChkSheduleFrqWithMtrngEndDate(src,args)
    {	
    
        var MtrngDays=""
        var MtrngEndDate=""
        
            var dt= new Date();
           
            var m=dt.getMonth()+1;
            var d=dt.getDate();
            var y=dt.getFullYear();
            var dgap=0
            var Flag=0;
            
            var currdate=m+ "/" + d + "/" +y
        
            var Count=document.getElementById("NumPlanReqTxt").value;
            
       for(cnt=0;cnt < Count;cnt++)
       {
            MtrngDays=document.getElementById("MonitiringDays_" + cnt ).value
            MtrngEndDate=document.getElementById("MonitiringDate" + cnt + "_CalDateVal").value;
         
            dgap=getDateDiff(MtrngEndDate,currdate); 
         //   alert(dgap);
           
             if(dgap <= MtrngDays)
                    {
                    Flag=Flag+1;
                    }
                               
       } 
                    if(Flag > 0){
                          args.IsValid=false;
                          Page_IsValid=false;
                    } 
                      
    }	
</script>
<script language ="vbscript" >

  function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
  End function
  
</script>

</html>
