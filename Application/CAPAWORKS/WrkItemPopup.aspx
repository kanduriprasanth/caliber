<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WrkItemPopup.aspx.vb" Inherits="CAPAWORKS.WrkItemPopup" %>

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
    <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    
    <script type="text/javascript" language="javascript" src="../JScript/jquery-1.6.3.min.js" ></script>
    <script type="text/javascript" language="javascript" src="../JScript/Date.js" ></script>
    
  
 <style type="text/css">

.watermarkOn
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding:3px;
    border: 0px none;
    width: 130px; 
    Height: 20px;   
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat; 
    /*color: #C0C0C0; */
	font-style: italic;
}


.RoundedTxt
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding: 3px;
    border: 0px none;
    width: 130px; 
    Height: 20px;   
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat;    
}
    
    
 </style>
    
    <script language="javascript">
    
   
      
    
     function fnCheckAll()
        {
          var TestCnt=<%=TestCnt%>
          var ChkBoxId
          var chk=document.getElementById("TestChkAll").checked
       
          for(i=1;i<=TestCnt;i++){
             ChkBoxId="Chk"+i
               if(!document.getElementById(ChkBoxId).disabled) 
               {
                 document.getElementById(ChkBoxId).checked=chk 
               }
		    }
         }
     
    var RowCount=""
    var GrpName
    
      function FnUsersListPopUp(Rowcnt)
        {
            var WrkAllType=0
            var pageURL
            
            RowCount=Rowcnt

            if( document.getElementById("WrkAllType_"+ Rowcnt + "_0").checked== true)  WrkAllType=1
            else if( document.getElementById("WrkAllType_"+ Rowcnt + "_1").checked== true) WrkAllType=2
            
            if (WrkAllType==0) {  alert("Select Work Allocation Type ") }
            else
            {
                Grpname=document.getElementById("ActPlnInchargeTxt_"+Rowcnt).value
                
                if( WrkAllType ==1 ) 
                pageURL ="../EFormIssuance/InchargeList.aspx?IsuTypeID=<%=Request.QueryString("IsuTypeID")%>" + "&IssId=<%=Request.QueryString("IssId") %>" + "&GrpName=" + Grpname //+"&ListType="+ ListType //+ "&SplValReq="  +SplValReq + "&SplValfunID=" + SplValfunID
                else  if( WrkAllType ==2 ) 
                pageURL ="../IssueTypeConfig/RevAppListPopUp.aspx?IssId=<%=Request.QueryString("IssId") %>"   + "&Grpname=" + Grpname//+"&SplValReq="  + SplValReq + "&SplValfunID=" + SplValfunID

                SpWinObj = window.open(pageURL,'UserCode',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus(); 
             }  
          
        }
        
       function fnUserVal(UserNameVal,UserCodeVal,UserIdVal )
        {
            document.getElementById("UserNameLab"+RowCount).innerHTML =UserNameVal
            document.getElementById("ActPlnInchargeTxt_"+RowCount).value=UserNameVal
            document.getElementById("UserIdTxt_"+RowCount).value=UserIdVal
        }
        
        function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
        { 
            document.getElementById("UserNameLab"+RowCount).innerHTML =UsrGrpUCodeVal
            document.getElementById("ActPlnInchargeTxt_"+RowCount).value=UsrGrpUCodeVal
            document.getElementById("UserIdTxt_"+RowCount).value=UsrGrpIdVal
        }
    
    
  function handleMaskOpener()
    {
        if(document.getElementById("FlagValTxt"))
        {
            
        }
        else
        {
            window.setTimeout("ChaosePopup()",600)
        }
    }
    function ChaosePopup()
    {
        if (typeof(window.parent.window.CloseFunctionality) == "function")
        {
            window.parent.window.CloseFunctionality()
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
            if(e.ctrlLeft == true){return false}
            if(e.shiftLeft==true){return false}

          var iCode = ( e.keyCode || e.charCode );

          if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

          return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                || iCode == 9                        // Tab.
                )
        }
        
        
        
       function IsDigit2(e)  ///Function To check Numeric values And Allow , Also
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
                    //|| iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
        }
        
 </script>
 
 <script language="jscript">
    
      function CtrlValidation(src,args)
      {  
           args.IsValid=false;
           Page_IsValid=false;  
           
           var str =""
           var RowCountArr=new Array()
           var TestCnt=<%=TestCnt%>
           var ChkBoxId =""
           var RowCount =""
           
          
            for(i=1;i<=TestCnt;i++)
            {
                ChkBoxId="Chk"+i
                if(document.getElementById(ChkBoxId).checked==true){ RowCount += "," + i }
            }
            
            if(RowCount=="") { str = str + "Select Atleast One Work Item" + "\n -" ; }
            else
            { 
                
                  RowCountArr= RowCount.substring(1).split(",")
                  for(j=0;j<RowCountArr.length;j++)
                  {
                     if(document.getElementById("StartDate" + RowCountArr[j] ).value =="") { str = str + "Select Start Date for Work Item-" + RowCountArr[j] +"\n -" }
                     else
                      {
                         var Flag=VbStartDateValid(RowCountArr[j],ValidateDate(document.getElementById("StartDate" + RowCountArr[j] ).value)) ;
                         if(Flag==false) { str = str + "Start Date  must be greater than or equal to Current Date for Work Item-" + RowCountArr[j] + "\n -" }
                      }
                      if(document.getElementById("TargetDate" + RowCountArr[j] ).value ==""){ str = str + "Select TargetDate Date of Work Item-" + RowCountArr[j] +"\n -" }
                      else
                      {
                      
                        var StrDate=document.getElementById("StartDate" + RowCountArr[j]).value
                        var TArGetDate= document.getElementById("TargetDate" + RowCountArr[j]).value
                        var flag1=VbTargetDateValid(RowCountArr[j],ValidateDate(StrDate),ValidateDate(TArGetDate)) ;
                        if(flag1==false){  str = str + "Target Date must be greater than or equal to  Start Date for Work Item-" + RowCountArr[j] + "\n -"  }
                      }
                      
                      if(document.getElementById("UserIdTxt_"+RowCountArr[j]).value !="") 
                      { 
                        if (WrkAllExpMsg !="") str = str + WrkAllExpMsg
                        fnChkUserGrpAuthentication(<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value)
                      }
                      else
                         str = str + "Select Assigned User Name for Work Item-" + RowCountArr[j] + "\n -" 
                  }
             }
             if(str!="") {  src.errormessage=str.substring(0,str.length-3) }
             else
              {
                args.IsValid=true;
                Page_IsValid=true;  	
              }
      }
      
      
      
    
      function CtrlValidation(src,args)
      {  
           args.IsValid=false;
           Page_IsValid=false;  
           
           var str =""
           var RowCountArr=new Array()
           var TestCnt=<%=TestCnt%>
           var ChkBoxId =""
           var RowCount =""
           
          
            for(i=1;i<=TestCnt;i++)
            {
                ChkBoxId="Chk"+i
                if(document.getElementById(ChkBoxId).checked==true){ RowCount += "," + i }
            }
            
            if(RowCount=="") { str = str + "Select Atleast One Work Item" + "\n -" ; }
            else
            { 
                
                  RowCountArr= RowCount.substring(1).split(",")
                  
                  for(j=0;j<RowCountArr.length;j++)
                  {
                     
                     if(document.getElementById("StartDate" + RowCountArr[j] ).value =="") { str = str + "Select Start Date for Work Item-" + RowCountArr[j] +"\n -" }
                     else
                      {
                         var Flag=VbStartDateValid(RowCountArr[j],ValidateDate(document.getElementById("StartDate" + RowCountArr[j] ).value)) ;
                         if(Flag==false) { str = str + "Start Date  must be greater than or equal to Current Date for Work Item-" + RowCountArr[j] + "\n -" }
                      }
                      if(document.getElementById("TargetDate" + RowCountArr[j] ).value ==""){ str = str + "Select TargetDate Date of Work Item-" + RowCountArr[j] +"\n -" }
                      else
                      {
                      
                        var StrDate=document.getElementById("StartDate" + RowCountArr[j]).value
                        var TArGetDate= document.getElementById("TargetDate" + RowCountArr[j]).value
                        var flag1=VbTargetDateValid(RowCountArr[j],ValidateDate(StrDate),ValidateDate(TArGetDate)) ;
                        
                        if(flag1==false){  str = str + "Target Date must be greater than or equal to  Start Date for Work Item-" + RowCountArr[j] + "\n -"  }
                      }
                      
                      if(document.getElementById("UserIdTxt_"+RowCountArr[j]).value !="") 
                      { 
//                          if (document.getElementById("SplValReqTxt" + RowCountArr[j]).value==1)
//                            {
                               if (WrkAllExpMsg !="") str = str + WrkAllExpMsg
          
//                                if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_0").checked== true)
//                                    //CallFunction(document.getElementById("SplValfunIdTxt" + RowCountArr[j]).value,<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value)
//                                    fnCheekuserauthentication(<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value) //<%=Request.QueryString("SplValfunID") %>,
//                                else if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_1").checked== true)
//                                    fnChkUserGrpAuthentication(<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value)
//                            }   
                      }
                      else
                         str = str + "Select Assigned User Name for Work Item-" + RowCountArr[j] + "\n -" 
                  }
             }
             if(str!="") {  src.errormessage=str.substring(0,str.length-3) }
             else
              {
                args.IsValid=true;
                Page_IsValid=true;  	
                ShowMask()
              }
      }
      
      
      
     
      function CheckAssignTo()
      {
//           var RowCountArr=new Array()
//           var TestCnt=<%=TestCnt%>
//           var ChkBoxId =""
//           var RowCount =""
//           
//          
//            for(i=1;i<=TestCnt;i++)
//            {
//                ChkBoxId="Chk"+i
//                if(document.getElementById(ChkBoxId).checked==true) RowCount += "," + i 
//            }
//            
//            if(RowCount!="")
//             {  
//                  RowCountArr= RowCount.substring(1).split(",")
//                  
//                  for(j=0;j<RowCountArr.length;j++)
//                  {
//                      if(document.getElementById("UserIdTxt_"+RowCountArr[j]).value !="") 
//                      { 
//                          if (document.getElementById("SplValReqTxt" + RowCountArr[j]).value==1)
//                            {
//                                if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_0").checked== true)
//                                    fnCheekuserauthentication(<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value) //<%=Request.QueryString("SplValfunID") %>,
//                                else if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_1").checked== true)
//                                    fnChkUserGrpAuthentication(<%=Request.QueryString("IssId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value)
//                            }   
//                      }
//                      
//                  }
//             }

              document.getElementById("AllocateWork").click();  //if (WrkAllExpMsg =="")
      }
      
     
       function SetWorkItems(WitID,WitCode) {}
       
        // Function to remove validation at Enter event
    
    function FnChageToBilur(e,obj)
    {
        if ( !e ) e = event ;
        if(e.shiftLeft==true)return false

        var iCode = ( e.keyCode || e.charCode );
        if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
        iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

        if (iCode==13) obj.blur();
    }
        
 </script>
     
</head>

 <body onload="$(document).ready(getdate)" >

    <form id="Form1" method="post" runat="server">
        
        <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                    <asp:Literal ID="DateLtrl" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="DatID"  runat=server CssClass="watermarkOn"   CausesValidation=false AutoPostBack=false Text='mm/dd/yyyy' AutoCompleteType=none Height='20px' Width='130px' onChange='SetAllWrkDates()' onkeypress='FnChageToBilur(event,this)'></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="ResTab">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
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
                                 
                                 <input type=button onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" value="Submit" onclick="CheckAssignTo()" />
                                <asp:Button ID="AllocateWork" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" >
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
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
                    <asp:TextBox ID="FlagValTxt" runat="server" Text="0" ></asp:TextBox>
                    <asp:TextBox ID="HolidayListTxt" runat="server"  CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ExpMessageTxt" runat="server"  CssClass="HideRow" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
</body>



<script language="vbscript">
    
    function VbStartDateValid(RowCount,SDate) 

'        SDate=document.getElementById("StartDate" +RowCount).value
        if SDate="" then exit function

        ThisMonth = <%=ThisMonth%>
        ThisYear = <%=ThisYear%>
        ThisDay = <%=ThisDay%>
        Today=dateSerial(ThisYear,ThisMonth,ThisDay) 

        IDateAry=split(SDate,"/")	
        IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))

        DDgap=DateDiff("d",Today,IDateVal)

        if DDgap<0 then
        VbStartDateValid=false
        end if  

    End function 
 
    function VbTargetDateValid(RowCount,StartDate,TargetDate)

       'StartDate=document.getElementById("StartDate" + RowCount ).value
        if StartDate="" then exit function

        'TargetDate=document.getElementById("TargetDate" + RowCount ).value
        if TargetDate="" then exit function

        StartDateAry=split(StartDate,"/")
        TargetDateAry=split(TargetDate,"/")
        StartDateVal=dateSerial(StartDateAry(2),StartDateAry(0),StartDateAry(1))
        TargetDateVal=dateSerial(TargetDateAry(2),TargetDateAry(0),TargetDateAry(1))

        DDgap=DateDiff("d", TargetDateVal,StartDateVal)
        if DDgap>0 then
            VbTargetDateValid=false
        end if

    End function 
 
 
    function CalculateDate(Value,DateFormat)
        if value="" or (not (IsNumeric(Value))) then exit function
        CalculateDate=DateAdd("d",value,DateFormat)
        'CalculateDate= month(CalculateDate) &"/" & day(CalculateDate)  & "/" & year(CalculateDate)
    end function

    function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
    End function
      	
    function DateSerialValue(Year,Month,Day)
     DateSerialValue= dateSerial(Year,Month,Day)
    End function
    
    </script>
    




<script language=javascript>


if ("<%=page.IsPostBack %>"=="False") { SetDatesOnLoad(); }

function SetDatesOnLoad()
    {
        var WrkItemCnt = <%=WrkItemCnt%>
        var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
         var Plandate=new Date(ActPlanTargetdate)
         
        var Startobj,TargetObj 
        var nDayDuration,Dependency,StartDate,TargetDate,CurrentDate,HasDependency;
        var today=new Date();

 
        //var SampledateArr=[] ;
        //SampledateArr=document.getElementById("DatID").value.split("-")
        var Sampledate=document.getElementById("DatID").value //SampledateArr[1] + '/' + SampledateArr[0] + '/' + SampledateArr[2]
        
        if (CurrentDate != "") { CurrentDate= document.getElementById("DatID").value; }
        else { CurrentDate= (today.getMonth()+1)+ '/' + today.getDate()  +  '/' +  today.getFullYear(); }

        for(var i=1; i<=WrkItemCnt ;i++)
        {

            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == 0 ? false : true;
            
//            nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
//            nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

            if(HasDependency == true)
            {
                CheckDepVal(i,false,0);
            }
            else
            {
                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                StartDate=CheckDayOfdate(CurrentDate);
//                if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate)) } //CheckDayOfdate( CalculateDate (nDayDuration,SetDateFormat(StartDate) ) );
//                else { TargetDate=StartDate; }
                TargetDate=Plandate

                Startobj.value=SetDateFormat(StartDate);
                TargetObj.value=SetDateFormat(TargetDate);
            }
        }
    }
    
    function CheckDepVal1(RowCnt,ContinueLoop,FunCalVAl) 
    {
        ContinueLoop = typeof ContinueLoop == "undefined" ? true : false;

        var DependentVal=document.getElementById("WrkDependencyTxt_" + RowCnt).value
         var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
         var Plandate=new Date(ActPlanTargetdate)

        if (DependentVal != "" && DependentVal != "0")
        {
            var DependentVlArr=new Array()
            var dateArr=new Array()
            var Startobj,TargetObj,DateGap,MaxTarDate,CurrentStrtDate;

            Startobj = document.getElementById("StartDate" + RowCnt);
            TargetObj = document.getElementById("TargetDate" + RowCnt);

            DependencyArr= DependentVal.split(","); 

            for(var i=0;i<=DependencyArr.length-1;i++)
            {
                if (DependencyArr[i] >= (RowCnt)) 
                {
                    alert("Current Work Must Depend On Above Work Item(s)" );
                    document.getElementById("WrkDependencyTxt_" + RowCnt).value="";
                    return;
                }
                else { dateArr.push(document.getElementById("TargetDate" + DependencyArr[i]).value); }
            }

            MaxTarDate= ReturnMaxDate(dateArr)

            var CurrentStrtDate= document.getElementById("StartDate" + RowCnt).value
            if (( CurrentStrtDate != "mm/dd/yyyy") && (CurrentStrtDate != "")) 
            {

                CurrentStrtDate=SetDateFormat(document.getElementById("StartDate" + RowCnt).value);
                var DateDiff=DateDiffFun(MaxTarDate,CurrentStrtDate)
                if (DateDiff>=0) { MaxTarDate=CurrentStrtDate }
                else 
                {
                    if (FunCalVAl==2) 
                    {
                        alert (" Start Date Must Be Grater Or Equal To It's Dependent(s) Target Date"); 
                        window.navigate
                        document.getElementById("StartDate" + RowCnt).value=MaxTarDate;
                        return false ;
                    }
                    else MaxTarDate=MaxTarDate;
                }  
            }    


//            if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(MaxTarDate)) }  //CheckDayOfdate( CalculateDate ( nDayDuration,SetDateFormat(MaxTarDate) ) );
//            else { TargetDate=MaxTarDate; }

            Startobj.value=MaxTarDate
            TargetObj.value=SetDateFormat(Plandate);//TargetDate);

            if (FunCalVAl==1){
            if(ContinueLoop==true)
            Formatdate(RowCnt+1,ContinueLoop)}
        }  
     } 
     
     
     function CheckStartDate(RowCnt)
    {
        var today=new Date()
        var CurrentDate= DateSerialValue(today.getFullYear(),(today.getMonth()+1),today.getDate()) ;
        var Curstartdate=document.getElementById("StartDate" + RowCnt).value;
        
        
        if (Curstartdate == "")
        {
          if (RowCnt == 1)
          {
          // alert("Invalid Date Format; Please Check.");
               if (( document.getElementById("DatID").value== "") || (document.getElementById("DatID").value=="mm/dd/yyyy"))
                 { document.getElementById("StartDate" + RowCnt).value=CurrentDate }
                 else  {document.getElementById("StartDate" + RowCnt).value=document.getElementById("DatID").value; }
             
           }
          else
          {
            HasDependency = document.getElementById("WrkDependencyTxt_" + RowCnt).value == "" ? false : true;
            if(HasDependency == true)  
             {
                //alert("Invalid Date Format; Please Check.");         
               CheckDepVal1(RowCnt,false,1); 
             }
            else
              { 
                if (( document.getElementById("DatID").value== "") || (document.getElementById("DatID").value=="mm/dd/yyyy"))
                 { document.getElementById("StartDate" + RowCnt).value=CurrentDate }
                 else  {document.getElementById("StartDate" + RowCnt).value=document.getElementById("DatID").value; }
              }
           } 
      
          return false;
        }
         Curstartdate = ValidateDate(Curstartdate);
        if (Curstartdate==0){return false;}
        
        var today1=new Date(Curstartdate)
        var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
        var Plandate=new Date(ActPlanTargetdate)
        var actionplandate=DateSerialValue(Plandate.getFullYear(),(Plandate.getMonth()+1),Plandate.getDate())
        Curstartdate=DateSerialValue(today1.getFullYear(),(today1.getMonth()+1),today1.getDate())
        

        if (DateDiffFun(CurrentDate,Curstartdate) < 0) 
        {
            alert(" Date Should Not be Less Than Current Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("StartDate" + RowCnt) )   document.getElementById("StartDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
        
        if (checkdate(Curstartdate)== false ) 
        {
            alert("Given Date Fallen In Holiday List Or It Belog To Week End ")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("StartDate" + RowCnt) )   document.getElementById("StartDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }    

        if(DateDiffFun(actionplandate,Curstartdate) > 0)
        {
            alert(" Start Date Should Not be Grater Than Action Plan Target Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("StartDate" + RowCnt) )   document.getElementById("StartDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
    }
    
    
    function CheckTargetDate(RowCnt,ContinueLoop)
    {
      
        var today=new Date()
        var CurrentDate= DateSerialValue(today.getFullYear(),(today.getMonth()+1),today.getDate()) ;
        var Curstartdate=document.getElementById("StartDate" + RowCnt).value;
        var Curtargetdate=document.getElementById("TargetDate" + RowCnt).value;
        
          var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
        var Plandate=new Date(ActPlanTargetdate)
        
        if (Curtargetdate == "")
        {
          //alert("Enter Valid Date");
          document.getElementById("TargetDate" + RowCnt).value= SetDateFormat(ActPlanTargetdate);
          return false;
        }
        
//        Curstartdate = ValidateDate(Curstartdate);
//        if (Curstartdate==0){return false;}
        
        Curtargetdate = ValidateDate(Curtargetdate);
        if (Curtargetdate==0){return false;}
        
        var today1=new Date(Curstartdate)
        var today2=new Date(Curtargetdate)
      
        
        var actionplandate=DateSerialValue(Plandate.getFullYear(),(Plandate.getMonth()+1),Plandate.getDate())
        Curstartdate=DateSerialValue(today1.getFullYear(),(today1.getMonth()+1),today1.getDate())
        Curtargetdate=DateSerialValue(today2.getFullYear(),(today2.getMonth()+1),today2.getDate())

        if (DateDiffFun(CurrentDate,Curtargetdate) < 0) 
        {
            alert(" Target Date Should Not be Less Than Current Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
        
        if (DateDiffFun(Curstartdate,Curtargetdate) < 0) 
        {
            alert(" Target Date Should Not be Less Than Start Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
       
        if (checkdate(Curtargetdate)== false ) 
        {
            alert("Given Date Fallen In Holiday List Or It Belog To Week End ")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }    

        if(DateDiffFun(actionplandate,Curtargetdate) > 0)
        {
            alert(" Target Date Should Not be Grater Than Action Plan Target Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
        
        
        if (CheckDepVal1(RowCnt,false,2) ==false) return ;

        ContinueLoop = typeof ContinueLoop == "undefined" ? false : true; 
       
        var Startobj,TargetObj 
        var StartDate,TargetDate,OldStartDate,Dependency;
        var WrkItemCnt = <%=WrkItemCnt%>
        var DependencyArr =new Array()
        var AllDepValeArr=new Array()
        var HasDuration = false;

        if(RowCnt > WrkItemCnt) return;

        for(var i=RowCnt;i<=WrkItemCnt;i++)
        {
            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
            Dependency=document.getElementById("WrkDependencyTxt_" + i).value;

            if(HasDependency == true)   
            { 
                CheckDepVal1(i,false,1);
            }
            else
            {
                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                if (i==RowCnt) { StartDate=document.getElementById("StartDate" + i).value;}
                else { StartDate=document.getElementById("TargetDate" + (i-1) ).value}        

//                if (nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate)); }
//                else { TargetDate=StartDate }
                TargetDate=Plandate;
                Startobj.value=SetDateFormat(StartDate);
                TargetObj.value=SetDateFormat(TargetDate);
            }
        }  
        
        
    }
    
    
     //Function To check Date
    
    function CheckDayOfdate(ChkDate)
    {
        var today=new Date(ChkDate)
        if (checkdate(ChkDate)== true )   { return ChkDate ; }
        else
        {
            var CalDate=CalculateDate(1,SetDateFormat(ChkDate));
            return CheckDayOfdate(CalDate);
        } 
    }
    
      //function to check date not Weekend and holidays list
   
    function checkdate(caldate)
    {
        var Todate=new Date(caldate)
        var WekDay = Todate.getDay()
        var HolidayDatArr =new Array()
        var HolidayList= document.getElementById("HolidayListTxt").value;

        if ( HolidayList != "") {  HolidayDatArr=HolidayList.split("#*#");  }

        if ( HolidayList != "")
        {
            if ( (WekDay != 0)  &&  (jQuery.inArray($.trim(SetDateFormat(caldate,2)), HolidayDatArr) == -1) ) { return true; }  //(WekDay != 6) Remove Saturday From Holoday List
            else { return false; }
        }
        else if ( (WekDay != 0)  )  { return true; } //(WekDay != 6) Remove Saturday From Holoday List
        else { return false;}

    }
     
     //function to set date format 
    function SetDateFormat(CurrentDate,Type)
    {
        var m,d,y,Result;
        var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
        var nDate = new Date(CurrentDate)
        m = nDate.getMonth();
        d = nDate.getDate();
        y = nDate.getFullYear(); 
        if (Type==2) { Result= (m+1) + '/' +  d + '/' + y }
        else {  Result=monthname[m] + ' ' +  d + ', ' + y }
        return Result;
    }
    
     //function to calculate max Date
   
    function ReturnMaxDate(dateArr)
    {
        if (dateArr.length >1)
        {
            var MaxDate,NTargetDate,DateGap;
            for (var k=1; k<dateArr.length;k++ )
            {
                if (k==1) { MaxDate=dateArr[k-1]; }
                NTargetDate=dateArr[k];
                DateGap=DateDiffFun(SetDateFormat(MaxDate),SetDateFormat(NTargetDate));
                if (DateGap>0) {MaxDate=NTargetDate}
                else {MaxDate=MaxDate}
            }
        }
        else { MaxDate=dateArr[0]; }
        
        return SetDateFormat(MaxDate);
    }
    
     //Function To Set All Dates On Change Of Main Start Date
  
   function SetAllWrkDates()
   {
        
//        var SampledateArr=[] ;
//        SampledateArr=document.getElementById("DatID").value.split("-")    

         var Sampledate=document.getElementById("DatID").value //SampledateArr[1] + '/' + SampledateArr[0] + '/' +  SampledateArr[2]
         var today=new Date()
         var CurrentDate= (today.getMonth()+1)+ '/' + today.getDate()  +  '/' +  today.getFullYear();


        if (Sampledate !="")
        {
        
            var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
            var Plandate=new Date(ActPlanTargetdate)
            var actionplandate=DateSerialValue(Plandate.getFullYear(),(Plandate.getMonth()+1),Plandate.getDate())
        
            if (ValidateDate(Sampledate)== 0) return;

           
            var today1=new Date(Sampledate)
            Sampledate=DateSerialValue(today1.getFullYear(),(today1.getMonth()+1),today1.getDate())
        
            if (DateDiffFun(CurrentDate,Sampledate) < 0) 
            {
                alert(" Date Should Not be Less Than Current Date")
                var Rtnval=Tosetoldval()
                if  (OldVal.split("#*#")[1] == "DatID" )   document.getElementById("DatID").value=OldVal.split("#*#")[0]
                return ;
            }
//            if (checkdate(Sampledate)== false ) 
//            {
//                alert("Given Date Fallen In Holiday List Or It Belong To Week End ")
//                var Rtnval=Tosetoldval()
//                if  (OldVal.split("#*#")[1] == "DatID" )   document.getElementById("DatID").value=OldVal.split("#*#")[0]
//                return ;
//            }

            if(DateDiffFun(actionplandate,Sampledate) > 0)
            {
            alert(" Start Date Should Not be Grater Than Action Plan Target Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == "DatID" )   document.getElementById("DatID").value=OldVal.split("#*#")[0]
            return ;
            }

            today=new Date(Sampledate)

            var WrkItemCnt = <%=WrkItemCnt%>
            var Startobj,TargetObj 
            var nDayDuration,Dependency,StartDate,TargetDate,CurrentDate,HasDependency;
                
            for(var i=1; i<=WrkItemCnt ;i++)
            {
//                nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
//                nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

                HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;

                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                if (HasDependency == false)
                {
                    StartDate=Sampledate;
//                    if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate));}  //CheckDayOfdate(  CalculateDate(nDayDuration,SetDateFormat(StartDate)) );
//                    else { TargetDate=StartDate; }
                    TargetDate=Plandate
                    Startobj.value=SetDateFormat(StartDate);
                    TargetObj.value=SetDateFormat(TargetDate);
                }
                else  {  CheckDepVal(i,false,0); }
            }
            
        }
        
        else
        {
         if  (OldVal.split("#*#")[1] == "DatID")  { document.getElementById("DatID").value=OldVal.split("#*#")[0] ; }
         else  { document.getElementById("DatID").value=SetDateFormat(CurrentDate);  }
        }
   }
    

</script>


</html>
