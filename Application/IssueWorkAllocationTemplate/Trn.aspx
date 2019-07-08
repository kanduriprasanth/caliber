<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="IssueWorkAllocationTemplate.Trn" MaintainScrollPositionOnPostback="true" %>

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
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	//-->
    </script>
    
    <script language="javascript">
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
            if(__MinimumVal < NewVal) { setTimeout('__doPostBack(\'NewFieldCountTxt\',\'\')', 0) }
            
            if (NewVal > 25)
            {
                alert("No. Of Work Items To Add Must Be Less Than Or Equal To 25")
                SrcObj.value = __OldVal
                SrcObj.focus()
            
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

        function FnAllowAlphaNumVal()
        {
            var e =event.keyCode
            if(event.ctrlLeft == true){return false}
            if(e==16 || e ==32){return false}
            else if((e ==37)||(e== 39)||(e ==8)||(e== 46)||(e== 9)||((e >=65) && (e <=90))){}
            else if((e >=48) && (e <=57)) { if(event.shiftLeft ==true) {return false}  }
            else{return false}
        }
        
    function FnUsersListPopUp(Rowcnt)
    {
        RowCount=Rowcnt
        var pageURL;
        var WrkAllType=0
        
        if( document.getElementById("WrkAllType_"+ Rowcnt + "_0").checked== true)
            WrkAllType=1
        else if( document.getElementById("WrkAllType_"+ Rowcnt + "_1").checked== true)
            WrkAllType=2
        else if( document.getElementById("WrkAllType_"+ Rowcnt + "_2").checked== true)
            WrkAllType=3
            
            
        if (WrkAllType==0)
        {
           alert("Select Auto Work Allotment ") 
        }
        else
        {
           if( WrkAllType !=3 )
           {
               if( WrkAllType ==1 ) pageURL ="../IssueLogin/IssueToPopup.aspx?BaseId="+ Rowcnt
               else  if( WrkAllType ==2 ) pageURL ="../IssueTypeConfig/RevAppListPopUp.aspx?IssId=0"
               
                var PWidth=600
                var PHeight=460
                var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
                var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
               SpWinObj = window.open(pageURL,'UserCode',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
               if(SpWinObj.opener == null) SpWinObj.opener=self;
               SpWinObj.focus(); 
           }
           else
           {
             document.getElementById("UserIdTxt_"+Rowcnt).value=0
           }
        }   
    }

    function fnCrSetToCode1(Rowcnt,KdIdVal,KfLableVal )
    {
        document.getElementById("UserNameLab_"+RowCount).innerHTML =KfLableVal
        document.getElementById("UserIdTxt_"+RowCount).value=KdIdVal
        document.getElementById("UserNameTxt_"+RowCount).value=KfLableVal
        
    }
    
    function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
        document.getElementById("UserNameLab_"+RowCount).innerHTML =UsrGrpUCodeVal
        document.getElementById("UserNameTxt_"+RowCount).value=UsrGrpUCodeVal
        document.getElementById("UserIdTxt_"+RowCount).value=UsrGrpIdVal
    }
    
    
     var ENBCount=""
     var EfromCount=""
     var WorkFlowCnt=""
     
     function IsuTypePopUpFn(RowCnt)
	{
        ENBCount=RowCnt;
        var pageURL ="IssueFormPopup.aspx?";
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}
	
	function GetFormVals(KdIdVal,KdCodeVal,KfLableVal)
	{
	  document.getElementById("IssueID").value=KdIdVal
	  document.getElementById("IssTypeTxt").value=KdCodeVal
	  document.getElementById("IssTypeLab").innerHTML=KdCodeVal
	}
	
 
    function FormSelPopUpFn(RowCnt1)
    {
       EfromCount=RowCnt1;
        var WrkType= document.getElementById("WorkTypeDDL_"+RowCnt1).value
        if(WrkType!="")
        {
          pageURL ="../EFormIssuance/EFormListPopUp.aspx?WrkType="+WrkType
          
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 

           SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
           if(SpWinObj.opener == null) SpWinObj.opener=self;
           SpWinObj.focus();
        }
        else
        {alert("Select Work Type");}   
   }

    function  fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofId,WofDesc)
    {
        document.getElementById("EfromLbl"+EfromCount).innerHTML =KfLableVal
        document.getElementById("EFROMIDTXT_"+EfromCount).value=KdIdVal
        document.getElementById("eFromTxt"+EfromCount).value =KfLableVal
    }

    function WRKPopUpFn(RowCount)
    {
        WorkFlowCnt=RowCount
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
        document.getElementById("WrkFloIDTxt"+WorkFlowCnt).value=WofIdVal
        document.getElementById("WorkFlowLbl"+WorkFlowCnt).innerHTML =WofDesVal
    }

    function fnCrformSubmit(){}
    
    function ChangeFrom(Rowcnt)
    {
        document.getElementById("EfromLbl"+Rowcnt).innerHTML =""
        document.getElementById("EFROMIDTXT_"+Rowcnt).value=""
        document.getElementById("eFromTxt"+Rowcnt).value =""
    }
    
    function CheckAssignTo(Rowcnt)
    {
        document.getElementById("UserNameLab_"+Rowcnt).innerHTML =""
        document.getElementById("UserNameTxt_"+Rowcnt).value=""
        document.getElementById("UserIdTxt_"+Rowcnt).value=""
    }
    
    </script>
    
    <script language="jscript">
     function CtrlValidation(src,args)
      {  
        args.IsValid=false;
        Page_IsValid=false;  

        var str =""
        var TestCnt=document.getElementById("NewFieldCountTxt").value
        var RowCount =""
        if(TestCnt!="")
        {
            if (TestCnt!=0)
            {

                for(i=1;i<=TestCnt;i++)
                {
                
                    var obj=document.getElementById("WitenDescTxt_" + i)
                    if (obj !=null)
                    {
                        if(document.getElementById("WitenDescTxt_" + i).value =="") { str = str + "Enter Work Description For Work Item" + i +"\n -"   }
                        if (document.getElementById("WorkTypeDDL_" + i).value == "") { str = str + "Select Work Type  For Work Item" + i + "\n -" }
                        if(document.getElementById("EFROMIDTXT_" + i).value =="") { str = str + "Select Activity Details Form For Work Item " + i +"\n -"  }
                        if (document.getElementById("PriorityDDL_" + i).value == "") { str = str + "Select Priority For Work Item" + i + "\n -" }
                        if (document.getElementById("WrkAllType_" + i + "_2").checked != true)
                        { if (document.getElementById("UserIdTxt_" + i).value == "") { str = str + "Select Incharge To Work Item" + i + "\n -" } }
                    }
                    else
                    {
                       str =  'Check Work Item Details / Re-Enter No. of Work Items to add   ' +"\n" ;
                    }
                }
            }
            else
            {
               str = str + "No.of Work Items To Add Value Must Be Greater Than 0 "  + "\n -"
            }
        }
        if(str!="") { src.errormessage=str.substring(0,str.length-3); }
        else
        {
            args.IsValid=true;
            Page_IsValid=true;  	
        }
     }
     
     function CheckDepVal(RowCnt)
       {
                
         var DependentVal=document.getElementById("WrkDependency_" + RowCnt).value
         if( DependentVal != "")
         {
            var DependentVlArr=new Array()
            DependencyArr= DependentVal.split(","); 

            for(var i=0;i<=DependencyArr.length-1;i++)
            {
                if (DependencyArr[i] >= (RowCnt))  //if (DependencyArr[i] >= (RowCnt+1)) 
                {
                    alert("Work Dependency On Below Work Items Is Not Allowed " );
                    document.getElementById("WrkDependency_" + RowCnt).value=""
                    return;
                }
            }
          }
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
                        <asp:TableCell CssClass="MainTD" ID="IssTypeTd" style="font-weight:bold"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" >
                        <input type="button" onclick="IsuTypePopUpFn()" class='<%=IsueCss%>' tabindex="3" >
                        <asp:Label ID="IssTypeLab" runat="server" Text=""></asp:Label>
                        <asp:TextBox ID="IssTypeTxt" runat="server" CssClass="HideRow"  ></asp:TextBox>
                          <asp:TextBox ID="IssueID" runat="server" CssClass="HideRow"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" style="font-weight:bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" style="font-weight:bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell ID="NewFieldCountTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="NewFieldCountTxt" onkeydown="return FnAllowNumVal()" Width="35px"
                                    CssClass="TxtCls" Text=""  MaxLength="2" runat="server" TabIndex="5" onfocusin="SaveCurrentVal()"
                                    onfocusout="CheckCurrentVal()" AutoPostBack=true></asp:TextBox>
                                <asp:Literal ID="ltlRemoved" runat="server" Visible="false" />
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="NewWorkItemTr" CssClass="MainTD">
                            <asp:TableCell ColumnSpan="2" ID="TableCell1">
                                <asp:Table ID="NewWorkItemTbl" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
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
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls"  onMouseOver="this.className='ButexOCls'"
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

           
                if(e.shiftKey ==true)
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
                || iCode == 44                        // Delete
                || iCode == 9                        // Tab.
            )
        }

//-->
</script>

</html>
