

function DeptPopUpFn()
    {
        var pageURL;
        pageURL ="DeptPopUp.aspx";

          SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
    }
    
function fnGetFormDeptVal(KdIdVal,KdCodeVal,KfLableVal,KdDes)
{
    
    document.getElementById("TextBox2").value=KdIdVal
    document.getElementById("TextBox3").value=KdCodeVal
    document.getElementById("TextBox1").value=KfLableVal 
   
} 

function ProcessPopUpFn()
    {
        var pageURL;
        pageURL ="ProcessPopUp.aspx?ConfgFldIds=" + document.getElementById("TextBox2").value + "&DeptID=" + document.getElementById("TextBox3").value;

          SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
    }
    
function fnGetFormProcessVal(KdIdVal,KdCodeVal,KfLableVal,KdDes,DeptId)
{
    
    document.getElementById("TextBox5").value=KdIdVal
    document.getElementById("TextBox6").value=KdCodeVal
    document.getElementById("TextBox4").value=KfLableVal 
    document.getElementById("TextBox4").value=KfLableVal 
    document.getElementById("TextBox3").value=DeptId
   
} 
function AuditTempPopUpFn()
    {
        var pageURL;
        pageURL ="../AUDITPROPOSAL/AdtTmpLst.aspx";

          SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
    }
    
function fnGetSchFormVal(KdIdVal,KdCodeVal,KfLableVal,KdDes)
{
    
    document.getElementById("TempID").value=KdIdVal
    document.getElementById("BodyID").value=KdCodeVal
    document.getElementById("NameTxt").value=KfLableVal + "/" + KdDes
   
    
    Form1.submit();
} 

 function RegPopUpFn()
    {
        var pageURL;
        pageURL ="RegulatoryLst.aspx";

          SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
    }
    
function fnGetRegVal(KdIdVal,KfLableVal)
{
    document.getElementById("RegId").value=KdIdVal
    document.getElementById("RegCodeTxt").value=KfLableVal 
}       

 function VendorPopUpFn()
    {
        var pageURL;
        pageURL ="VendorLst.aspx";

          SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
    }
    
function fnGetVendorVal(KdIdVal,KfLableVal)
{
    document.getElementById("TextBox7").value=KdIdVal
    document.getElementById("TextBox8").value=KfLableVal 
}       

function SDateValid(src,args){
 var Flag= VbSDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 } 
 
 function EDateValid(src,args){
 var Flag= VbEDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 } 
 
 function FreqChk(src,args){ 
 
 
 var Flag= VbGDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    } 
 }
 
  function StartdateChk(src,args){

      if (document.getElementById("StartDate:CalDateDisplay").value != "")
 {
 var Flag= VbSDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    } 
 }
 }
 
  function EnddateChk(src,args){
      if (document.getElementById("EndDate:CalDateDisplay").value != "")
  {
 var Flag= VbEDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 } 
 }
 
 function PriorityChk(src, args)
{
    var flag=0
    if(document.getElementById("Priorityddl").value == 0)
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}
 
 function WeekChooseChk(src, args)
 {
    var flag=0
    if(document.getElementById("WeekChkL_0").checked == false && document.getElementById("WeekChkL_1").checked == false && document.getElementById("WeekChkL_2").checked == false && document.getElementById("WeekChkL_3").checked == false && document.getElementById("WeekChkL_4").checked == false && document.getElementById("WeekChkL_5").checked == false && document.getElementById("WeekChkL_6").checked == false)
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
 }
 
 function ClassificationChk(src, args)
 {
    var flag=0
    if(document.getElementById("Classificationddl").value == 0)
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}
 
 function TTypeChk(src, args)
 {
    var flag=0
    if(document.getElementById("TaskTypeddl").value == 0)
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
 }
 
 function SDateChk(src,args)
 {
    var flag = 0
    if (document.getElementById("Stdate:CalDateDisplay").value == "")
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}
 
 function EDateChk(src, args)
 {
    var flag = 0
    if (document.getElementById("Endate:CalDateDisplay").value == "")
    {
        flag =1
    }
    if(flag==1)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
 }
 
function fnLenValid()
{
    if(document.getElementById('TaskDescTxt').value.length >= 250)
    {
        alert("Only 250 Characters will be Allowed")
        return(false);
    }
}

function  NumValidationTo6(src,errMsg)
{ 
    var val=  document.getElementById(src).value 
    if(val!='')
    {
        if(isNaN(val) || (val<=0)) 
        {
            alert("Enter Integer Values Greater Than Zero")
            document.all("FreqTxt").value=""
            document.all("FreqTxt").focus	
        }
    }
}

function DayChk(src, args){
 
   var flag=0
   
   if(document.getElementById("DayRb").checked == true)
   {
   if(document.getElementById("DayTxt").value==""){
   flag=1
   }
   if(flag==1)
   {
       args.IsValid=false;
  	   Page_IsValid=false;
   }  
 }
   if(document.getElementById("DayRb").checked == false && document.getElementById("EverydayRb").checked == false){
      flag =1
    }
    if(flag==1){
       args.IsValid=false;
  	   Page_IsValid=false;
    }
 
 }
 
 function WeekChk(src, args){
 
   var flag=0
 
   if(document.getElementById("WeekTxt").value == ""){
      flag =1
    }
    if(flag==1){
       args.IsValid=false;
  	   Page_IsValid=false;
    }
 
 }
 
function MonthChk(src, args){
 
   var flag=0
   
   if(document.getElementById("MonthDayRb").checked == true)
   {
   if(document.getElementById("MonthDayTxt").value=="" || document.getElementById("MonthTxt").value==""){
   flag=1
   }
   if(flag==1)
   {
         args.IsValid=false;
  	     Page_IsValid=false;
   }
   }
   if(document.getElementById("MonthRb").checked == true)
   {
   if(document.getElementById("Month1Txt").value=="")
   {
   flag=1
   }
    if(flag==1)
   {
         args.IsValid=false;
  	     Page_IsValid=false;
   }
   }
   if(document.getElementById("PMonthRB").checked == true)
   {
   if(document.getElementById("POptTxt").value=="" || document.getElementById("PMonthTxt").value==""||document.getElementById("ROptTxt").value=="" || document.getElementById("RMonthTxt").value=="")
   {
   flag=1
   }
    if(flag==1)
   {
         args.IsValid=false;
  	     Page_IsValid=false;
   }
   }
   if(document.getElementById("MonthDayRb").checked == false && document.getElementById("MonthRb").checked == false && document.getElementById("PMonthRB").checked == false){
      flag =1
    }
    if(flag==1){
       args.IsValid=false;
  	   Page_IsValid=false;
    }
 
 }


 
  function YearChk(src, args){
 
   var flag=0
   
   if(document.getElementById("EYrRb").checked == true||document.getElementById("MnthYrRb").checked==true)
   {
   if(document.getElementById("EYrTxt").value=="" && document.getElementById("MnthYrTxt").value==""){
   flag=1
   }
   if(flag==1)
   {  
      args.IsValid=false;
  	   Page_IsValid=false;
    }
    }
   if(document.getElementById("EYrRb").checked == false && document.getElementById("MnthYrRb").checked == false && document.getElementById("YrOnRb").checked == false){
      flag =1
    }
    if(flag==1){
       args.IsValid=false;
  	   Page_IsValid=false;
    }
 
 }
	 	
  

	function FnMonthChk_Org(ControlId)
	{
	    var Obj = document.getElementById(ControlId);
	    var ObjVal = Obj.value;
	    var Err = "";
	    if(isNaN(ObjVal)==true){Err = "Enter Numeric Value";}
	    else if(ObjVal*1 <=0){Err= "Enter Only Positive Non Zero Value";}

	    if(Err != "")
	    {
	        alert(Err);
	        Obj.value ="";
	        return false;
	    }
	}
 function IsDigit(e)
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

      var iCode = ( e.keyCode || e.charCode );
        if(e.shift==true)
            return false
    if((iCode == 46)) //&& (AvailableVal != -1))
           return false;

	if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
			iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
        if(iCode == 39 ) return false;

	return (
			( iCode >= 48 && iCode <= 57 )		// Numbers
			|| (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
			|| iCode == 8						// Backspace
			|| iCode == 46						// Delete
			|| iCode == 9	                    // Tab
			)
}

	
function EnableDay()
{
    if(document.getElementById("DayRb").checked==true)
    {
        document.getElementById("DayTxt").disabled=false
    }
    else
    {
        document.getElementById("DayTxt").disabled=true
        document.getElementById("DayTxt").value=""
    }
}
		
function EnableMonthDay()
{
    if(document.getElementById("MonthDayRb").checked==true)
    {
        document.getElementById("MonthTxt").disabled=false
        document.getElementById("MonthDayTxt").disabled=false
    }
    else
    {
        document.getElementById("MonthTxt").disabled=true
        document.getElementById("MonthTxt").value=""
        document.getElementById("MonthDayTxt").disabled=true
        document.getElementById("MonthDayTxt").value=""
    }
}
		
function EnableMonth()
{
    if(document.getElementById("MonthRb").checked==true)
    {
        document.getElementById("Month1Txt").disabled=false
    }
    else
    {
        document.getElementById("Month1Txt").disabled=true
        document.getElementById("Month1Txt").value=""
    }
}
		
function EnablePMonth()
{
    if(document.getElementById("PMonthRB").checked==true)
    {
        document.getElementById("POptTxt").disabled=false
        document.getElementById("PMonthTxt").disabled=false
        document.getElementById("ROptTxt").disabled=false
        document.getElementById("RMonthTxt").disabled=false
    }
    else
    {
        document.getElementById("POptTxt").disabled=true
        document.getElementById("POptTxt").value=""
        document.getElementById("PMonthTxt").disabled=true
        document.getElementById("PMonthTxt").value=""
        document.getElementById("ROptTxt").disabled=true
        document.getElementById("ROptTxt").value=""
        document.getElementById("RMonthTxt").disabled=true
        document.getElementById("RMonthTxt").value=""
    }
}

		
function EnableEYr()
{
    if(document.getElementById("EYrRb").checked==true)
    {
        document.getElementById("EYrTxt").disabled=false
    }
    else
    {
        document.getElementById("EYrTxt").disabled=true
        document.getElementById("EYrTxt").value=""
    }
}
		
function EnableMnthYr()
{
    if(document.getElementById("MnthYrRb").checked==true)
    {
        document.getElementById("MnthYrTxt").disabled=false
    }
    else
    {
        document.getElementById("MnthYrTxt").disabled=true
        document.getElementById("MnthYrTxt").value=""
    }
}
			
function fnChDayRb()
{
    if(document.getElementById("DayRb").checked==true)
    {
        document.getElementById("EverydayRb").checked=false
    }
}

function fnChEveryDayRb()
{
    if(document.getElementById("EverydayRb").checked==true)
    {
    document.getElementById("DayRb").checked=false
    document.getElementById("DayTxt").value=""
    }
}
		
function fnChMonthDayRb()
{
    if(document.getElementById("MonthDayRb").checked==true)
    {
        document.getElementById("MonthRb").checked=false
        document.getElementById("Month1Txt").value=""
        document.getElementById("PMonthRB").checked=false
        document.getElementById("POptTxt").value=""
        document.getElementById("PMonthTxt").value=""
        document.getElementById("ROptTxt").value=""
        document.getElementById("RMonthTxt").value=""
    }
}
		
function fnChMonthRb()
{
    if(document.getElementById("MonthRb").checked==true)
    {
        document.getElementById("MonthDayRb").checked=false
        document.getElementById("MonthTxt").value=""
        document.getElementById("MonthDayTxt").value=""
        document.getElementById("PMonthRB").checked=false
        document.getElementById("POptTxt").value=""
        document.getElementById("PMonthTxt").value=""
        document.getElementById("ROptTxt").value=""
        document.getElementById("RMonthTxt").value=""
    }
}

function fnChPMonthRB()
{
    if(document.getElementById("PMonthRB").checked==true)
    {
        document.getElementById("MonthDayRb").checked=false
        document.getElementById("MonthTxt").value=""
        document.getElementById("MonthDayTxt").value=""
        document.getElementById("MonthRb").checked=false
        document.getElementById("Month1Txt").value=""
    }
}
		
function fnChEYrRb()
{
    if(document.getElementById("EYrRb").checked==true)
    {
        document.getElementById("MnthYrRb").checked=false
        document.getElementById("YrOnRb").checked=false
        document.getElementById("MnthYrTxt").value=""
    }
}
		
function fnChMnthYrRb()
{
    if(document.getElementById("MnthYrRb").checked==true)
    {
        document.getElementById("EYrRb").checked=false
        document.getElementById("EyrTxt").value=""
        document.getElementById("YrOnRb").checked=false
    }
}
		
function fnChYrOnRb()
{
    if(document.getElementById("YrOnRb").checked==true)
    {
        document.getElementById("EYrRb").checked=false
        document.getElementById("MnthYrRb").checked=false
        document.getElementById("MnthYrTxt").value=""
        document.getElementById("EyrTxt").value=""
    }
}
function POptTxt(src, args)
{
    var Freq;
    var Freq1;

    if (document.getElementById('POptTxt').value!="")
    {
        if (document.getElementById('POptDdl').value=="1")
        {
            Freq = document.getElementById('POptTxt').value
        }
        if (document.getElementById('POptDdl').value=="2")
        {
            Freq = 7*(document.getElementById('POptTxt').value)
        }
        if (document.getElementById('POptDdl').value=="3")
        {
            Freq = 30*(document.getElementById('POptTxt').value)
        }

        Freq1=30*(document.getElementById('PMonthTxt').value)
        if (Freq >Freq1)
        {
            args.IsValid=false;
            Page_IsValid=false;
        }
    }

}

function ROptTxt(src, args)
{
    var Freq1;
    var Freq2;

    if (document.getElementById('ROptTxt').value!="")
    {
        if (document.getElementById('ROptDdl').value=="1")
        {
            Freq1 = document.getElementById('ROptTxt').value
        }
        if (document.getElementById('ROptDdl').value=="2")
        {
            Freq1 = 7*(document.getElementById('ROptTxt').value)
        }
        if (document.getElementById('ROptDdl').value=="3")
        {
            Freq1 = 30*(document.getElementById('ROptTxt').value)
        }
        Freq2=30*(document.getElementById('RMonthTxt').value)
        if (Freq1 >Freq2)
        {
            args.IsValid=false;
            Page_IsValid=false;
        }
     }

}
		
function DayTxt(src, args)
{
    var Flag=DateValid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}

function WeekTxt(src, args)
{
    var Flag=DateWeekValid();
    if (Flag==false)
    {
        args.IsValid=false;
  	    Page_IsValid=false;
    }
}

function MonthTxt(src, args)
{
    var Flag=DateMonthValid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}

function Month1Txt(src, args)
{
    var Flag=DateMonth1Valid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}
function EyrTxt(src, args)
{
    var Flag=DateEyrTxtValid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}

function MnthyrTxt(src, args)
{
    var Flag=DateMnthyrTxtValid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}

function TotalMonth(src, args)
{
    var Flag=DateTotalMonthValid();
    if (Flag==false)
    {
        args.IsValid=false;
        Page_IsValid=false;
    }
}


