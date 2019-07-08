<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanWorkInitiation.aspx.vb" Inherits="PrsWorkFlow.PlanWorkInitiation" %>

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
    
    
    
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
	</script>
	
     <script language="javascript">
     
     
      function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }
      
     function ActivateFunctionality()
     {
      var IssueId=document.getElementById("IsuLogIDTxt").value
	  var IssAulID=document.getElementById("IsuCodeTxt").value
	  var TypeName=document.getElementById("ActionTypeLbl").innerHTML
	  var Type=document.getElementById("TypeTxt").value
	  var ActionPlanId =document.getElementById("PlanIdTxt").value
	  var WrkitemCnt=<%=WrkitemCnt%>
	  WrkitemCnt=WrkitemCnt+1
	  var WitCode=document.getElementById("PlanCodeTxt").value + "/W"+WrkitemCnt
	  WitCode=WitCode.replace("&","%26")
	      
      ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID+"&IsuTypeID=" + document.getElementById("IsuTypeIdTxt").value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value  + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value )
     }
     function CloseFunctionality()
     {
        HideMask()
       //'document.getElementById("btnConfirm").click()
       document.forms(0).submit()
        
     }
    var WrkItemType
    function ReadWorkItemList(RowCnt,Type)
	{
	 WrkItemType=Type
	 var IssueFormId=document.getElementById("IsuTypeIdTxt_"+ RowCnt).value
	 var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
	 QAMS_checkuserAuthoentication(IssueFormId,ActionPlanId,RowCnt)
	}
	
	function RaiseWrkItems(Status,RowCnt)
	{ 
	     if(Status ==1)
	     {
	        
              var IssueId=document.getElementById("IsuLogIDTxt_" + RowCnt).value
        	  
	          var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
            
          // alert(ActionPlanId)
           //To check whether QRM and Investigation workitems execution completed or not
	          AjaxReadQRMPlanStatus(IssueId,ActionPlanId,15,"ActPlnStatus",RowCnt)
	          
    	           
         }
         else
           alert("User is Not Authorized to Initiate Action Plan Work Items")
	}
	
	
    function ActPlnStatus(value,RowCnt)
    { //alert(value)
       if(value==2)
       {
        alert("Mandatory Action Plan(s) Are Pending");  // QRM / Investigation  Type  Plan(s) Pending
         return;
       }
      else
      {
         if ("<%=IsEMPlan%>"==1)
         {
            var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
            AjaxReadEMPlanStatus(ActionPlanId,"EMPlnStatus",RowCnt)         
         }
         else
         {
	        fnActPlnWrkItems(RowCnt)
	     }
      }
       
   }
 
   function EMPlnStatus(Status,RowCnt)
   {
      
        if (Status!="")
         {
            var Flag=AlertMsgBox(Status + " Plan(s) are Pending, Do You want to continue")
            if (Flag==6) //Yes            
            {
                fnActPlnWrkItems(RowCnt)
            }          
                      
         }
         else
         {
	        fnActPlnWrkItems(RowCnt)
	     }  
   }
    
     function fnActPlnWrkItems(RowCnt)
    {

          var IssueId=document.getElementById("IsuLogIDTxt_" + RowCnt).value
	      var IssAulID=document.getElementById("IsuCodeTxt_" + RowCnt).value
	      var TypeName=document.getElementById("ActionTypeName_"+ RowCnt).value
	      var Type=2//document.getElementById("TypeTxt_"+ RowCnt).value
	      var PlanType=document.getElementById("TypeTxt_"+ RowCnt).value
	      
	      	    
	      var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
          var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value
          var WrkitemCnt=document.getElementById("WrkitemCnt_"+ RowCnt).value
          WrkitemCnt=parseInt(WrkitemCnt)+1
	      var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value //+ "/W"+WrkitemCnt
	      WitCode=WitCode.replace("&","%26")
	      
	      
	      var Targetdate

            if ( (document.getElementById("ReviewDate_"+ RowCnt).value != "") && (document.getElementById("ReviewDate_"+ RowCnt).value != "--") )
	        {
	             if ( document.getElementById("RevAppReq_"+ RowCnt).value == document.getElementById("RevAppComp_"+ RowCnt).value  )
	             Targetdate=document.getElementById("ReviewDate_"+ RowCnt).value 
	             else
	             Targetdate=document.getElementById("Targetdate_"+ RowCnt).value 	           
	         }
	        else
	        {   Targetdate=document.getElementById("Targetdate_"+ RowCnt).value   }
	      
            var eFormBId = 0;
            var eFormAId = 0;

            var str="WrkItemPopup.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value 
            if(WrkItemType==3)
            {
                eFormBId = document.getElementById("efromBId_"+ RowCnt).innerText
                eFormAId = document.getElementById("efromAId_"+ RowCnt).innerText
                ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&eFormBId=" + eFormBId + "&eFormAId=" + eFormAId + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value)
            }
            else 
            {
            if(WrkItemType==2)
                 ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId=" + IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value + "&PlanType=" + PlanType)
            else 
                 ShowMask("WrkItemPopup.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&Targetdate=" + Targetdate + "&WitCode="  + document.getElementById("PlanCodeTxt_"+ RowCnt).value  + "&WrkitemCnt=" + document.getElementById("WrkitemCnt_"+ RowCnt).value  + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory=" +  document.getElementById("IsuCategoryTxt").value )
            }
  
}
	
	function RaiseWrkItems_old(Status,RowCnt)
	{ 
	     if(Status ==1)
	     {
          var IssueId=document.getElementById("IsuLogIDTxt_" + RowCnt).value
	      var IssAulID=document.getElementById("IsuCodeTxt_" + RowCnt).value
	      var TypeName=document.getElementById("ActionTypeName_"+ RowCnt).value
	      var Type=document.getElementById("TypeTxt_"+ RowCnt).value
	      
	      	    
	      var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
          var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value
          var WrkitemCnt=document.getElementById("WrkitemCnt_"+ RowCnt).value
          WrkitemCnt=parseInt(WrkitemCnt)+1
	      var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value //+ "/W"+WrkitemCnt
	       WitCode=WitCode.replace("&","%26")
	      
	      var Targetdate
	      
	      if ( (document.getElementById("ReviewDate_"+ RowCnt).value != "") && (document.getElementById("ReviewDate_"+ RowCnt).value != "--") )
	        {
	             if ( document.getElementById("RevAppReq_"+ RowCnt).value == document.getElementById("RevAppComp_"+ RowCnt).value  )
	             Targetdate=document.getElementById("ReviewDate_"+ RowCnt).value 
	             else
	             Targetdate=document.getElementById("Targetdate_"+ RowCnt).value 	           
	         }
	      else
	        {   Targetdate=document.getElementById("Targetdate_"+ RowCnt).value   }
	      
    	  var eFormBId = 0;
    	  var eFormAId = 0;
    	  
    	  var str="WrkItemPopup.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value 
            if(WrkItemType==3)
            {
                eFormBId = document.getElementById("efromBId_"+ RowCnt).innerText
                eFormAId = document.getElementById("efromAId_"+ RowCnt).innerText
                ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&eFormBId=" + eFormBId + "&eFormAId=" + eFormAId + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value)
            }
            else 
            {
                if(WrkItemType==2)
                ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory="+ document.getElementById("IsuCategoryTxt").value)
                else 
                ShowMask("WrkItemPopup.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + document.getElementById("IsuTypeIdTxt_"+ RowCnt).value + "&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&Targetdate=" + Targetdate + "&WitCode="  + document.getElementById("PlanCodeTxt_"+ RowCnt).value  + "&WrkitemCnt=" + document.getElementById("WrkitemCnt_"+ RowCnt).value  + "&IssueCode=" + document.getElementById("IssueUcodeTxt").value + "&IsuCategory=" +  document.getElementById("IsuCategoryTxt").value )
            }
         }
         else
           alert("User is Not Authorized to Initiate Action Plan Work Items")
	}
	
	
	
	
	 
     function OpenIsueReport()
     {
       var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID") %>  + "&IsuTypeId=" + <%=Request.QueryString("IsuTypeID") %> + "&PrsType=" + <%=prsType%> 
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }
     
     function SetWorkItems(WitID,WitCode) {}
     
     </script>
  <script language ="vbscript" >
  
      function AlertMsgBox(ErrStr)
            ReturnVal=MsgBox(ErrStr,36,"Message From Caliber QAMS")
            AlertMsgBox= ReturnVal
        End function
  
  </script>
 
     
</head>
<body>
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
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
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
                         
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="NewWorkItemTd" style="font-weight:bold; width:30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                                       
                            <asp:Table ID="Table2" runat =server  Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center">
                            
                            <asp:TableRow>
                            
                            <asp:TableCell CssClass="HideRow" Width="200px" >
                              <asp:RadioButtonList CssClass="MainTD" runat="server" iD="NewWorkRDL" RepeatDirection="Horizontal" Width="170px" AutoPostBack="true" >
                              <asp:ListItem Value="1"  Selected=True>New Work</asp:ListItem>
                              <asp:ListItem Value="2">Template</asp:ListItem>
                              </asp:RadioButtonList>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="HideRow" Width="100px">
                            <asp:DropDownList runat="server" ID="TemplateDDL" CssClass="HideRow" style="width:100px"></asp:DropDownList>
                            </asp:TableCell>
                            
                            <asp:TableCell  CssClass="MainTD" Width="10px">
                            <input type="button" onclick="ReadWorkItemList()" class="RsnPUP"  >
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="WotkItemLbl" CssClass="HideRow" runat="server" style="color:Red" ></asp:Label>
                            </asp:TableCell>
                            
                            </asp:TableRow>
                            </asp:Table>
                                                      
                            </asp:TableCell>
                        </asp:TableRow>
                                                           
                          <asp:TableRow ID="DisplayTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD"  ID="TableCell2" ColumnSpan =2>
                            <asp:Table ID="DispTbl" runat =server  CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center" >
                            </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ActionSatTr" CssClass="HideRow">
                          <asp:TableCell CssClass="MainTD" ID="ActionSatTd"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">  
                             <asp:RadioButtonList CssClass="MainTD" ID="ActionSatisRDL" runat=server RepeatDirection=Horizontal >
                               <asp:ListItem Value="1" Selected=True>Satisfactory</asp:ListItem>
                               <asp:ListItem Value="2">Not-Satisfactory</asp:ListItem>
                             </asp:RadioButtonList>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="SummaryTR" CssClass="HideRow">
                          <asp:TableCell CssClass="MainTD" ID="SummaryTD"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">  
                            <asp:TextBox ID="SummryTxt" CssClass="TxtCls" TextMode=MultiLine runat=server Width="250px" onkeypress="taLimit()"
                                    onkeyup="taCount()"></asp:TextBox>
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
                        HorizontalAlign="center" ID="Table3" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <input type =button  id="InitiateWorkBtn" onMouseOver="this.className='ButSelOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButSelCls'" value="<%=WorkIntiationCaption%>" style="width:130px" onclick="ActivateFunctionality()"/>
                                <asp:Button CssClass="HideRow" runat="server" ID="IssClsBtn"  onMouseOver="this.className='ButexOCls'"  AccessKey="C" onMouseOut="this.className='ButexCls'" Text=""  >
                                                       </asp:Button>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70" CausesValidation=false>
                                </asp:Button>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign=Right>
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status report" style="width:130px" onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="IssuedWorksIdLstTxt" runat =server ></asp:TextBox>
                        <asp:TextBox ID="IssuedWorksAulIdLstTxt" runat =server ></asp:TextBox>
                        <asp:TextBox ID="PlanIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IsuLogIDTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IsuTypeIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="IsuCodeTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="TypeTxt" runat="server"></asp:TextBox>
                         <asp:TextBox ID="PlanCodeTxt" runat="server"></asp:TextBox>
                         <asp:TextBox ID="IssueUcodeTxt" runat="server"></asp:TextBox>
                         <asp:TextBox ID="IsuCategoryTxt" runat="server"></asp:TextBox>
                         
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language=javascript>

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



</script>


</html>
