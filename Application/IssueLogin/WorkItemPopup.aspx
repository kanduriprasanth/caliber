<%@ Page Language="vb" AutoEventWireup="false" Codebehind="WorkItemPopup.aspx.vb"
    Inherits="IssueLogin.WorkItemPopup" %>

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
        $(document).ready(function () {
            $("[id^='TimeDurationTxt_']").bind('paste', function() {
                return false;
            })
        });

    function fnCheckAll()
    {
        var TestCnt=<%=TestCnt%>
        var ChkBoxId
        var chk=document.getElementById("TestChkAll").checked

        for(var i=1;i<=TestCnt;i++)
        {
            var ObjIns = document.getElementById("Chk"+i)
            if(!ObjIns.disabled) 
            {
                if(ObjIns.className != "HideRow")
                    ObjIns.checked=chk
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
            Grpname=document.getElementById("ActPlnInchargeHidTxt_"+Rowcnt).value
            if( WrkAllType ==1 ) 
                pageURL ="../EFormIssuance/InchargeList.aspx?IsuTypeID=<%=Request.QueryString("IsuTypeID")%>" + "&IssId=<%=Request.QueryString("IssueId") %>" + "&GrpName=" + Grpname //+"&ListType="+ ListType //+ "&SplValReq="  +SplValReq + "&SplValfunID=" + SplValfunID
            else  if( WrkAllType ==2 ) 
            {
                Grpname=document.getElementById("ActPlnInchargeHidTxt_"+Rowcnt).value
                pageURL ="../IssueTypeConfig/RevAppListPopUp.aspx?IssId=<%=Request.QueryString("IssueId") %>"   + "&Grpname=" + Grpname//+"&SplValReq="  + SplValReq + "&SplValfunID=" + SplValfunID
            }    
            
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2;
            
            SpWinObj = window.open(pageURL,'UserCode',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus(); 
        }
    }
        
       function fnUserVal(UserNameVal,UserCodeVal,UserIdVal )
        {
            document.getElementById("UserNameLab"+RowCount).innerHTML =UserNameVal
            document.getElementById("ActPlnInchargeTxt_"+RowCount).value=UserNameVal
            document.getElementById("UserIdTxt_"+RowCount).value=UserIdVal
//            if (UserNameVal != "")
//                document.getElementById("ActPlnInchargeHidTxt_"+RowCount).value=UserNameVal
        }
        
        function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
        { 
            document.getElementById("UserNameLab"+RowCount).innerHTML =UsrGrpUCodeVal
            document.getElementById("ActPlnInchargeTxt_"+RowCount).value=UsrGrpUCodeVal
            document.getElementById("UserIdTxt_"+RowCount).value=UsrGrpIdVal
            if (UsrGrpUCodeVal != "")
                document.getElementById("ActPlnInchargeHidTxt_"+RowCount).value=UsrGrpUCodeVal
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
           if (e.altKey || e.ctrlKey || e.shiftKey)
                return false;
 

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

           if (e.altKey || e.ctrlKey || e.shiftKey)
                return false;

            var iCode = ( e.keyCode || e.charCode );

            if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;
            return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                || iCode == 44                        // Delete
                || iCode == 9                        // Tab.
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
                      
                      //if(document.getElementById("ActPlnInchargeHidTxt_"+RowCountArr[j]).value =="")  //UserIdTxt_
                      if(document.getElementById("UserNameLab"+RowCountArr[j]).innerHTML =="")  //UserIdTxt_
                            str = str + "Select Value For: " + "Incharge - " + RowCountArr[j] + "\n -" 
                  }
             }
             if(str!="") {  src.errormessage=str.substring(0,str.length-3); }
             else
              {
                args.IsValid=true;
                Page_IsValid=true;  	
                    ShowMask()
              }
      }
      
      
      
     
      function CheckAssignTo()
      {
  
      
           var RowCountArr=new Array()
           var TestCnt=<%=TestCnt%>
           var ChkBoxId =""
           var RowCount =""
           
          
            for(i=1;i<=TestCnt;i++)
            {
                ChkBoxId="Chk"+i
                if(document.getElementById(ChkBoxId).checked==true) RowCount += "," + i 
            }
            
            if(RowCount!="")
             {  
                  RowCountArr= RowCount.substring(1).split(",")
                  
                  for(j=0;j<RowCountArr.length;j++)
                  {
                      if(document.getElementById("UserIdTxt_"+RowCountArr[j]).value !="") 
                      { 
                          if (document.getElementById("SplValReqTxt" + RowCountArr[j]).value==1)
                            {
                                if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_0").checked== true)
                                    fnCheekuserauthentication(<%=Request.QueryString("IssueId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value) //<%=Request.QueryString("SplValfunID") %>,
                                else if( document.getElementById("WrkAllType_"+ RowCountArr[j] + "_1").checked== true)
                                    fnChkUserGrpAuthentication(<%=Request.QueryString("IssueId") %>,document.getElementById("UserIdTxt_"+RowCountArr[j]).value)
                            }   
                      }
                      
                  }
             }
              document.getElementById("AllocateWork").click();  //if (WrkAllExpMsg =="")
      }
      
     
      
 </script>
                     
</head>

 <body onload="$(document).ready(getdate);" >

    <form id="Form1" method="post" runat="server">
        
        <asp:Table ID="Table1" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal> 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Literal ID="DateLtrl" runat="server"></asp:Literal>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="DatID" MaxLength="15"  runat=server CssClass="watermarkOn"    AutoPostBack=false Text='mm/dd/yyyy' AutoCompleteType=none Height='20px' Width='130px' onChange='SetAllWrkDates()' onkeypress='FnChageToBilur(event,this)'></asp:TextBox>
                    
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
                    <asp:RequiredFieldValidator ID="stdatetxtval" runat="server" InitialValue="mm/dd/yyyy" ControlToValidate="DatID" ErrorMessage="Enter Value For: Start Date"></asp:RequiredFieldValidator>                
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

 <script language="javascript">
 
  	function fnCrGetCode(RowCnt)
	{ 
        var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
        var KdIdVal=document.all("KdId"+ RowCnt).innerText
        opener.fnCrSetToCode(KdIdVal,KfLableVal )
	}
	function fnCrCancel()
	{
		opener.fnCrSetToCode('','')
		window.self.close()
	}
	
	//document.oncontextmenu=new Function("return false")
	
	
	function fnCrformSubmit()
	{}
	
	function fnCrCloseWin(){
		opener.fnCrformSubmit()
		window.self.close()
	}
        
    
    function ClearuserSelection(RowCnt)
    {
    
       document.getElementById("UserNameLab"+RowCnt).innerHTML =""
       document.getElementById("UserIdTxt_"+RowCnt).value=""
      
    }
 </script>
 
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
            if ( (WekDay != 0)  &&  (jQuery.inArray($.trim(SetDateFormat(caldate,2)), HolidayDatArr) == -1) ) { return true; }  //&& (WekDay !=6)  Remove Saturday From Holoday List
            else { return false; }
        }
        else if  (WekDay != 0)   { return true; }  // && (WekDay !=6) Remove Saturday From Holoday List
        else { return false;}

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
     
     //Funcrtion to calculate Target date 
     
    function calTagDate(nDayDuration,ChkDate)
    {
        var oldDate,NewDate,Caldate,WekDay;
        NewDate=ChkDate

        for(var i=0;i<nDayDuration;i++)
        {
            Caldate = CalculateDate(1,NewDate)
            if (checkdate(Caldate)== true ) 
            {
                oldDate=NewDate
                NewDate=Caldate
            }
            else 
            {
                i=i-1;
                oldDate=NewDate;
                NewDate=Caldate;
            }
        }
        
         //NewDate = ValidateDate(NewDate);
         return NewDate;
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
        else {  Result=monthname[m] + ' ' +  d + ', ' + y  }  // 
        return Result;
    }
    
    
    
   // Function TO saet Date on Page Load
   
   if ("<%=page.IsPostBack %>"=="False") { SetDatesOnLoad(); }
   
    function SetDatesOnLoad()
    {
        var WrkItemCnt = <%=WrkItemCnt%>
        var Startobj,TargetObj 
        var nDayDuration,Dependency,StartDate,TargetDate,CurrentDate,HasDependency;
        var today=new Date();

        if (CurrentDate != "" || Curstartdate !="mm/dd/yyyy") { CurrentDate= document.getElementById("DatID").value; }
        else { CurrentDate= (today.getMonth()+1)+ '/' + today.getDate()  +  '/' +  today.getFullYear(); }

        for(var i=1; i<=WrkItemCnt ;i++)
        {

            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == 0 ? false : true;
            
            nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
            nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

            if(HasDependency == true)
            {
                CheckDepVal(i,false,0);
            }
            else
            {
                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                StartDate=CheckDayOfdate(CurrentDate);
                if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate)) } //CheckDayOfdate( CalculateDate (nDayDuration,SetDateFormat(StartDate) ) );
                else { TargetDate=StartDate; }

                Startobj.value=SetDateFormat(StartDate);
                TargetObj.value=SetDateFormat(TargetDate);
            }
        }
    }
     
     
   // Function TO Set dates base don Depdent value

    function CheckDepVal(RowCnt,ContinueLoop,FunCalVAl) 
    {
        ContinueLoop = typeof ContinueLoop == "undefined" ? true : false;

        var DependentVal=document.getElementById("WrkDependencyTxt_" + RowCnt).value

        if (DependentVal != "" && DependentVal != "0")
        {
            var nDayDuration = document.getElementById("TimeDurationTxt_" + RowCnt).value;
            nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

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
               // if (DateDiff>=0) { 
                //MaxTarDate=CurrentStrtDate
                //}
                if (DateDiff <0)
                {
                    if (FunCalVAl==2) 
                    {
                        alert (" Start Date Must Be Grater Or Equal To It's Dependent(s) Target Date"); 
                        document.getElementById("StartDate" + RowCnt).value=MaxTarDate;
                        return false ;
                    }
                    else MaxTarDate=MaxTarDate;
               }  
            }    

            if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(MaxTarDate)) }  //CheckDayOfdate( CalculateDate ( nDayDuration,SetDateFormat(MaxTarDate) ) );
            else { TargetDate=MaxTarDate; }

            Startobj.value=MaxTarDate
            TargetObj.value=SetDateFormat(TargetDate);

            if (FunCalVAl==1){
            if(ContinueLoop==true)
            Formatdate(RowCnt+1,ContinueLoop)}
        }  
        else
        {
          SetDatesOnLoad()
        }
        
      
    } 
   
  
  //Function To Set All Dates On Change Of Main Start Date
  
   function SetAllWrkDates()
   {
        var Sampledate=document.getElementById("DatID").value

        var today=new Date()
        var CurrentDate= (today.getMonth()+1)+ '/' + today.getDate()  +  '/' +  today.getFullYear();

        if (Sampledate !="" && Sampledate != "mm/dd/yyyy")
        {
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
            if (checkdate(Sampledate)== false ) 
            {
                alert("Given Date Fallen In Holiday List Or It Belong To Week End ")
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
                nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
                nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

                HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;

                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                if (HasDependency == false)
                {
                    StartDate=Sampledate;
                    if(nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate));}  //CheckDayOfdate(  CalculateDate(nDayDuration,SetDateFormat(StartDate)) );
                    else { TargetDate=StartDate; }

                    Startobj.value=SetDateFormat(StartDate);
                    TargetObj.value=SetDateFormat(TargetDate);
                }
                else  {  CheckDepVal(i,false,0); }
            }
            
        }
        else
        {
         if  (OldVal.split("#*#")[1] == "DatID" )  { document.getElementById("DatID").value=OldVal.split("#*#")[0] ; }
         else  { document.getElementById("DatID").value=SetDateFormat(CurrentDate);  }
        }
   }
   
   
   // functio  to chaged dates baced on  onchange event of any start date 
   
    function Changedates(RowCnt,ContinueLoop)
    {
        var today=new Date()
        var CurrentDate= DateSerialValue(today.getFullYear(),(today.getMonth()+1),today.getDate()) ;
        var Curstartdate=document.getElementById("StartDate" + RowCnt).value;
        if (Curstartdate == "" || Curstartdate =="mm/dd/yyyy")
        {
           
         //alert("Invalid Date Format; Please Check.");
          if (RowCnt == 0)
          {
            if (( document.getElementById("DatID").value== "") || (document.getElementById("DatID").value=="mm/dd/yyyy"))
             { document.getElementById("StartDate" + RowCnt).value=CurrentDate }
             else  {
              document.getElementById("StartDate" + RowCnt).value=ValidateDate(document.getElementById("DatID").value); }
           
          }
          else
          {
            HasDependency = document.getElementById("WrkDependencyTxt_" + RowCnt).value == "" ? false : true;
            if(HasDependency == true)  { CheckDepVal(RowCnt,false,1); }
            else { if (( document.getElementById("DatID").value== "") || (document.getElementById("DatID").value=="mm/dd/yyyy"))
             { document.getElementById("StartDate" + RowCnt).value=CurrentDate }
             else  {
             document.getElementById("StartDate" + RowCnt).value=ValidateDate(document.getElementById("DatID").value); }}
           } 
      
          return false;
        }
        Curstartdate = ValidateDate(Curstartdate);
        if (Curstartdate==0){return false;}
        
        var today1=new Date(Curstartdate)
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
            alert("Given Date Fallen In Holiday List Or It Belong To Week End ")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("StartDate" + RowCnt) )   document.getElementById("StartDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }    
        if (CheckDepVal(RowCnt,false,2) ==false) return ;

        ContinueLoop = typeof ContinueLoop == "undefined" ? false : true; 
       
        var Startobj,TargetObj 
        var nDayDuration,StartDate,TargetDate,OldStartDate,Dependency;
        var WrkItemCnt = <%=WrkItemCnt%>
        var DependencyArr =new Array()
        var AllDepValeArr=new Array()
        var HasDuration = false;

        if(RowCnt > WrkItemCnt) return;

        for(var i=RowCnt;i<=WrkItemCnt;i++)
        {
            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
              
            nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
            nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);
            document.getElementById("TimeDurationTxt_" + i).value=nDayDuration

            Dependency=document.getElementById("WrkDependencyTxt_" + i).value;

            if(HasDependency == true)   
            { 
                CheckDepVal(i,false,1);
            }
            else
            {
                Startobj = document.getElementById("StartDate" + i );
                TargetObj = document.getElementById("TargetDate" + i );

                StartDate=document.getElementById("StartDate" + i).value;
//                if (i==RowCnt) { StartDate=document.getElementById("StartDate" + i).value;}
//                else { StartDate=document.getElementById("TargetDate" + (i-1) ).value}        

                if (nDayDuration != 0) { TargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate)); }
                else { TargetDate=StartDate }

                Startobj.value=SetDateFormat(StartDate);
                TargetObj.value=SetDateFormat(TargetDate);
            }
        }  
    }
      
      
  // functio  to chaged dates baced on  onchange event of any start date 
   
    function ChangedatesOoTargetdate(RowCnt,ContinueLoop)
    {
        var today=new Date()
        var CurrentDate= DateSerialValue(today.getFullYear(),(today.getMonth()+1),today.getDate()) ;
        var TargetObj1 = document.getElementById("TargetDate" + RowCnt );
        var Curtargetdate=TargetObj1.value;
 
       var nDayDuration = document.getElementById("TimeDurationTxt_" + RowCnt).value;
        nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);
            
        if (Curtargetdate == "")
        {
          //alert("Enter Valid Date");
          Curtargetdate= calTagDate(nDayDuration,SetDateFormat(document.getElementById("StartDate" + RowCnt).value));
          //Curtargetdate = ValidateDate(Curtargetdate);
          Curtargetdate=SetDateFormat(Curtargetdate)
          TargetObj1.value= Curtargetdate;
          return false;
        }
        
        Curtargetdate = ValidateDate(Curtargetdate);
        if (Curtargetdate==0){return false;}
 
        if (DateDiffFun(CurrentDate,Curtargetdate) < 0) 
        {
            alert(" Date Should Not be Less Than Current Date")
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }
        if (checkdate(Curtargetdate)== false ) 
        {
            alert("Given Date Fallen In Holiday List Or It Belong To Week End ")
           // document.getElementById("StartDate" + RowCnt).value=""
            var Rtnval=Tosetoldval()
            if  (OldVal.split("#*#")[1] == ("TargetDate" + RowCnt) )   document.getElementById("TargetDate" + RowCnt).value=OldVal.split("#*#")[0]
            return ;
        }    
        if (CheckDepVal(RowCnt,false,2) ==false) return ;

        ContinueLoop = typeof ContinueLoop == "undefined" ? false : true; 
       
        var Startobj,TargetObj 
        var nDayDuration,StartDate,TargetDate,CalTargetDate,Dependency;
        var WrkItemCnt = <%=WrkItemCnt%>
        var DependencyArr =new Array()
        var AllDepValeArr=new Array()
        var HasDuration = false;

        if(RowCnt > WrkItemCnt) return;

        for(var i=RowCnt;i<=WrkItemCnt;i++)
        {
            HasDependency = document.getElementById("WrkDependencyTxt_" + i).value == "" ? false : true;
              
            nDayDuration = document.getElementById("TimeDurationTxt_" + i).value;
            nDayDuration = nDayDuration == "" ? 0 : parseInt( nDayDuration);

            Dependency=document.getElementById("WrkDependencyTxt_" + i).value;

            if(HasDependency == true)   
            { 
                CheckDepVal(i,false,1);
            }
            else
            {
               if (nDayDuration !=0)
                {
                
                    Startobj = document.getElementById("StartDate" + i );
                    TargetObj=document.getElementById("TargetDate" + i );
                    CalTargetDate = document.getElementById("TargetDate" + i );
                    
                    StartDate=document.getElementById("StartDate" + i).value;
                    
//                    if (i==RowCnt) { StartDate=document.getElementById("StartDate" + i).value;}
//                    else { StartDate=document.getElementById("TargetDate" + (i-1) ).value}        

                    if (nDayDuration != 0) { CalTargetDate=calTagDate(nDayDuration,SetDateFormat(StartDate)); }
                    else { CalTargetDate=StartDate }
                    
                    if (DateDiffFun(TargetObj.value,CalTargetDate) < 0) 
                    {
                        alert(" Given Date Is grater  Than Calulated Target Date Based On Duration ")
                        TargetDate=CalTargetDate
                        //return ;
                    }
                    
                    else if (DateDiffFun(TargetObj.value,CalTargetDate)> 0) 
                    {
                        alert(" Given Date Is  less Than Calulated Target Date Based On Duration ")
                        TargetDate=CalTargetDate
                        //return ;
                    }
                    else {TargetDate=CalTargetDate}

                    Startobj.value=SetDateFormat(StartDate);
                    TargetObj.value=SetDateFormat(TargetDate);
                
                }
                
            }
        }  
    }
      
      
      
      
      
      
 </script>
 
 <script language=javascript>
  
  
var WrkItemCnt=<%=WrkItemCnt %>
  function GetInchargeGroup(Rowcount)
  {
    
    if(Rowcount<=WrkItemCnt)
    {
       if (document.getElementById("UserIdTxt_"+Rowcount).value=="")
       {
        var SplValReq=document.getElementById("SplValReqTxt" + Rowcount).value
        var SplValfunID=   document.getElementById("SplValfunIdTxt" + Rowcount).value  
        if (SplValReq ==1) { QAMS_WRK_ALL_SpecialValidations(SplValfunID,<%=Request.QueryString("IssueId") %>,Rowcount) }
        else {SetInchargegroup('',Rowcount)}
       } 
     } 
  }
  
  function SetInchargegroup(GrpName,Rowcnt)
  {
     //var GroupValArr=GrpName.split("#*#")
    document.getElementById("ActPlnInchargeTxt_"+Rowcnt).value=GrpName//GroupValArr[0]
    //if (GroupValArr[0] != "")
    if (GrpName != "")document.getElementById("ActPlnInchargeHidTxt_"+Rowcnt).value=GrpName//GroupValArr[0]

    if( "<%=Request.QueryString("WorkTempID")%>" == "<%=WebWorkTempID%>")
    {
        if(GrpName == "<%=Request.QueryString("Department")%>" + "_HOD")
        {
          if (Rowcnt <= WrkItemCnt-2 ) {
            document.getElementById("Chk"+Rowcnt).checked=false;
            document.getElementById("Chk"+Rowcnt).className="HideRow";
            document.getElementById("DummyChk"+Rowcnt).className=""; 
            }
        }
    }
    document.getElementById("UserNameLab"+Rowcnt).innerHTML=GrpName //GroupValArr[0]
    //document.getElementById("UserIdTxt_"+Rowcnt).value=GroupValArr[1]
    GetInchargeGroup(Rowcnt+1)
  }
   
    if ("<%=Page.IsPostBack %>" == "False")
    {
        setTimeout("GetInchargeGroup(1)",20)
    }
 </script>
 
</html>
