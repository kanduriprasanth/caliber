
<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CalenderPage.aspx.vb" Inherits="Calender.CalenderPage" %>

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

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
    document.oncontextmenu=new Function("return false");

	//-->
    </script>

    <script language="javascript">
		
		   function fnSetToReasons(argValue){
   
		document.getElementById('RemarksTxt').value = argValue
	}
			//for the validation for number of fields
		function DescValidation(src,args){
		
		
		 var i
		 var flag=0
		
   var alias = document.getElementById('NoofholidaysTxt').value
  
    if(alias>0){
        for(i=1;i<=alias;i++){
         var calobj="Calender" + i  + "_CalDateVal"	
         var Descobj="Description"+i
            
                  if(document.all(calobj).value == 'undefined' || document.all(Descobj).value == 'undefined' )
                  {
              
                  flag = 1
           }
        }
       if(flag ==1){

          page.isvalid = false;
          args.isvalid = false;
        }
   
     }
		
  	}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server">
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
                            <asp:TableCell CssClass="HideRow">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="YearDDl" runat="server" Width="160px" AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="310px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID ="NoOfStndHdayTr">
                            <asp:TableCell CssClass="MainTD" ID="NoOfStndHdayTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type=button class="RsnPUP" onclick="FnStandWdayPopUp()"/>
                              <asp:Label CssClass="MainTD" runat=server ID="StandwdayLbl" ></asp:Label>
                              <asp:TextBox CssClass="HideRow" runat=server ID="StandwdayTxt"></asp:TextBox>
                                                              
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="StndHdayTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan ="2">
                                <asp:Table ID="StndHdayTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                     </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID ="StndhdayCalTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="StndhdayCalTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                     
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="NoofholidaysTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NoofholidaysTxt" runat="server" CssClass="TxtCls" MaxLength="3"
                                    Width="200px" AccessKey="C" TabIndex="3" AutoPostBack="true" onkeydown="return FnAllowNumVal()" onchange="FnCheckVal()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="CalnderTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow id ="CalDatesTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="CalDatesTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
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
                                <uc1:esignobj id="EsignObj1" runat="server" visible="false"></uc1:esignobj>
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"></asp:Button>
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
                        
                    <asp:TextBox ID="YearTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
//--------------------Date Check----------------------------
 <!--
function DateValCheck(src,args)
{
    args.IsValid=true;
    Page_IsValid=true;
    var NoOfcal=0
    var i,j,h
    var Ival
    var Iobj
    var Jobj
    var Jval
    var ErrerStr=''
    var ErrerStr1=''
    var DateIdArr=new Array()
   
    NoOfcal= document.getElementById ("NoofholidaysTxt").value; 
	
    for(i=0;i<NoOfcal;i++)
    {		
        var Iobj="Calender" + i  + "_CalDateVal"	
        Ival=document.all(Iobj).value
        
        var Str =''

        for(j=i+1;j<NoOfcal;j++)						
        {

            Jobj="Calender" + j  + "_CalDateVal"	
            Jval=document.all(Jobj).value
             
            if(Jval!='' && Ival!='')	
            {											
                if(Jval==Ival)
                {
                  if (ErrerStr1=='')
                  ErrerStr1=(i+1) + '&' + (j+1)
                  else 
                  ErrerStr1=ErrerStr1+ ', ' +  (i+1) + '&' + (j+1)
                  
                }// if
            }//if	
            			
        }	//for
        
    }//--------- OF i Loop
    
     if (ErrerStr1 !='')
        {
        
            ErrerStr = "Holiday dates are same in " + ErrerStr1 + "-\n"
            src.errormessage=ErrerStr.substring(0,ErrerStr.length-2)
            args.IsValid=false;
            Page_IsValid=false;
            return(false)
        } 
}  
//--------------------Date Check----------------------------

//-->
    </script>

    <script>

function YearValCheck(src,args)
{
    args.IsValid=true;
    Page_IsValid=true;
    var ErrerStr="";
    var NoOfcal
    var i
    var tempdate
    var calyear
    var CalYearAry 
    

    NoOfcal=document.getElementById ("NoofholidaysTxt").value; 

    //calyear=document.all("codetxt").value
    calyear=document.all("YearTxt").value
    

    for(i=0;i<NoOfcal;i++)
    {

        var obj="Calender" + i  + "_CalDateVal"

        tempdate=(document.all(obj).value)


        if (tempdate != ''){

            CalYearAry =tempdate.split("/")	

            if(parseInt(CalYearAry[2])!=parseInt(calyear))
            {
                ErrerStr = ErrerStr + "Invalid Holiday Date-Year Selected For - " + (i+1) + "\n -"
             }

        }


    }
    
        if (ErrerStr != "") 
        {
        src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
        args.IsValid=false;
        Page_IsValid=false;
        }		

 }
 
 function ShowConfermationMessage()
    {
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
            alert(ConfermationMessage)
                 return(false);
                    }
    }
    
    ShowConfermationMessage()
    
    function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}
        if(event.shiftLeft == true){return false}
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
    
    function FnCheckVal()
    {
        var value=document.getElementById ("NoofholidaysTxt").value;
        if (value>200)
        {
            alert("No. Of Holidays Should Be Less Than Or Equal To 200");
            document.getElementById ("NoofholidaysTxt").value=0;
        
        }
        
          
    }
    
    function FnStandWdayPopUp()
    {
    
        var pageURL;
        pageURL ="WeekDayPopUp.aspx?"
        var SpWinObj;
        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    
       
    }
    
     function fnSetVal_Chklist(KfLableVal)
    { 
    
        var FldValue=KfLableVal.split("#*#")
        document.getElementById("StandwdayTxt").value=FldValue[0]
        document.getElementById("StandwdayLbl").className="MainTD"
        document.getElementById("StandwdayLbl").innerHTML=FldValue[0]
          Form1.submit();         
    }
	
    </script>

    </form>
</body>
</html>
