<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CAPAPlanClosure.aspx.vb" Inherits="PrsWorkFlow.CAPAPlanClosure" MaintainScrollPositionOnPostback="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/Common2.js"></script>
   
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
	
//	 if (document.getElementById("NewWorkRDL_0").checked==true)
//	 {
      ShowMask("../EFormIssuance/Trn.aspx?TT=1&IssId="+IssueId+"&IssAulId="+IssAulID+"&TYPE=" + Type + "&TypeName="+TypeName+ "&ActionPlanId=" +ActionPlanId + "&WitCode=" + WitCode)
        
//	 }
//	 else if (document.getElementById("NewWorkRDL_1").checked==true)
//	 {
//	     var WorkTempID=document.getElementById("TemplateDDL").value
//	     if (WorkTempID!="")
//	     {
//	     ShowMask("WorkItemPopup.aspx?WorkTempID="+ WorkTempID + "&IssueId=" + IssueId + "&IssAulID=" + IssAulID )
//	     }
//	     else
//	     {
//	        alert("select Work Tempate")
//	     }
//     }
	  
	}
	 
//	 function setCssClass()
//	 {
//	   if (document.getElementById("NewWorkRDL_0").checked==true)
//	   {
//	     //WorkItemCss = "RsnPUP"
//	      document.getElementById("WotkItemLbl").className = "HideRow"
//          document.getElementById("TemplateDDL").className = "HideRow"
//       }
//	    else if (document.getElementById("NewWorkRDL_1").checked==true)
//	    {
//	     var WorkTempID="<%=WorkTempID%>"
//	     if (WorkTempID !=0)
//	        {
//	          document.getElementById("TemplateDDL").className = "MainTD"
//             // WorkItemCss = "RsnPUP"
//	        }
//	     else
//	        {
//	         document.getElementById("TemplateDDL").className = "HideRow"
//             //WorkItemCss = "HideRow"
//             document.getElementById("WotkItemLbl").className= "MainTD"
//             document.getElementById("WotkItemLbl").innerHTML = "Work Template Not Generated For This Issue Type"
//	        }
//	     
//	    )
//	  }
//	



 
     function OpenIsueReport()
     {
       var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID") %>  + "&IsuTypeId=" + <%=Request.QueryString("IsuTypeID") %> + "&PrsType=<%=Request.QueryString("PrsType")%>" 
	    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
	    SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
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
                         <asp:TextBox ID=CodeTxt runat=server></asp:TextBox>
                          <asp:TextBox ID="IsuTyepTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="ActPlanInChargeGrpTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                                         </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language=javascript>

	

// var taMaxLength = 250
//        function taLimit() {
//            var taObj=window.event.srcElement;
//            if (taObj.value.length==taObj.maxLength*1) return false;
//        }

//        function taCount() {
//            var taObj=window.event.srcElement;			
//            if (taObj.value.length>taMaxLength*1){
//            taObj.value=taObj.value.substring(0,taMaxLength*1);
//            alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
//            }
//        }		



function CloseActionplan(RowCnt)
{
    var Excemsg=""
    
    if(document.getElementById("ClosuerCommentsTxt_"+RowCnt).value == "")
    {
        Excemsg = "Enter value for: Closure Comments "+ "\n";
    }
    if((document.getElementById("EffecteFormRdl_"+RowCnt+ "_0").checked==false) && (document.getElementById("EffecteFormRdl_"+RowCnt+ "_1").checked==false) )
    {
        Excemsg =Excemsg+"Select value for: Effectiveness Required"+ "\n";
    }
    if(document.getElementById("EffecteFormRdl_"+RowCnt+ "_0").checked==true)
    {
      if(document.getElementById("eformUcodeTxt_" + RowCnt).value=="")
      Excemsg =Excemsg+"Initiate Effectiveness EForm"+ "\n";
    }
    if (Excemsg!="")
    {
        alert(Excemsg);
        return;
    }
    
    Ajax_CloseActionplan(RowCnt)
}

function Ajax_CloseActionplan124(RowCnt)
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
                    var Time="abc"
                    Time=xmlhttp.ResponseText
                    if (Time=1)
                      {
                        alert("Action Plan Closed")
                        ChangeStatus()
                      } 
                     else 
                       alert("Exception Occured")
                       
                  xmlhttp =null;
                }
            }
             var url="../CAPAWORKS/CloseActionPlan_Ajax.aspx?PlanId=" +  document.getElementById("PlanIdTxt_"+RowCnt).value + "&Comments=" + ReplaceSpeCahar(document.getElementById("ClosuerCommentsTxt_"+RowCnt).value) + ("<%=Request.QueryString("AType")%>" == "M" ? "&ModReq=1&ModReqId=<%=Request.QueryString("ModReqId")%>" : "" )
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
  
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
    
    Values+=Fn_XMLTableRow("Comments","<![CDATA[" + ReplaceSpeCahar(document.getElementById("ClosuerCommentsTxt_"+RowCnt).value) + "]]>")
    Values+=Fn_XMLTableRow("reasons","<![CDATA[" + ("<%=Request.QueryString("AType")%>" == "M" ? ReplaceSpeCahar(document.getElementById("ChangeReasonsTxt_"+RowCnt).value) : "") + "]]>")
    Values+=Fn_XMLTableRow("InChargeId","<![CDATA[" + document.getElementById("ActPlanInChargeGrpTXt").value + "]]>")
    Values+=Fn_XMLTableRow("ActionPlanCode","<![CDATA[" + document.getElementById("ActionPlanCode_"+RowCnt).value + "]]>")
    Values+=Fn_XMLTableRow("IsuType","<![CDATA[" + document.getElementById("IsuTyepTxt").value + "]]>")
    Values+=Fn_XMLTableRow("IsuCode","<![CDATA[" + document.getElementById("CodeTxt").value + "]]>")
    Values+=Fn_XMLTableRow("Targetdate","<![CDATA[" + document.getElementById("Targetdate_"+RowCnt).value + "]]>")
    
    Values+=Fn_XMLTableRow("EffnessReq","<![CDATA[" +  (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true ? "1" : "2")  + "]]>")
    Values+=Fn_XMLTableRow("EfftWItId","<![CDATA[" + (document.getElementById("eformIdTxt_"+RowCnt).value==""? "0" : document.getElementById("eformIdTxt_"+RowCnt).value) + "]]>")

    Values+= "</XmlDS>";
    var url="../CAPAWORKS/CloseActionPlan_Ajax.aspx?IsuLogID=" + <%=Request.QueryString("IsuLogID") %> + "&PlanId=" +  document.getElementById("PlanIdTxt_"+RowCnt).value + ("<%=Request.QueryString("AType")%>" == "M" ? "&ModReq=1&ModReqId=<%=Request.QueryString("ModReqId")%>" : "" )
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
                {
                    alert("Action Plan Closed")
                    ChangeStatus()
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

    function ChangeStatus()
    {
      if ((<%=CloseActPlan %> ==1 ) ||( <%=CloseActPlan %> ==0) )
        { AjaxCloseWrkItem() }
        
      else{
         document.forms(0).submit()  
        }
    }
    
    function AjaxCloseWrkItem()
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
                    var Time="abc"
                    Time=xmlhttp.ResponseText
                    if (Time=1)
                      {
                        alert("Plan Is Closed")
                        window.self.close()
                        if ( ("<%=Request.QueryString("imageId") %>" =="Nothing")|| ("<%=Request.QueryString("imageId") %>" =="") )
                            window.navigate("CAPAClosureLst.aspx?PrsType=0&imageId=0")
                        else
                            window.navigate("../CAPAWORKS/QAActivites.aspx?imageId=" + <%=Request.QueryString("imageId") %> +  "&PrsId=" + <%=Request.QueryString("PrsType") %> )
                      } 
                     else 
                       alert("Exception Occured")
                       
                  xmlhttp =null;
                }
            }
             var url="ChangeIsuStatus.aspx?IssueId=" +  <%=Request.QueryString("IsuLogID") %>  // + "&ActionplanID=" + ActionplanID
            xmlhttp.open("POST",url,true);
            xmlhttp.send(null);
        }
        


    function ChangeCloserXComm(RowCnt)
    {
      if (document.getElementById("ForCedClsRdl_" + RowCnt + "_0") .checked == true)
       {
         document.getElementById("CloserXCommTr_" + RowCnt).className="MainTD"
         document.getElementById("clsTr_" + RowCnt).className="MainTD"                         
         
       }
      else  if (document.getElementById("ForCedClsRdl_" + RowCnt + "_1") .checked == true)
      {
        document.getElementById("CloserXCommTr_" + RowCnt).className="HideRow"
        document.getElementById("clsTr_" + RowCnt).className="HideRow"
        document.getElementById("ClosuerCommentsTxt_" + RowCnt).value="" 
      }  
        
    }
 
  function ChangeEForm(RowCnt)
  {
      if (document.getElementById("EffecteFormRdl_" + RowCnt + "_0") .checked == true)
        document.getElementById("EffctiveEformTr_" + RowCnt).className="MainTD"
      else  if (document.getElementById("EffecteFormRdl_" + RowCnt + "_1") .checked == true)
        document.getElementById("EffctiveEformTr_" + RowCnt).className="HideRow"
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


</script>




</html>