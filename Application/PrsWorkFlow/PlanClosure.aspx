<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PlanClosure.aspx.vb" Inherits="PrsWorkFlow.PlanClosure" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
		<script language="javascript" src="../JScript/jquery.min.js"></script>
   
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
            var features = "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
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
	  
      ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID+"&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode)
     }
     function CloseFunctionality()
     {
        HideMask()
       //'document.getElementById("btnConfirm").click()
       document.forms(0).submit()
        
     }
    
    function ReadWorkItemList(RowCnt)
	{
   
	  var IssueId=document.getElementById("IsuLogIDTxt_" + RowCnt).value
	  var IssAulID=document.getElementById("IsuCodeTxt_" + RowCnt).value
	  var TypeName=document.getElementById("ActionTypeName_"+ RowCnt).value
	  var Type=document.getElementById("TypeTxt_"+ RowCnt).value
	  var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
      var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value
      var WrkitemCnt=document.getElementById("WrkitemCnt_"+ RowCnt).value
         WrkitemCnt=parseInt(WrkitemCnt)+1
	  var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value + "/W"+WrkitemCnt
	
      ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID+"&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode)
	  
	}
 
     function OpenIsueReport()
     {
       var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID") %>  + "&IsuTypeId=" + <%=Request.QueryString("IsuTypeID") %> + "&PrsType=<%=Request.QueryString("PrsType")%>" 
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }
     
     var RowCount 
     function fnOpenACPPopUp(RowCnt)
     {
        RowCount=RowCnt
        var PlanId=document.getElementById("PlanIdTxt_" + RowCnt).value
        var pageURL = "../PrsWorkFlow/ActionPlanWrkList.aspx?PlanId=" + PlanId
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }
     
     
     function fnSetWorkItemVal(WorkItemIdVal, WorkItemCodeVal)
     {
       document.getElementById("MonitiringWITIDTXT_"+ RowCount).value=WorkItemIdVal
       document.getElementById("MonitiringWITCodeTXT_"+ RowCount).value=WorkItemCodeVal
       document.getElementById("MonitiringWITTXT_"+ RowCount).innerHTML=document.getElementById("MonitiringWITCodeTXT_"+ RowCount).value
     } 
     
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
                        
                             <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
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
            
        
            
              <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                        <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                            padding-bottom: 0px">
                             <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
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
                         <asp:TextBox ID=CodeTxt runat=server></asp:TextBox>
                          <asp:TextBox ID="IsuTyepTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                          <asp:TextBox ID="PrsTypeTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="ActPlanInChargeGrpTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                                         </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>


<script language=vbscript>
   function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
    End function
      	
      	
</script>


<script language=javascript>

        
    function AjaxCheckDuration1(IsuLogId,PlanId,BtnId,RetrunFun,ReturnParams)
    {
       
        var recary = new Array(); 
        var xmlhttp;
        try
        {
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch(ex)
        {
            try 
            {
             xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
            }
            catch(ex)
            {
                try
                {
                 xmlhttp=new XmlHttpRequest();
                }
                catch(ex)
                {
                    alert("please update the webbrowser");
                }
            }
        }

        xmlhttp.onreadystatechange=function()
        {
            if(xmlhttp.readystate==4)
            {
                var RtnStr="abc"
                var ReturnArr =new Array()
                RtnStr=xmlhttp.ResponseText
                if (IsuLogId==0) {RtnStr=2}
                CheckVal(RtnStr, BtnId, RetrunFun, ReturnParams)
               
            }
        }  
        var url="../PrsWorkFlow/AjaxCalIsuTrgDateDuration.aspx?IsuLogId=" + IsuLogId + "&PlanId=" + PlanId
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }


    function CloseActionplan(RowCnt)
    {
      var Chkflag=0;
      var EMPlnFlag=$('#EffecteFormRdl_0').parent(0).parent(0)[0].className;
      if(EMPlnFlag!='HideRow')
      {
          if (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true)
              {          
               
                document.getElementById("MonitiringRemarksTr_" + RowCnt).className="HideRow"
                if(<%=DisplayDetails %>!=1)
                {
                document.getElementById("MonitiringRemarTXt_" + RowCnt).value=""
                }
                
                if($("#WrkTable tr").length==0)
                  {
                    Chkflag=0;
                    alert("Effectiveness/Monitoring Required Cannot Be Selected As 'Yes',If Work Item(s) Are Not Available");
                    //document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked = false;
                  }
                 else if('<%=WrkItmStatus%>'=="0")
                 {
                    Chkflag=0;
                    alert("Effectiveness/Monitoring Required Cannot Be Selected As 'Yes',If Work Item(s) Are Not Available");
                 } 
                 else
                  {Chkflag=1;}
              }       
              else
                  {Chkflag=1;}      
           if(Chkflag==1){
                AjaxCheckDuration1(<%=Request.QueryString("IsuLogID") %>,<%=Request.QueryString("PlanID") %>,"CloseActionplan" + RowCnt,"CloseActPln",RowCnt)
               } 
       }
      else
      {
           AjaxCheckDuration1(<%=Request.QueryString("IsuLogID") %>,<%=Request.QueryString("PlanID") %>,"CloseActionplan" + RowCnt,"CloseActPln",RowCnt)
      
      } 
      
      
       
               
    }
    
    function CloseActPln(ReturnValue,RowCnt)
    {
       if(ReturnValue==0)
      {
            CloseActionplan1(RowCnt) 
      } 
    }


    function  CloseActionplan1(RowCnt)
    {
       

    var Excemsg=""
    
    if($.trim(document.getElementById("ClosuerCommentsTxt_"+RowCnt).value)== "")
    {
        Excemsg = "Enter Value For: Closure Comments "+ "\n";
    }
    if((document.getElementById("EffecteFormRdl_"+RowCnt+ "_0").checked==false) && (document.getElementById("EffecteFormRdl_"+RowCnt+ "_1").checked==false) )
    {
       Excemsg =Excemsg+"Select Value For:" + "<%=EfftCaption%>" + "\n";
    }
    if(document.getElementById("EffecteFormRdl_"+RowCnt+ "_0").checked==true)
    {
//      if(document.getElementById("MonitiringDate_" + RowCnt + ":CalDateVal").value=="")
//      {
//       Excemsg =Excemsg+"Select Value For: " + "<%=MonitoringCaption%>" + "\n";
//      }
//      else
//      {
//        var today=new Date()
//        var CurrentDate= (today.getMonth()+1)+ '/' + today.getDate()  +  '/' +  today.getFullYear();
//        var DDgap= DateDiffFun(CurrentDate,document.getElementById("MonitiringDate_" + RowCnt + ":CalDateVal").value)
//        if (DDgap <0)
//         {Excemsg =Excemsg+"<%=MonitoringCaption%>" + " Must Be Greater Than Current Date" + "\n"; }
//      } 
//       
//     
//      
//      if(document.getElementById("MonitiringDays_" + RowCnt ).value=="")
//      Excemsg =Excemsg+"Enter Value For: " + "<%=MonitoringDuraCap%>" + "\n";  
//      
//      if(document.getElementById("MonitiringWITIDTXT_" + RowCnt ).value=="")
//      Excemsg =Excemsg+"Select Value For: " + "<%=MonotoringOnCap%>" + "\n"; 
    }
    
    if(document.getElementById("EffecteFormRdl_"+RowCnt+ "_1").checked==true)
    {
      if($.trim(document.getElementById("MonitiringRemarTXt_" + RowCnt).value)=="")
      Excemsg =Excemsg+"Enter Value For: Remarks / Reasons"+ "\n";
    }
    
     if(<%=Displaydetails%>==1)
      {
      if(document.getElementById ("ChangeReasonsTxt_" + RowCnt).value=="")
      {
      Excemsg =Excemsg+"Enter Value For: Remark(s) / Reason(s)"+ "\n";
      }
      }
   
    if(<%=EFMActionPln %>==1)
    {
        if((document.getElementById("MonitoringRdl_"+RowCnt+ "_0").checked==false) && (document.getElementById("MonitoringRdl_"+RowCnt+ "_1").checked==false) )
            Excemsg =Excemsg+"Select Value For: <%=MonitorStsCap%>"+ "\n";
//        if(document.getElementById("MonitoringRdl_"+RowCnt+ "_1").checked==true &&   document.getElementById("RefIsuDescTxt" + RowCnt).value== "")  
//             Excemsg =Excemsg+"Select Value For: <%=IssueRefCap%>"+ "\n";
        if (document.getElementById ("BatchExeTxt" + RowCnt).value =="")
            Excemsg =Excemsg+"Enter Value For: <%=NumBatchCap%>"+ "\n";
        if(document.getElementById("MonitoringRdl_"+RowCnt+ "_1").checked==true && $.trim(document.getElementById("RemTxt" + RowCnt).value)== "")  
             Excemsg =Excemsg+"Enter Value For: Remark(s)/Reason(s)"+ "\n";
        if(document.getElementById("MonitoringRdl_"+RowCnt+ "_1").checked==true && document.getElementById("RefIsuIdTxt"+RowCnt).value== "")  
             Excemsg =Excemsg+"Select Issue Reference"+ "\n";
            
    }
    
    if (Excemsg!="")
    {
        alert(Excemsg);
        return;
    }
    
    fnCallESign(6,RowCnt); 
    //Ajax_CloseActionplan(RowCnt)
}


    function Fn_XMLTableRow(ColName,ColValue,TableName)
    {
        TableName = TableName ? TableName : "DataTable"
        return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
    }
    
  function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<"
   {
   
      Cdata =Cdata.replace("&","&amp;"); 
      Cdata=Cdata.replace("<","&lt;"); 
      return Cdata
   
   }
   
function Ajax_CloseActionplan(RowCnt)
{

    var Values ='<XmlDS>';
    
    var ForcedClosure1 =  "<%=ForcedClosureReq%>"
    var ForcedClosure=0
    
    if (ForcedClosure1=="1")
    {
       ForcedClosure=(document.getElementById("ForCedClsRdl_" + RowCnt + "_0") .checked == true ? "1" : "0")
    }
    if(document.getElementById("RefIsuIdTxt"+RowCnt).value=="")
     document.getElementById("RefIsuIdTxt"+RowCnt).value=0;
    
    Values+=Fn_XMLTableRow("Comments","<![CDATA[" + ReplaceSpeCahar(document.getElementById("ClosuerCommentsTxt_"+RowCnt).value) + "]]>")
//    Values+=Fn_XMLTableRow("reasons","<![CDATA[" + ("<%=Request.QueryString("AType")%>" == "M" ? ReplaceSpeCahar(document.getElementById("ChangeReasonsTxt_"+RowCnt).value) : "") + "]]>")
  Values+=Fn_XMLTableRow("reasons","<![CDATA[" + ("<%=DisplayDetails%>" == 1 ? ReplaceSpeCahar(document.getElementById("ChangeReasonsTxt_"+RowCnt).value) : "") + "]]>")

   //Values+=Fn_XMLTableRow("reasons","<![CDATA[" + ("<%=DisplayDetails%>" == 1 ? document.getElementById("RemarksTxt").value : "") + "]]>")

    Values+=Fn_XMLTableRow("InChargeId","<![CDATA[" + document.getElementById("ActPlanInChargeGrpTXt").value + "]]>")
    Values+=Fn_XMLTableRow("ActionPlanCode","<![CDATA[" + document.getElementById("ActionPlanCode_"+RowCnt).value + "]]>")
    Values+=Fn_XMLTableRow("IsuType","<![CDATA[" + document.getElementById("IsuTyepTxt").value + "]]>")
    Values+=Fn_XMLTableRow("IsuCode","<![CDATA[" + document.getElementById("CodeTxt").value + "]]>")
    Values+=Fn_XMLTableRow("Targetdate","<![CDATA[" + document.getElementById("Targetdate_"+RowCnt).value + "]]>")
    
    Values+=Fn_XMLTableRow("EffnessReq","<![CDATA[" +  (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true ? "1" : "2")  + "]]>")
   // Values+=Fn_XMLTableRow("EfftWItId","<![CDATA[" + (document.getElementById("eformIdTxt_"+RowCnt).value==""? "0" : document.getElementById("eformIdTxt_"+RowCnt).value) + "]]>")
    
    if (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true)
    { 
//       Values+=Fn_XMLTableRow("MoniteringDate","<![CDATA[" + document.getElementById("MonitiringDate_" + RowCnt + ":CalDateVal").value + "]]>")
//       Values+=Fn_XMLTableRow("MoniteringDays","<![CDATA[" + document.getElementById("MonitiringDays_"+RowCnt).value + "]]>")
     // Values+=Fn_XMLTableRow("MoniteringRemarks","<![CDATA[" + "" + "]]>")
//       Values+=Fn_XMLTableRow("MoniteringACPWrk","<![CDATA[" + document.getElementById("MonitiringWITIDTXT_"+RowCnt).value + "]]>")
        
        //these values are no need but for but for verification empty values are send

            Values+=Fn_XMLTableRow("MoniteringDate","<![CDATA[" + "1/1/1990" + "]]>")
            Values+=Fn_XMLTableRow("MoniteringDays","<![CDATA[" + 0 + "]]>")
            Values+=Fn_XMLTableRow("MoniteringRemarks","<![CDATA[" + "" + "]]>")
            Values+=Fn_XMLTableRow("MoniteringACPWrk","<![CDATA[" + "" + "]]>")
        //---------

    }
    else
    { 
       Values+=Fn_XMLTableRow("MoniteringDate","<![CDATA[" + "1/1/1990" + "]]>")
       Values+=Fn_XMLTableRow("MoniteringDays","<![CDATA[" + 0 + "]]>")
       Values+=Fn_XMLTableRow("MoniteringRemarks","<![CDATA[" + document.getElementById("MonitiringRemarTXt_"+RowCnt).value + "]]>")
       Values+=Fn_XMLTableRow("MoniteringACPWrk","<![CDATA[" + "" + "]]>")
    }
  
    Values+=Fn_XMLTableRow("ForcedClosure","<![CDATA[" + ForcedClosure + "]]>")
    
     if(<%=EFMActionPln%> == 1)
    {
        Values+=Fn_XMLTableRow("MonitStatus","<![CDATA[" +  (document.getElementById("MonitoringRdl_" + RowCnt + "_0") .checked == true ? "1" : "2")  + "]]>")
       
        if (document.getElementById("MonitoringRdl_" + RowCnt + "_1").checked == true)
        {
             Values+=Fn_XMLTableRow("IssueRef","<![CDATA[" + document.getElementById("RefIsuIdTxt"+RowCnt).value + "]]>")
        }
        else
        {
            Values+=Fn_XMLTableRow("IssueRef","<![CDATA[" + 0 + "]]>")
        }
             
       Values+=Fn_XMLTableRow("NumBatchExe","<![CDATA[" + document.getElementById("BatchExeTxt"+RowCnt).value + "]]>")
       Values+=Fn_XMLTableRow("DocDetails","<![CDATA[" + document.getElementById("DocumentIdTxt"+RowCnt).value + "]]>")
       Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + document.getElementById("RemTxt"+RowCnt).value + "]]>")
       
  
    }
    else
    {
        Values+=Fn_XMLTableRow("MonitStatus","<![CDATA[" +  0  + "]]>")
        Values+=Fn_XMLTableRow("IssueRef","<![CDATA[" + 0 + "]]>")
        Values+=Fn_XMLTableRow("NumBatchExe","<![CDATA[" + 0 + "]]>")
        Values+=Fn_XMLTableRow("DocDetails","<![CDATA[" + "" + "]]>")
        Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + "" + "]]>")
  
    }

    Values+= "</XmlDS>";
//    var url="../CAPAWORKS/CloseActionPlan_Ajax.aspx?IsuLogID=" + <%=Request.QueryString("IsuLogID") %> + "&PlanId=" +  document.getElementById("PlanIdTxt_"+RowCnt).value + ("<%=Request.QueryString("AType")%>" == "M" ? "&ModReq=1&ModReqId=<%=Request.QueryString("ModReqId")%>" : "" )
        var url="../CAPAWORKS/CloseActionPlan_Ajax.aspx?IsuLogID=" + <%=Request.QueryString("IsuLogID") %> + "&PlanId=" +  document.getElementById("PlanIdTxt_"+RowCnt).value +  "&ModReq=1&ModReqId=<%=Request.QueryString("ModReqId")%>"

    if (window.XMLHttpRequest)
    { 
        reqXML = new XMLHttpRequest(); 
    }
    else if(window.ActiveXObject)
    {
        reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
    }
    if(reqXML)
    {
        reqXML.open("POST", url, true);
        reqXML.setRequestHeader("Content-Type", "text/xml");
        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
        reqXML.onreadystatechange = function()
        {
            if(reqXML.readyState==4)
            {
                var Time="abc"
                Time=reqXML.responseText
                if (Time=1)
                {debugger
                        window.self.close()
                        if (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true)
                            if(<%=DisplayDetails %>!=1)
                                window.navigate("../EffectivenessProtocol/Trn.aspx?IsuLogId=" + <%=Request.QueryString("IsuLogID") %> + "&PlanID=" + <%=Request.QueryString("PlanID") %> + "&FromPlanClosure=1" + "&imageId=" + <%=Request.QueryString("imageId")%>  + "&PrsType=" + <%=Request.QueryString("PrsType")%> )
                            else
                               window.navigate("../CAPAWORKS/QAActivites.aspx?imageId=" + <%=Request.QueryString("imageId") %> +  "&PrsId=" + <%=Request.QueryString("PrsType") %> )
 
                        else
                        {
                            if ("<%=Request.QueryString("imageId") %>" =="" )
                                window.navigate("../PrsWorkFlow/PlanClosureList.aspx?PrsType=0")
                            else
                                window.navigate("../CAPAWORKS/QAActivites.aspx?imageId=" + <%=Request.QueryString("imageId") %> +  "&PrsId=" + <%=Request.QueryString("PrsType") %> )
                        }
                } 
                else 
                    alert("Exception Occured")

                xmlhttp =null;
            }
        }
    }
    else
    {
     alert("Your browser does not support Ajax");
    }
}

    function ChangeCloserXComm(RowCnt)
    {
       var EFMActionPln=<%=EFMActionPln %>
        
      if (document.getElementById("ForCedClsRdl_" + RowCnt + "_0") .checked == true)
       {
         document.getElementById("CloserXCommTr_" + RowCnt).className="MainTD"
         document.getElementById("clsTr_" + RowCnt).className="MainTD" 
          
         if (EFMActionPln==1)
          {
            document.getElementById("MonitoringTr_" + RowCnt).className="MainTD"
            document.getElementById("ViewTr_" + RowCnt).className="MainTD"
            document.getElementById ("BatchExeTr_" + RowCnt).className ="MainTD"
            document.getElementById ("FileAttachTr_" + RowCnt).className ="MainTD"
          }
    
       }
      else  if (document.getElementById("ForCedClsRdl_" + RowCnt + "_1") .checked == true)
      {
        document.getElementById("CloserXCommTr_" + RowCnt).className="HideRow"
        document.getElementById("clsTr_" + RowCnt).className="HideRow"
        document.getElementById("ClosuerCommentsTxt_" + RowCnt).value="" 
        if (EFMActionPln==1)
        { 
            document.getElementById("MonitoringTr_" + RowCnt).className="HideRow"
            document.getElementById("ViewTr_" + RowCnt).className="HideRow"
            document.getElementById("MonitoringRdl_" + RowCnt + "_0") .checked=false
            document.getElementById("MonitoringRdl_" + RowCnt + "_1") .checked=false
            
            document.getElementById ("IsuReferenceTr_" + RowCnt).className ="HideRow"
            document.getElementById("RefIsuIdTxt" + RowCnt).value=""
            document.getElementById("RefIsuDescTxt" + RowCnt).value=""
            document.getElementById("RefIsuDescLbl" + RowCnt).innerHTML=""
           
            document.getElementById ("BatchExeTr_" + RowCnt).className ="HideRow"
            document.getElementById ("BatchExeTxt" + RowCnt).value =""
            
            document.getElementById ("FileAttachTr_" + RowCnt).className ="HideRow"
            document.getElementById("DocumentIdTxt" + RowCnt ).value= "";
            document.getElementById("DocumentNameLbl" + RowCnt).innerHTML = "";
            document.getElementById("DocumentNameTxt" + RowCnt).value = "";
  
         }
      }  
        
    }
 //Commented because of Lupin requirement Changed to Submit Button click validation
  function ChangeEForm(RowCnt)
  { 
          if (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true)
          {
           
             //document.getElementById("MonitiringDateTr_" + RowCnt).className="MainTD"
            //document.getElementById("MonitiringDaysTr_" + RowCnt).className="MainTD"
            //document.getElementById("MonitiringWITTr_" + RowCnt).className="MainTD"
            document.getElementById("MonitiringRemarksTr_" + RowCnt).className="HideRow"
            if(<%=DisplayDetails %>!=1)
            {
            document.getElementById("MonitiringRemarTXt_" + RowCnt).value=""
            }
            if($("#WrkTable tr").length==0)
              {
                alert("Effectiveness/Monitoring Required Cannot Be Selected As 'Yes',If Work Item(s) Are Not Available");
                document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked = false;
              }
          }  
            
          if (document.getElementById("EffecteFormRdl_" + RowCnt + "_1") .checked == true)
          {
          
           
                //document.getElementById("MonitiringDateTr_" + RowCnt).className="HideRow"
               // document.getElementById("MonitiringDaysTr_" + RowCnt).className="HideRow"
                // document.getElementById("MonitiringWITTr_" + RowCnt).className="HideRow"
                document.getElementById("MonitiringRemarksTr_" + RowCnt).className="MainTD"
           
          }
    
   }
   



    var WrkItemType
    var Count
    function ReadWorkItemList(RowCnt,Type)
	{
	 WrkItemType=Type
	 Count=RowCnt
	 
        var IsuTypeID=document.getElementById("IsuTypeIdTxt_"+ RowCnt).value
        var ActionPlanId =document.getElementById("PlanIdTxt_"+ RowCnt).value
        var IssueId=document.getElementById("IsuLogIDTxt_" + RowCnt).value
        var IssAulID=document.getElementById("IsuCodeTxt_" + RowCnt).value
        var TypeName="Action Plan Effectiveness"//document.getElementById("ActionTypeName_"+ RowCnt).value
        var Type=15//document.getElementById("TypeTxt_"+ RowCnt).value
        var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value
        var WrkitemCnt=document.getElementById("WrkitemCnt_"+ RowCnt).value
        WrkitemCnt=parseInt(WrkitemCnt)+1
        var WitCode=document.getElementById("PlanCodeTxt_"+ RowCnt).value + "/EW1"
        var Targetdate =''
  
     ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID + "&IsuTypeID=" + IsuTypeID + "&TYPE=" + Type+ "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode + "&Targetdate=" + Targetdate + "&IssueCode=" + document.getElementById("CodeTxt").value + "&IsuCategory="+ document.getElementById("IsuTyepTxt").value)
     }	
	function CloseFunctionality(Ucode,BaseId)
     {
        HideMask()
        document.getElementById ("eformUcodelbl_" + Count).innerHTML=Ucode
        document.getElementById ("eformUcodeTxt_" + Count).value=Ucode
        document.getElementById ("eformIdTxt_" + Count).value=BaseId
        document.getElementById ("wrkitem_" +Count).setAttribute ("disabled",true,1)
        document.getElementById ("EffecteFormRdl_" +Count).setAttribute ("disabled",true,1)
        
     }
     
     function ChangeIsuRef(RowCnt)
     {
        if (document.getElementById("MonitoringRdl_" + RowCnt + "_0") .checked == true)
        {
            document.getElementById ("IsuReferenceTr_" + RowCnt).className ="HideRow"
            document.getElementById ("ResonsTr_" + RowCnt).className ="HideRow"
            document.getElementById("RefIsuIdTxt" + RowCnt).value=""
            document.getElementById("RefIsuDescTxt" + RowCnt).value=""
            document.getElementById("RefIsuDescLbl" + RowCnt).innerHTML=""
            document.getElementById("RemTxt" + RowCnt).value=""
         }
        else if(document.getElementById("MonitoringRdl_" + RowCnt + "_1") .checked == true)
        {
                document.getElementById ("IsuReferenceTr_" + RowCnt).className ="MainTD"
                document.getElementById ("ResonsTr_" + RowCnt).className ="MainTD" 
        }
      
     
     }
    
    function FnIsuePopup(RowCnt)
    {
        var pageURL ="../IssueClosure/RefIsuPopup1.aspx?RowCnt=" + RowCnt
        SpWinObj = window.open(pageURL,'SpecCodes1',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }

    function fnSetRefValue(KfLableVal,KfIdVal,PrsType,IsuTypeId,RowCnt)
    {
     
      if (KfLableVal != "")
      {
          document.getElementById("RefIsuIdTxt" + RowCnt ).value=KfIdVal
          document.getElementById("RefIsuDescTxt" + RowCnt).value=KfLableVal
          document.getElementById("RefIsuDescLbl" + RowCnt).innerHTML="<a target='IsuAudit' href=../CAPAWORKS/WordFormatReport.aspx?RptType=1&Type=2&IsuLogID=" + KfIdVal + "&IsuTypeId=" + IsuTypeId + "&RepType=2&PrsType=" + PrsType + ">" + KfLableVal + "</a>" 
      }
      else
      {
          document.getElementById("RefIsuIdTxt" + RowCnt).value=""
          document.getElementById("RefIsuDescTxt" + RowCnt).value=""
          document.getElementById("RefIsuDescLbl" + RowCnt).innerHTML=""
      }
      
    }
    
     function FnOtherEFMPlans(PlanID,ParentPlanID)
     {
        var pageURL = "../PrsWorkFlow/MonitorPlanList.aspx?PlanID=" + PlanID + "&ParentPlanID=" + ParentPlanID
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
     }
     
       
      function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,IsuTransCode,UParam)
      {
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" + IsuTransCode ;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
      }
    
    function OpenDMSPopUp(UParam,IsuTransCode)
    {
        var UParam =UParam;
        var RepositoyTypeId =3;   // Repository Type
        var PrsType=document.getElementById ("PrsTypeTxt").value;
        var SourceTypeId   
        
         switch (parseInt(PrsType))
        {
          case 1: SourceTypeId=5; //CC
                 break; 
          case 2:SourceTypeId=4; //DI
                 break;
          case 3:SourceTypeId=6; //MC
                 break;
          case 12:SourceTypeId=7; //AF
                 break;
          case 4:SourceTypeId=21; //CAPA
                 break 
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
            document.getElementById("DocumentNameLbl" + UParam).innerHTML = document.getElementById("DocumentNameTxt" + UParam).value = DocNameArr.join("; ");
        }
        else
        {
            document.getElementById("DocumentIdTxt" + UParam ).value= "";
            document.getElementById("DocumentNameLbl" + UParam).innerHTML = document.getElementById("DocumentNameTxt" + UParam).value = "";
        
        }
    }

    function OkRet_OpenDMSPopUp(UParam)
    {

    }


</script>

<script language ="javascript" >

    var taMaxLength =500

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
			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")

            }
     }       

  //Added for Effectiveness/Monitoring Required Radio button 'No' to disable as per Lupin Requirement
  
  $(document).ready(function() { 
  
  if(<%=DisplayDetails %>!=1)
  {
             var EMPlnFlag=$('#EffecteFormRdl_0').parent(0).parent(0)[0].className;
             if(EMPlnFlag!='HideRow')
              {
                  //$('#EffecteFormRdl_0_0').attr('checked','checked');           
                  //$('#EffecteFormRdl_0_1').attr('disabled','disabled');             
              }    
   }
//     if(<%=DisplayDetails %>==1)
//     {
//       var EMPlnFlag=$('#EffecteFormRdl_0').parent(0).parent(0)[0].className;
//             if(EMPlnFlag!='HideRow')
//              {
//                  $('#EffecteFormRdl_0_1').attr('checked','checked');           
//                  $('#EffecteFormRdl_0_1').attr('disabled','disabled');             
//              }
//     }
          });
  


</script>


</html>