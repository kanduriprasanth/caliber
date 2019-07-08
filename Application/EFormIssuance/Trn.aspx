<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="EFormIssuance.Trn" %>

<%@ Register TagPrefix="uc11" TagName="calibercalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>
    
    <script language="javascript" src="../JScript/Common2.js"></script>
 <script language="javascript" src="../JScript/CustomValidationFuns.js"></script>
    
    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	
	function FnENBSelLstPopUp()
	{
	var pageURL ="EnotebookListPopUp.aspx?"

    SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}

    function GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)
    {
        document.getElementById("ENBIDTxt").value =ENBId
        if((ENBDesc=="") || (SecDesc==""))
             document.getElementById("ENBUCodeLab").innerHTML =""
        else
             document.getElementById("ENBUCodeLab").innerHTML =ENBDesc + " / " + SecDesc

        document.getElementById("ENBCodeTxt").value =ENBAulId
        document.getElementById("ENBUCodeTxt").value =ENBDesc
        document.getElementById("SectionIdTxt").value =Secid
        document.getElementById("SectionDescTxt").value =SecDesc
    }

    function FormSelPopUpFn()
    {
        var pageURL;
        
        if((document.getElementById("WrkTypeTXt").value!=""))
        {
            pageURL ="EFormListPopUp.aspx?WrkType="+ document.getElementById("WrkTypeTXt").value+ '&witcode=' + document.getElementById("CodeTxt").value+ '&RowCnt='+ document.getElementById ("RowCntTxt").value
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            
            SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
          alert("Select Work Type")
    }
    
    function fnCrformSubmit()
    {
      //document.all("GoBtn").click()
    }

    function fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,ValidationReq,ValFunID,WofId,WofDesc,RowCnt)
    {
        document.getElementById("EFormDescLab").innerHTML =KfLableVal
        document.getElementById("EFormIdTxt").value=KdIdVal
        document.getElementById("EFormCodeTxt").value=KdCodeVal
        document.getElementById("EFormDescTxt").value=KfLableVal
        document.getElementById("RowCntTxt").value=RowCnt
        
        if (KfLableVal != "")
        {
         document.getElementById("WrkFlowtr").className="MainTD"
         document.getElementById("WrkFlowPreview").innerHTML="<span class='MainTD' style='color:Blue;cursor:hand' onclick='fnWorkFlowPoup(" + WofId + ")'>" + WofDesc + "</span>"
        }
        else
        {
         document.getElementById("WrkFlowtr").className="HideRow"
         document.getElementById("WrkFlowPreview").innerHTML=""
        }
        
        document.getElementById("SplValReqTxt").value=ValidationReq
        document.getElementById("SplValfunIdTxt").value=ValFunID
       
       // if (ValidationReq ==1) QAMS_WRK_ALL_SpecialValidations(ValFunID,document.getElementById("IssBaseIdTxt").value,0) 
    }
    
      function SetInchargegroup(GrpName,Rowcnt)
      {
         var GroupValArr=GrpName.split("#*#")
         
         document.getElementById("GrpNameTxt").value=GroupValArr[0]
         document.getElementById("GrpNameLab").innerHTML=GroupValArr[0]
         document.getElementById("GrpIdTxt").value=GroupValArr[1]
            
      }
  
        function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var PWidth=600
            var PHeight=500
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();

      }
    </script>

    <script language="javascript">
    
    // User List 
    
    function FnUsersListPopUp()
    {
      InchargeSelection(1)
    }
    
    function InchargeSelection(Type) //Grpname
    {
        var pageURL;
        var Grpname=document.getElementById("GrpNameTxt").value

        //?What about render blocks data for modifications. NO Querystring data will be available here.
        if (Type==1)//<%=Request.QueryString("IsuTypeID")%>
            pageURL ="InchargeList.aspx?IsuTypeID=0&IssId="+ document.getElementById("IssBaseIdTxt").value +"&GrpName=" + Grpname //+"&ListType="+ ListType 
        else if (Type==2)
           pageURL ="RevAppListPopUp.aspx?IssId="+ document.getElementById("IssBaseIdTxt").value   + "&DeptName=Executor" 

        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'UserCode',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus(); 
    }

    function fnUserVal(UserName,UserCode,UserId)
    {
        document.getElementById("UserNameLab").innerHTML =UserName
        document.getElementById("UserNameTxt").value =UserName
        document.getElementById("UserIdTxt").value=UserId
    }
    
    // User Group List 
    
      
    function FnUserGroupSelPopUp(UserGrpBaseIdTxtID,UserGrpCodeTxtID,UserGrpCodeLblID)
    { 
        InchargeSelection(2)
    }

    function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
        document.getElementById("GrpNameTxt").value=UsrGrpUCodeVal
        document.getElementById("GrpNameLab").innerHTML=UsrGrpUCodeVal
        document.getElementById("GrpIdTxt").value=UsrGrpIdVal
    }
    
    
    // Work Dependency 
    
    function FnWrkDependentValues()
    {
        //?What about render blocks data for modifications. NO Querystring data will be available here.
        var WrkTYpe= document.getElementById("WrkTypeTXt").value //"<%=Request.QueryString("TYPE")%>"
        if(document.getElementById("WrkTypeTXt").value!="") 
        {
            var pageURL ="WorkItemList.aspx?IssueID=" + document.getElementById("IssBaseIdTxt").value  + "&IssAulId=" + document.getElementById("IssAulIdTxt").value + "&WrkTYpe=" + WrkTYpe
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            
            SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else{
          alert("Select Work Type")
          }
    }
    
    function fnSetVal_DepWrk(KfIdVal,KfLableVal)
    {
         document.getElementById("WrkDepTxt").value=KfIdVal
         document.getElementById("WrkDeplbl").innerHTML=KfLableVal
         document.getElementById("WrkDepText").value=KfLableVal
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
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow >
                        <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="WorkTypeTd" Width="220px"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" >
                        <asp:DropDownList ID="WorkTypeDDL" runat="server" CssClass="MainTD" AutoPostBack=true></asp:DropDownList>
                        <asp:Label CssClass="MainTD" runat="server" ID="WorkTypeLbl"></asp:Label>
                        </asp:TableCell>
                        
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="ENoteBookTd" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnENBSelLstPopUp()" class='RsnPUP' tabindex="5" >
                                <asp:Label ID="ENBUCodeLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="ENBUCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ENBCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="SectionIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="SectionDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FormSelTr" runat =server >
                            <asp:TableCell ID="FormSelTd" Style="font-weight: bold;" runat="server" CssClass="MainTD"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server" CssClass="MainTD">
                                <input class='<%=ActivityCSS%>' onclick="FormSelPopUpFn()" type="button" tabindex="8">
                                <asp:Label ID="EFormDescLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="EFormIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFormCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFormDescTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="SplValReqTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="SplValfunIdTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                 <asp:TextBox ID="RowCntTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow  ID="WrkFlowtr" CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ID="WorkFlowtd" Style="font-weight: bold;" runat="server" Width="220px"></asp:TableCell>
                         <asp:TableCell >
                           <asp:Label ID="WrkFlowPreview" runat=server Text=""></asp:Label>
                         </asp:TableCell>
                          
                        </asp:TableRow>
                        
                         <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="WrkAllTyte" Style="font-weight: bold;" ></asp:TableCell>
                           <asp:TableCell CssClass="MainTD">
                             <asp:RadioButtonList CssClass="MainTD" runat=server id="WrkAllTyteRdl"  RepeatDirection=Horizontal onclick="checkAssignUser()">
                                <asp:ListItem  Value="1">Assign To User</asp:ListItem>
                                <asp:ListItem  Value="2">Assign To Group</asp:ListItem>
                             </asp:RadioButtonList>
                           </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow CssClass="HideRow" ID="InchargeTr">
                            <asp:TableCell ID="InchargeTd" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnUsersListPopUp()" class='<%=Inchargecss %>' tabindex="9">
                                <asp:Label ID="UserNameLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="UserIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="GrpInhargeTr" CssClass="HideRow"> 
                            <asp:TableCell ID="GrpInhargeTD" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnUserGroupSelPopUp(GrpIdTxt,GrpNameTxt,GrpNameLab)" class='<%=GrpCss%>' tabindex="9">
                                <asp:Label ID="GrpNameLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="GrpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="GrpNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                        <%--FnUserGroupSelPopUp--%>
                        
                        <asp:TableRow>
                            <asp:TableCell ID="WrkDepTd" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <input type="button" onclick="FnWrkDependentValues()" class='RsnPUP' tabindex="9" id="WrkDepPopup">
                                <asp:Label ID="WrkDeplbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="WrkDepTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WrkDepText" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="PriorityTD" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="PriorityRBTN" runat="server" TabIndex="10" CssClass="RBList"
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Low</asp:ListItem>
                                    <asp:ListItem Value="2" Selected=True >Medium</asp:ListItem>
                                    <asp:ListItem Value="3">High</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell ID="StartDateTd" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc11:calibercalender id="StartDate" runat="server" TabIndex="11">
                                </uc11:calibercalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell ID="TargetDateTD" Style="font-weight: bold;" CssClass="MainTD" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc11:calibercalender id="TargetDate" runat="server" TabIndex="12">
                                </uc11:calibercalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Width="220px" Style="font-weight: bold;">
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" >
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" onMouseOver="this.className='ButexOCls'"
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
                    <asp:TextBox ID="FlagValTxt" runat="server" Text ="0"></asp:TextBox>
                    <asp:TextBox ID="WrkTypeTXt" runat="server" Text ="0"></asp:TextBox>
                    <asp:TextBox ID="IssueTypeTxt" runat="server" Text ="0"></asp:TextBox>
                    <asp:TextBox ID="IssAulIdTxt" runat="server" Text ="0"></asp:TextBox>
                    <asp:TextBox ID="IssBaseIdTxt" runat="server" Text ="0"></asp:TextBox>
                    <asp:TextBox ID="ActPlnaIDTxt" runat="server" Text ="0"></asp:TextBox>
                   <asp:TextBox ID="HolidayListTxt" runat="server"  CssClass="HideRow"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


<script language="vbscript"> 

'function to set Target date for CAPA Effectiveness
    
'    function VbSetTargetDate(Typeval,StartDate)
'   
'      if Typeval=1 then
'         VbSetTargetDate=  DateAdd("m", 3, StartDate)
'      elseif Typeval=2 then
'        VbSetTargetDate=  DateAdd("d", 1, StartDate)
'      end if
'      
'    End function 

function VbTargetDateValid

    StartDate=document.getElementById("StartDate_CalDateVal").value
    if StartDate="" then exit function

    TargetDate=document.getElementById("TargetDate_CalDateVal").value
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

function VbStartDateValid 
      
    SDate=document.getElementById("StartDate_CalDateVal").value
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
 
  function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
  End function
  
   function DateSerialValue(Year,Month,Day)
     DateSerialValue= dateSerial(Year,Month,Day)
    End function
    
</script>

<script language="javascript">
<!--
//document.Form1.DescTxt.focus()

var taMaxLength = 500
		function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength*1) return false;
	}

	function taCount()
	{
		var taObj=window.event.srcElement;			
		if (taObj.value.length>taMaxLength*1){
			taObj.value=taObj.value.substring(0,taMaxLength*1);
			alert("Characters Exceeding Limit\nMaximum Length: "+ taMaxLength +" Characters")

            }
            
            //CheckMIn3Char ()
            //if (taObj.value.length !="") {
                taObj.detachEvent('onchange', CheckMIn3Char)
                taObj.attachEvent('onchange', CheckMIn3Char)
                                 
            //}
	}

	    function fnSetToReasons(argValue) {  
   		//document.Form1.RemarksTxt.value = argValue
   		document.getElementById("RemarksTxt").value=argValue
	        }
//-->

    function TargetDateValid(src,args)
    {
        var Flag= VbTargetDateValid() ;
        if(Flag==false)
        {
            args.IsValid=false;
            Page_IsValid=false;
        }
    } 

     function StartDateValid(src,args)
    {
        var Flag= VbStartDateValid() ;
        if(Flag==false)
        {
            args.IsValid=false;
            Page_IsValid=false;
        }
    } 
    
//    function SetMSTFieldsValue(test1,test2)
//    {
//       if (test1 == 'StartDate')
//       {
//          SetTargetDate(test2,1)
//       }
//    }
    
    function ValidateuserExistence(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
        
         if (document.getElementById("SplValReqTxt").value== "1")
         {
            if(WrkAllExpMsg!="")
                {
                    src.errormessage=WrkAllExpMsg
                    args.IsValid=false;
                    Page_IsValid=false;
                }
         }
    }
    

    function handleMaskOpener()
    {
        if(document.getElementById("FlagValTxt"))
        {}
        else window.setTimeout("ChaosePopup()",600)
    }
    function ChaosePopup()
    {
        if (typeof(window.parent.window.CloseFunctionality) == "function")
            window.parent.window.CloseFunctionality()
    }
    
    
    function checkAssignUser()
    {
        if ( document.getElementById("WrkAllTyteRdl_0").checked ==true)
        {
          document.getElementById("InchargeTr").className="MainTD"
          document.getElementById("GrpInhargeTr").className="HideRow"
        }
        else if ( document.getElementById("WrkAllTyteRdl_1").checked ==true)
        {
          document.getElementById("GrpInhargeTr").className="MainTD"
          document.getElementById("InchargeTr").className="HideRow"
        }
    }
    
    function ValidateUserSelection(src,args)
    {
      args.IsValid=true;
      Page_IsValid=true;
       var ExpMsg='';
       
       if ( document.getElementById("WrkAllTyteRdl_0").checked ==true)
         { if (document.getElementById("UserIdTxt").value  == "" )  ExpMsg= ExpMsg+'Select Incharge'  + '\n-' }
       else if ( document.getElementById("WrkAllTyteRdl_1").checked ==true)
           { if (document.getElementById("GrpIdTxt").value  == "" ) ExpMsg= ExpMsg+'Select Incharge' + '\n-' }
       
       if(ExpMsg!="")
        {
            src.errormessage=ExpMsg.substring(0,ExpMsg.length-2)
            args.IsValid=false;
            Page_IsValid=false;
        }
    }
    
    
    function CheckValue(src,args)
      {  
           args.IsValid=true;
           Page_IsValid=true; 
           
          if (WrkAllExpMsg !="")
          {
            src.errormessage=WrkAllExpMsg.substring(0,WrkAllExpMsg.length-3)
            args.IsValid=false;
            Page_IsValid=false;  
          }  
         
      } 
      
      
   function ValidateTargetdate(src,args)
    {  
           args.IsValid=true;
           Page_IsValid=true; 
        //?What about render blocks data for modifications. NO Querystring data will be available here.
           
           var ActPlanTargetdate= "<%=ActPlanTargetdate%>"
           var Targetdate=document.getElementById("TargetDate_CalDateVal").value
           if ( (ActPlanTargetdate != "") && (ActPlanTargetdate != "Nothing") && (Targetdate !="") )
           {
             var Plandate=new Date(ActPlanTargetdate)
             var WrkTardate=new Date(Targetdate)
             DDgap=DateDiffFun(DateSerialValue(Plandate.getFullYear(),(Plandate.getMonth()+1),Plandate.getDate()),DateSerialValue(WrkTardate.getFullYear(),(WrkTardate.getMonth()+1),WrkTardate.getDate()))
             
             if (DDgap >0)
             {
                src.errormessage="Target Date Must be less than or equal to Action Plan Target Date "+ '\n-' +  "Action Plan Target date is :" +ActPlanTargetdate
                args.IsValid=false;
                Page_IsValid=false;                 
             }
             
           }
   
    }
    
//    function SetStartDate(today,Type)
//    {         
//         
//          var StartDate=today 
//          document.getElementById("StartDate:CalDateVal").value=SetDateFormat(StartDate,1)
//          document.getElementById("StartDate:CalDateDisplay").value=SetDateFormat(StartDate,2)
//       
//    }
//        
//    function SetTargetDate(today,Type)
//    {         
//         var today1=new Date(today)
//         today= DateSerialValue(today1.getFullYear(),(today1.getMonth()+1),today1.getDate()) ;
//          
//                   
//        var StartDate=VbSetTargetDate(Type,today);
//          
//         if (checkdate(StartDate)==false)
//         {
//            SetTargetDate(StartDate,2)       
//         }
//         else
//          {
//           //dd-mon-yyyy
//           
//            document.getElementById("TargetDate:CalDateVal").value=SetDateFormat(StartDate,1)
//            document.getElementById("TargetDate:CalDateDisplay").value=SetDateFormat(StartDate,2)
//          }
//    }
     //function to set date format 
    function SetDateFormat(CurrentDate,type)
    {
        var m,d,y,Result;
        var monthname=new Array("Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
        var nDate = new Date(CurrentDate)
        m = nDate.getMonth();
        d = nDate.getDate();
        y = nDate.getFullYear(); 
        
        if (type==1){ Result= (m+1) + '/' + d + '/' + y  ; }
        else {  Result= d + '-' + monthname[m] + '-' + y  ;}
        return Result;
    }
    
    /* ****  To Set Start date Day after 3 months from current date in CAPA effectiovess From (only) *****/
    
//    if("<%=page.IsPostBack%>"== "False")
//    {
//     if (document.getElementById("WrkTypeTXt").value=="15")
//     {
//      var today=new Date()
//      //SetStartDate(today,1)
//      SetTargetDate(today,1)
//      }
    //}
    
    
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
    
    
   //As per Ravi sir Instruction
    
    var Flag=1;
  if ("<%=Page.IsPostBack %>" == "False")
  {
    if(Flag==1){
        if (<%=TransType%>==3) 
        {
            document.getElementById("WrkDepPopup").disabled="disabled";
           var TargetDt= document.getElementById("TargetDate_CalDateVal");
           TargetDt.nextSibling.style.display='none'
        if ( document.getElementById("WrkAllTyteRdl_0").checked ==true)
            document.getElementById("WrkAllTyteRdl_1").disabled="disabled";
        if ( document.getElementById("WrkAllTyteRdl_1").checked ==true)
            document.getElementById("WrkAllTyteRdl_0").disabled="disabled";
        }
      }
  }
  
  
  
</script>





</html>
