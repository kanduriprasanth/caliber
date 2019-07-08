<%@ Page Language="vb" EnableViewState="false" AutoEventWireup="false" Codebehind="EffectedDocpoup.aspx.vb"
    Inherits="IssueLogin.EffectedDocpoup" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1" />
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1" />
    <meta name="vs_defaultClientScript" content="JavaScript" />
    <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript">
  

  function IsDigit1(e,AcpCnt)    ///Function To check Numeric values
            {
             
              var Count =document.getElementById("AcpItemCntTxt_" + AcpCnt).value
               if(isNaN(Count)==true){
                     return false;
                 }   
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

               // var AvailableVal = window.event.srcElement.value.indexOf(".")
                var iCode = ( e.keyCode || e.charCode );

                if(iCode == 46) //&& (AvailableVal != -1))
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
                    || iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
             
            
                
            }
            function IsValid(cnt,Exstval)
            {
              var ErrerStr="" 
              var val=document.getElementById ("AcpItemCntTxt_" + cnt).value 
               if(isNaN(val)==true){
               document.getElementById ("AcpItemCntTxt_" + cnt).value="1";
                val=1;
                }              
              if (val>25 || val<=0)
              {
               
                ErrerStr="No. of Proposed Plan(s)  Must  Be Greater Than 0 And Less Than Or Equal To 9";
                              
              }
             if (ErrerStr != "") 
              {
                alert(ErrerStr);
                document.getElementById ("AcpItemCntTxt_" + cnt).value=Exstval;
              }
             else
             {
              if(val=="")
              {
                 document.getElementById ("AcpItemCntTxt_" + cnt).value=Exstval;
              }
              Form1.submit();
             }
                         
            }
    	
    </script>

</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="Acplantab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 50px"
                                onclick="RaiseActionPlan()" onmouseout="this.className='ButCls'" type="button" value="Submit">
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                       ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="AcpDatatxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelAcpNameLsttxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="SelAcpTypeLsttxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="IsuTypeTxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="MaxTargetdatetxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="IsuTargetDate" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="HolidayListTxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="ISuIniitDatetxt" runat="server"  ></asp:TextBox>
                       <asp:TextBox ID="IsuTargetDate1" runat="server" CssClass ="hiderow"  ></asp:TextBox>
                     
                    
                  
                     </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>


<script language=vbscript>
    
      function VbStartDateValid (Today,SDate)
        if DateDiff("d",Today,SDate)>0 then
	        VbStartDateValid=false
        end if  

     End function 
     
      function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
             DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
      End function
      
       function DateSerialValue(Year,Month,Day)
         DateSerialValue= dateSerial(Year,Month,Day)
        End function
        
        function DateDiffWithToday(CompareCtrlVal,CtrlToCompareVal)
        
             DateDiffWithToday= DateDiff("d",Now,CtrlToCompareVal)
      End function
        
          
        function AlertMsgBox(ErrStr)
            ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
            AlertMsgBox= ReturnVal
        End function
        
        
    
    </script>
    
    <script language="javascript">
    
    function DateValidation(src,args)
    {
    
            var ErrerString=""
            args.IsValid=true;
            Page_IsValid=true;
            
            var AcpCount = <%=AcpCount %>
           var MaxtargetDate =document.getElementById("MaxTargetdatetxt").value
            
            if (MaxtargetDate !="")
            {
                for (var AcpCnt=0;AcpCnt < AcpCount ; AcpCnt ++)
                {
                    var InsCount =document.getElementById("AcpItemCntTxt_" +AcpCnt ).value
                    for (var i=0;i<InsCount;i++)
                    {
                       var InsTargetDate = document.getElementById("TargetDate" + AcpCnt  + i + "_CalDateVal").value      
                       //var Flag= VbStartDateValid(MaxtargetDate,InsTargetDate) ;
                       
//                       if (Flag == false)
//                       {  
//                          ErrerString =ErrerString + "Plan " + (AcpCnt+1) + "."  + (i+1) + " Target Date Must Be Less Than Or Equal To Max CAPA Duration Date It is : " +  MaxtargetDate + "\n -" 
//                       }
                    }
                } 
            } 
            
            if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length-2)
                args.IsValid=false;
                Page_IsValid=false;
            } 
            
    }
   
    function RaiseActionPlan()
    {
   
        if (Page_ClientValidate())
        {
             
        ThisMonth = <%=ThisMonth%>
        ThisYear = <%=ThisYear%>
        ThisDay = <%=ThisDay%>
        var CurrentDateVal1=DateSerialValue(ThisYear,ThisMonth,ThisDay)
        
             
             
             
           var MaxTrgetdate = SetDateFormat_VAL(document.getElementById("MaxTargetdatetxt").value)
           var MaxTrgetdateArr= new  Array
           MaxTrgetdateArr=MaxTrgetdate.split("/")
           MaxTrgetdate=DateSerialValue(MaxTrgetdateArr[2],MaxTrgetdateArr[0],MaxTrgetdateArr[1])
           
         
             
             var SelDate;
             var AcpCount = <%=AcpCount %>
             var Count =0
             var ExcepMsg=""
             for (var AcpCnt=0;AcpCnt < AcpCount ; AcpCnt ++)
             {
                    var Count =document.getElementById("AcpItemCntTxt_" +AcpCnt ).value

                    for (var i=0;i<Count;i++)
                    {
//                        if(document.getElementById ("FlagTxt_" + AcpCnt + i).value==6)
//                        {
//                            if ($.trim(document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i).value)=="")
//                            {
//                                 ExcepMsg= ExcepMsg + "Enter Value For : <%=ReasonsCap%> of " + (AcpCnt + 1) + "." + (i + 1) + "  \n"
//                            }
//                        }
                            SelDate=document.getElementById("TargetDate" + AcpCnt + i + "_CalDateVal").value;
                            var SelDateArr=  new Array()
                            SelDateArr= SelDate.split("/")
                            SelDate=DateSerialValue(SelDateArr[2],SelDateArr[0],SelDateArr[1])
                          var Dategap1=DateDiffFun(SelDate,CurrentDateVal1)
                          var DDgap=DateDiffFun(MaxTrgetdate,SelDate)
                           if(Dategap1>0)
                          {
                          ExcepMsg=ExcepMsg+"Target date can not be less than current date of Plan "+ (AcpCnt + 1) + "." + (i + 1) + "  \n"
                          }
                        
                        if (MaxTrgetdate!= "")
                        {
                    
                        
                          
                          
                          var DDgap=DateDiffFun(MaxTrgetdate,SelDate)
                        
                          if (DDgap >0)
                          { 
                                if ($.trim(document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i).value)=="")
                            {
                                 ExcepMsg= ExcepMsg + "Enter Value For : <%=ReasonsCap%> of " + (AcpCnt + 1) + "." + (i + 1) + "  \n"
                            }
                          }
                          
                        } 
                    }
                   
               }
              if( ExcepMsg !="")
                    {
                        alert(ExcepMsg)
                        return;
                    }
                    
                    
               XmlString ="<NewDataSet>"
             
               XmlString  = XmlString + "<Acptable>"
               XmlString  = XmlString + "<AcpNameLst>" + " <![CDATA[" + document.getElementById("SelAcpNameLsttxt").value + "]]> " + "</AcpNameLst>"
               XmlString  = XmlString + "<AcpTypeLst>" + " <![CDATA[" + document.getElementById("SelAcpTypeLsttxt").value + "]]> " + "</AcpTypeLst>"
               XmlString  = XmlString + "</Acptable>"
               
             
             for (var AcpCnt=0;AcpCnt < AcpCount ; AcpCnt ++)
             {
               
               var InsCount =document.getElementById("AcpItemCntTxt_" +AcpCnt ).value
                          
               for (var i=0;i<InsCount;i++)
               {
                    XmlString  = XmlString + "<table" + AcpCnt + ">"
                    XmlString  = XmlString + "<SNo>" + " <![CDATA[" + (parseInt(AcpCnt+1) + "." + parseInt(i+1)) + "]]> " + "</SNo>"
                   
                    XmlString  = XmlString + "<PlanType>" + " <![CDATA[" + document.getElementById("AcpType_" + AcpCnt + "_" + i).value + "]]> " + "</PlanType>"
                           
                    XmlString  = XmlString + "<PlanDesc>" + " <![CDATA[" + document.getElementById("AcpsDesc_" + AcpCnt + "_" + i).value + "]]> " + "</PlanDesc>"
                    XmlString  = XmlString + "<DeptName>" + " <![CDATA[" + document.getElementById("InchDeptDescTxt_" + AcpCnt + "_" + i).value + "]]> " + "</DeptName>"
                    XmlString  = XmlString + "<IncGrp>" + " <![CDATA[" + document.getElementById("InchUgpDescTxt_" + AcpCnt + "_" + i).value + "]]> " + "</IncGrp>"
                    XmlString  = XmlString + "<TargetDate>" + " <![CDATA[" + document.getElementById("TargetDate" + AcpCnt + i + "_CalDateVal").value + "]]> " + "</TargetDate>"
                    if($.trim(document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i).value)=="")
                        document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i).value="---"
                        
                    XmlString  = XmlString + "<Reasons>" + " <![CDATA[ " + document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i).value + "]]> " + "</Reasons>"
                     
                    XmlString  = XmlString + "<PlanTypeId>" + " <![CDATA[" + document.getElementById("AcpTypeID_" + AcpCnt + "_" + i).value + "]]> " + "</PlanTypeId>"
                    XmlString  = XmlString + "<DeptId>" + " <![CDATA[" + document.getElementById("InchDeptTxt_" + AcpCnt + "_" + i).value + "]]> " + "</DeptId>"
                    XmlString  = XmlString + "<IncGrpid>" + " <![CDATA[ " + document.getElementById("InchUgpTxt_" + AcpCnt + "_" + i).value + "]]> " + "</IncGrpid>"
                    XmlString  = XmlString + "<ControlId>" + " <![CDATA[ " + "<%=Request.QueryString("CtrlId") %>" + "]]> " + "</ControlId>"
                   
                    XmlString  = XmlString + "</table" + AcpCnt + ">"
                    Count +=1
               }
             
             }
                
            XmlString = XmlString + "</NewDataSet>" 
            opener.SetAcpValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",XmlString)
            window.self.close()
          }
    }
   
   function fnCrCancel()
   { 
     var ValueArr=new Array()
     opener.SetAcpValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",'')
     window.self.close()
   }
   
    function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<" 
   {
    
      Cdata =Cdata.replace("&","&amp;");  
      Cdata=Cdata.replace("<","&lt;");  
      return Cdata
    
   }
   	

    </script>

    <script language="javascript">
    
    function SetMSTFieldsValue(CtrlID,SelDate)
    {
        var SelDateArr=  new Array()
        SelDateArr= SelDate.split("/")
        SelDate=DateSerialValue(SelDateArr[2],SelDateArr[0],SelDateArr[1])
            
        var oldDate =document.getElementById("OldValue_" + CtrlID).value
             
        if (oldDate.indexOf("-") != -1 )
        {
            var oldDateArr= new Array()
            oldDateArr=oldDate.split("-")
            oldDate=DateSerialValue(oldDateArr[2],oldDateArr[1],oldDateArr[0])
        }
            
            
      var MaxTrgetdate= SetDateFormat_VAL(document.getElementById("MaxTargetdatetxt").value)
      var MaxTrgetdateArr= new  Array
      MaxTrgetdateArr=MaxTrgetdate.split("/")
      MaxTrgetdate=DateSerialValue(MaxTrgetdateArr[2],MaxTrgetdateArr[0],MaxTrgetdateArr[1])
     var cnt=CtrlID.substring(CtrlID.length-2,CtrlID.length) //to get the row count
      
      var  Exp =1
           
      if (MaxTrgetdate!= "")
      {
          var DDgap=DateDiffFun(SelDate,MaxTrgetdate)
          if (DDgap<0)
          { 
             var Flag=AlertMsgBox("Selected Target Date exceeds Maximum Plan Target Date , Do You want to continue")
             document.getElementById ("FlagTxt_" + cnt).value=Flag
             
             if (Flag ==7) // NO
             {
               document.getElementById(CtrlID+ "_CalDateVal").value=SetDateFormat_VAL(oldDate);
               document.getElementById(CtrlID+ "_CalDateDisplay").value=SetDateFormat(oldDate);
               Exp=0;
             }
             else
              { 
                Exp=1;
              }
          }

        }
        
         //To compare target date with Current Date
       
        ThisMonth = <%=ThisMonth%>
        ThisYear = <%=ThisYear%>
        ThisDay = <%=ThisDay%>
        var CurrentDateVal=DateSerialValue(ThisYear,ThisMonth,ThisDay)
         
        if (CurrentDateVal!= "")
        { 
            var Dategap=DateDiffFun(SelDate,CurrentDateVal)
            if(Dategap>0){
            
                alert("Target Date Must Be Greater Than Or Equal To Current Date" )//+ '\n' + "Issue Initiated  Date  Is : " + document.getElementById("ISuIniitDatetxt").value  )
                document.getElementById(CtrlID+ "_CalDateVal").value=SetDateFormat_VAL(oldDate);
                document.getElementById(CtrlID+ "_CalDateDisplay").value=SetDateFormat(oldDate);
             }   
         } 
         
         
        
        //To compare target date with issue Target date
       
        var IsuTargetDate1=document.getElementById("IsuTargetDate1").value //DateSerialValue(ThisYear,ThisMonth,ThisDay)
        var IsuTargetDateArr= new  Array
        IsuTargetDateArr=IsuTargetDate1.split("/")
        IsuTargetDate1=DateSerialValue(IsuTargetDateArr[2],IsuTargetDateArr[1],IsuTargetDateArr[0])
        
        if (IsuTargetDate1!= "" && Exp ==1 )
        { 
            var Dategap=DateDiffFun(SelDate,IsuTargetDate1)
            if(Dategap<0)
            {
           
                alert("Target Date Must Be Less Than Or Equal To Issue  Target Date"  + '\n' + "Issue Target  Date  Is : " + document.getElementById("IsuTargetDate").value )
                document.getElementById(CtrlID+ "_CalDateVal").value=SetDateFormat_VAL(oldDate);
                document.getElementById(CtrlID+ "_CalDateDisplay").value=SetDateFormat(oldDate);
            }
            
            else
            {
              if (MaxTrgetdate != "") {
               document.getElementById("OldValue_" + CtrlID).value=MaxTrgetdate }
              else {
              document.getElementById("OldValue_" + CtrlID).value=SelDate }
            }
        } 
     
        
      }
    
    
    function SetDateFormat_VAL(CurrentDate,type)
    {
     
        var m,d,y,Result;
        var nDate = new Date(CurrentDate)
        m = nDate.getMonth();
	    m = m*1 + 1;
        d = nDate.getDate();
        y = nDate.getFullYear(); 
        
        var Result= m + '/' + d + '/' + y  ;
        return Result;
    }
    
    
     function SetDateFormat_VAL1(CurrentDate,type)
    {
     
        var m,d,y,Result;
//        var nDate = new Date(CurrentDate)
//        m = nDate.getMonth();
//	    m = m*1 + 1;
//        d = nDate.getDate();
//        y = nDate.getFullYear(); 
        
        var  CurrentDateArr= new Array
        CurrentDateArr=CurrentDate.split('-')
        
         m =CurrentDateArr[1];
          m = m*1 ;
        d = CurrentDateArr[0];
        y = CurrentDateArr[2] ; 
        
        
        var Result= m  + '/' + d + '/' + y ;
        return Result;
    }
    
    
    function SetDateFormat1(CurrentDate,type)
    {
    
       var m,d,y,Result;
       

//        var nDate = new Date(CurrentDate)
//        m = nDate.getMonth();
//	    m = m*1 + 1;
//        d = nDate.getDate();
//        y = nDate.getFullYear();

         var  CurrentDateArr= new Array
        CurrentDateArr=CurrentDate.split('-')
        m =CurrentDateArr[1];
          m = m*1 ;
        d = CurrentDateArr[0];
        y = CurrentDateArr[2] ; 
        
      var Result= m  + '/' + d + '/' + y ;
       
        var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
        var nDate = new Date(Result)
        m = nDate.getMonth();
        d = nDate.getDate();
        y = nDate.getFullYear(); 
        
        var Result= d + '-' + monthname[m] + '-' + y  ;
        return Result;
    }
    
    
     function SetDateFormat(CurrentDate,type)
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
    
   
    function getSelectedDocumnets()
    {
        var AcpData=''
        var AcpListData=''
              
       //AcpNameList=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        AcpData=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        if (<%=Request.QueryString("StatusFlag")%> == "1")
        {
          AcpListData=opener.window.document.getElementById("AcpListtxt_" + "<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        }
       
         if (AcpListData !='')
         {
           var AcpListArr = new Array()
           AcpListArr=AcpListData.split("#@#")
           document.getElementById("SelAcpNameLsttxt").value = AcpListArr[0]
           document.getElementById("SelAcpTypeLsttxt").value =AcpListArr[1]
         }
         
        document.getElementById("AcpDatatxt").value=AcpData;
        Form1.submit();
    }
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	    getSelectedDocumnets()
    }
    
    var FldId;
   
     function InchargeSelection(Cnt,ItemCnt) //Grpname
    {
      FldId=Cnt + "_" + ItemCnt
      if (document.getElementById("InchDeptTxt_" + FldId).value!="") 
      {
            var pageURL ="../EFormIssuance/RevAppListPopUp.aspx?DeptId=" + document.getElementById("InchDeptTxt_" + FldId).value
            SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();       
      }
      else
      {
        alert("Select In-Charge Department");
      
      }
      
    }
    
    function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
        document.getElementById("InchUgpDescTxt_" + FldId).value=UsrGrpUCodeVal
        document.getElementById("InchUgpLbl_" + FldId).innerHTML=UsrGrpUCodeVal
        document.getElementById("InchUgpTxt_" + FldId).value=UsrGrpIdVal
               
    }
    
     function FnDeptPopup(Cnt,ItemCnt) //Grpname
    {
        FldId=Cnt + "_" + ItemCnt
        var pageURL ="DeptPopup.aspx?id=" + Cnt+ '_' + ItemCnt 
        SpWinObj = window.open(pageURL,'UserCode',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus(); 
    }
    
    function fnSetDeptCode(ID,DeptId,DeptAulid,DeptCode,Deptname)
    { 
    
        var  Inchargedeptid =document.getElementById("InchDeptTxt_" + ID).value
        var Setval=0
    
        if(Inchargedeptid =='' && DeptId >0){ Setval=1  }
        else if(Inchargedeptid !='' && DeptId >0 && Inchargedeptid!=DeptId) {  Setval=1 }
        else if(Inchargedeptid !='' && DeptId =='' && Inchargedeptid!=DeptId){ Setval=1 }

        if (Setval==1)
        {
            document.getElementById("InchDeptDescTxt_" + ID).value=Deptname
            document.getElementById("InchDeptLbl_" + ID).innerHTML=Deptname
            document.getElementById("InchDeptTxt_" + ID).value=DeptId
            //To handle Usergroup when department changed  again
            document.getElementById("InchUgpDescTxt_" + ID).value='';
            document.getElementById("InchUgpLbl_" + ID).innerHTML='';
            document.getElementById("InchUgpTxt_" + ID).value='';
        }
        
    }
    
    
    var taMaxLength = 500
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
    
    
    
     function AddEventForRemarks()
    {
          
             var AcpCount = <%=AcpCount %>
             var Count =0
             for (var AcpCnt=0;AcpCnt < AcpCount ; AcpCnt ++)
             {
               if(document.getElementById("AcpItemCntTxt_" +AcpCnt ).value!="undefined"){
               
                    var Count =document.getElementById("AcpItemCntTxt_" +AcpCnt ).value
                    if(isNaN(Count)==true)
                     document.getElementById("AcpItemCntTxt_" +AcpCnt ).value="1";
                    for (var i=0;i<Count;i++)
                    {
                        var Reasonstxt=document.getElementById ("ReasonTxt_"+ AcpCnt + "_" + i);
                        Reasonstxt.attachEvent('onkeypress', taLimit)
                        Reasonstxt.attachEvent('onkeyup', taCount)
                    }
              }
           }
      }
     AddEventForRemarks();
      
      
        // To set max length of multiline textbox 
    var taMaxLength1 = 500;

    function taLimit1() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength1*1) return false;
	}

	function taCount1()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength1*1){
			taObj.value=taObj.value.substring(0,taMaxLength1*1);
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")

            }
            
       }

      
    
    </script>
    
    

</body>
</html>