<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ObservationDet.aspx.vb" Inherits="AuditResponse.ObservationDet" %>


<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Trn</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
		</script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable" WIDTH="98%" runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server">Audit Response</asp:Literal>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow>
					<asp:TableCell>
						<!-----------Base table------------->
						<asp:Table runat="server" CSSClass="SubTable" width="100%" CELLPADDING="0" cellspacing="1"
							HorizontalAlign="center" ID="Table1">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CSSClass="SubHead" ColumnSpan="2">
									<asp:Literal id="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							
							
							<asp:TableRow ID="HeaderCodeRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="HeaderCodeTd" >Header Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<%--<asp:Label id="HeaderCodeLbl" runat="server"></asp:Label>--%>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="AdtTempRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="AdtTempTd" >Audit Format No.</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="AdtTempLbl" runat="server"></asp:Label>
									<asp:TextBox id="BodyidTxt"  runat="server" CssClass="HideRow"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="HdrCodeRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="HdrCodeTd" >Audit Header Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="Label1" runat="server"></asp:Label>
									<asp:Label id="HeaderCodeLbl" runat="server"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="SubHeadTd"  ID="RspTempTd" ColumnSpan="2"></asp:TableCell>
							</asp:TableRow>				
							
							<asp:TableRow id="LotInfo1Tr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfo1Tab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd">Audit Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="CodeDTD">
								</asp:TableCell>
							</asp:TableRow>
						
							<asp:TableRow >
								<asp:TableCell CssClass="MainTD" ID="ATyeTd">Audit Type</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AtypeValTd">
								</asp:TableCell>
							</asp:TableRow>
								
							<asp:TableRow >
								<asp:TableCell CssClass="MainTD" ID="DescTd">Audit Description</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="DescDTD">
								</asp:TableCell>
							</asp:TableRow>
							
							<%--Audit Scope ---START--%>
							<asp:TableRow ID="ScopeTr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeTd"  Width = "40%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="ScopeMETr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeMETd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeMEValTd">
								</asp:TableCell>
							</asp:TableRow>
							<%--Audit Scope ---End--%>
							
						    <asp:TableRow ID="RegRw" CssClass="HideRow">
                                <asp:TableCell ID="RegTd" CssClass="MainTD" Width = "40%">Audit Agency / Customer</asp:TableCell>
                                <asp:TableCell ID="RegNameTd" CssClass="MainTD"></asp:TableCell>
                            </asp:TableRow>
							
							<asp:TableRow id="TableRow1">
								<asp:TableCell CssClass="MainTD" ID="DeptTd">Department/Site</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="DeptValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="TableRow2">
								<asp:TableCell CssClass="MainTD" ID="PrcsTd">Audit Area</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="PrcsValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="VendRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="VendTd">Vendor</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="VendValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="ItemRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ItemTd">Item(s)</asp:TableCell>
								<asp:TableCell CssClass="MainTd" ID="ItemValTd">
								</asp:TableCell>
							</asp:TableRow>
													
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="SubHeadTd"  ID="ObsTempTd" ColumnSpan="2">Audit Header Template Proposal</asp:TableCell>
							</asp:TableRow>		
							
							<asp:TableRow id="LotInfoTr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfoTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="StDateTD"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="StDTD">
								   
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EtDateTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="EndTD">
								  
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccStDateTd">Actual Start Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccStDateText">
								  
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateTd">Actual End Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateText">
								 
								</asp:TableCell>
							</asp:TableRow>
							                      
							<asp:TableRow id="OtherDetRow" >								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="DetailsTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="OthTr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" ID="OthTd" columnspan=2>
								</asp:TableCell>
							</asp:TableRow>
																
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
						<!-----------End of Base table------------->
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow ID="IARow" Runat="server" CssClass="HideRow">
					<asp:TableCell>
						<asp:Table ID="IATab" Runat="server" cssClass='SubTable' width="100%" cellpadding="0" cellspacing="1"
							HorizontalAlign="Center"></asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="MainFoot">
					<asp:TableCell>
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell>
								
								</asp:TableCell>
								
									<asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
								
								</asp:TableCell>
								<asp:TableCell  HorizontalAlign="Right">
									
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
						<asp:TextBox ID="DeptTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="ProcessTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="CheckLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="AudtitorTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="AuditeeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="DateTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="TextBox1" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="TextBox2" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="TextBox3" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="TextBox4" runat="server" CssClass="HideRow"></asp:TextBox>
						<%--<asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>--%>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		
	</body>
<script language="javascript">
	 	function ExpiryDateValid(src,args){
//	 	   var Flag= VbExpiryDateValid() ;
//   if(Flag==false){
//		args.IsValid=false;
//  	    Page_IsValid=false;
//  	    }
 }
 
 function GetDateFrn(Deptar)
 {
//    for (var i=0 ;i<Deptar;i++)
//    {
//        document.getElementById("DateTxt").value += "#*#" + document.getElementById("Cal" & i & "$CalDateVal").value 
//    }
 }
 
 	function DateValid(src,args){
 	var Cnt = <%=Cnt%>
 	for(var j =0 ; j<Cnt; j++)
 	{
 	     var Flag= VbDateValid(j) ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
//  	    else
//  	    {
//  	        document.getElementById("DateTxt").value += "#*#" + document.getElementById("Cal" & j & "$CalDateVal").value 
//  	    }
 	}
	 	  
 }
    function FnCheckListPopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "ChckListPopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetCheckListVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("CheckListLbl" + CheckListRowCnt).innerText=KfLableVal
        var Cnt = <%=Cnt%>
//        if(document.getElementById("CheckLstTxt").value==""  && CheckListRowCnt == 0)
//        {
//            if(Cnt==CheckListRowCnt)
//            {
//                 document.getElementById("CheckLstTxt").value += "," + KdIdVal
//            }
//        }
            
//                document.getElementById("CheckLstTxt").value =  KdIdVal
            document.getElementById("CheckListTxt" + CheckListRowCnt).value =  KdIdVal
            
//            for(var i=0;i<Cnt;i++)
//            { 
//             var a =new array();
//             a.push(KdIdVal);
//                if ( Cnt==CheckListRowCnt && CheckListRowCnt!=0)
//                {
//                    document.getElementById("CheckLstTxt").value +="#*#" + KdIdVal
//                }
//                else
//                {
//                    document.getElementById("CheckLstTxt").value =  KdIdVal
//                }
            }
//        else
//        {
//            document.getElementById("CheckLstTxt").value +="#*#" + KdIdVal
//        }
//    }
    
    function FnAuditorPopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditorPopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditorVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("AuditorLbl" + CheckListRowCnt).innerText=KfLableVal
        if(document.getElementById("AudtitorTxt").value=="")
        {
            document.getElementById("AudtitorTxt").value =KdIdVal
        }
        else
        {
            document.getElementById("AudtitorTxt").value +="#*#" + KdIdVal
        }
        
    }
    
    function FnAuditeePopUp(Deptvar)
    {	   	
    SetPopDimensions()
    var pageURL = "AuditeePopUp.aspx?Deptvar=" + Deptvar
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    function fnGetAuditeeVal(KdIdVal,KdCodeVal,KfLableVal,CheckListRowCnt)
    {
        document.getElementById("AuditeeLbl" + CheckListRowCnt).innerText=KfLableVal
        if(document.getElementById("AuditeeTxt").value=="")
        {
            document.getElementById("AuditeeTxt").value=KdIdVal
        }
        else
        {
            document.getElementById("AuditeeTxt").value +="#*#" + KdIdVal
        }
        
    }
    
  function fnOpenCrPopUpAudit(UsgID,RowCount)
    {	   	
    SetPopDimensions()
    var pageURL = "../InstUsage/Particulars.aspx?BId=" + UsgID 
    var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
    var SpWinObj = window.open(pageURL,'BRMPopup',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
    }
    
    
</script>
	<script language="vbscript">
 function VbExpiryDateValid 
       ExpDate=document.getElementById("TxtCal$CalDateVal").value
  VbExpiryDateValid=true
  if ExpDate="" then exit function
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  ExpDateAry=split(ExpDate,"/")
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	  
	DDgap=DateDiff("d",Today,ExpDateVal)
	if DDgap<0 then
		VbExpiryDateValid=false
	 end if
 'msgbox( Today &"   " &  MfgDateVal &"    "  &DDgap)
 End function
 
  function VbDateValid(j)
       AccStDate=document.getElementById("AccStDate$CalDateVal").value
       AccEdDate=document.getElementById("AccEtDate$CalDateVal").value
     
  VbDateValid=true
  if AccStDate="" and AccEdDate="" then exit function
  
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=document.getElementById("Cal" & j & "$CalDateVal").value 'dateSerial(ThisYear,ThisMonth,ThisDay)
	  if Today="" then exit function
	  AccStDateAry=split(AccStDate,"/")
	  AccStDateVal=dateSerial(AccStDateAry(2),AccStDateAry(0),AccStDateAry(1))
	  
	  AccEdDateAry=split(AccEdDate,"/")
	  AccEdDateVal=dateSerial(AccEdDateAry(2),AccEdDateAry(0),AccEdDateAry(1))
	  
	DDgap1=DateDiff("d",Today,AccEdDateVal)
	DDgap=DateDiff("d",Today,AccStDateVal)
	if DDgap>0 then
		VbDateValid=false
	 end if
	 
	 if DDgap1<0 then
		VbDateValid=false
	 end if
	 
 'msgbox( Today &"   " &  MfgDateVal &"    "  &DDgap)
 End function
 
 </script>
 
 <script language=javascript>
<!-- 
 function SDateValid(src,args){
   var Flag= VbSDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
 
//-->
 </script>


							

<script language="vbscript">
function VbSDateValid 
		SDate=document.getElementById("TxtCal2$CalDateVal").value
		VbSDateValid=true
		if SDate="" then exit function
			ThisMonth = <%=ThisMonth%>
			ThisYear = <%=ThisYear%>
			ThisDay = <%=ThisDay%>
			Today=dateSerial(ThisYear,ThisMonth,ThisDay)

			SDateAry=split(SDate,"/")
			SDateVal=dateSerial(SDateAry(2),SDateAry(0),SDateAry(1))

		DDgap=DateDiff("d",Today,SDateVal)
			if DDgap>0 then
			VbSDateValid=false
			end if 
End function
 
 </script>
	
	<script language=javascript>
	function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }		
<!--

//-->
</script>
	</HTML>


