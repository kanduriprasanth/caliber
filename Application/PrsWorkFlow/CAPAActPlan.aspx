<%@ Page Language="vb" AutoEventWireup="false" Codebehind="CAPAActPlan.aspx.vb" Inherits="PrsWorkFlow.CAPAActPlan"
    MaintainScrollPositionOnPostback="true" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
 <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	Page_IsValid=true;
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

 
     function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=500,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }
      
    
    function fnOpenPopUp(BaseId,CtrlID)
    {
        //SetPopDimensions()
        var pageURL = "../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
        var features = "height=390,width=470,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

    }

    function fnCrSetToCode(BaseId,CtrlID,FldVAlArr)
    {
         document.getElementById("<%=Fldprefix %>"+BaseId+"_"+CtrlID).value=FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
         document.getElementById("Value_"+"<%=Fldprefix %>"+BaseId+"_"+CtrlID).innerHTML=FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
    }

    function fnCrformSubmit(){
    //document.Form1.submit()
    }

    function fnFileupload(BaseId,CtrlID)
    {
    //SetPopDimensions()
        var pageURL = "../IssueLogin/DocumentPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
        var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

    }

    function fnCrSetToCode1(BaseId,CtrlID,DocIdLst,DocNameLst)
    {
         document.getElementById("<%=Fldprefix %>"+BaseId+"_"+CtrlID).value=DocIdLst
         document.getElementById("File_"+"<%=Fldprefix %>"+BaseId+"_"+CtrlID).innerHTML=DocNameLst
    }
    
    function ValidateActionPlans(src,args) 
    {
        args.IsValid=true;
  	    Page_IsValid=true;
  	    
  	    if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
          { 
            if ( document.getElementById ("CActTxt").value=="")
            {
              src.errormessage="Enter value in: No.of Plan(s)"
              args.IsValid=false;
              Page_IsValid=false;
            }
          }
    }
    var RowCNT
    function fnInchargepopup(RowCnt)
    {
     RowCNT=RowCnt
      //SetPopDimensions()
        var pageURL = "../IssueTypeConfig/RevAppListPopUp.aspx?IssId=0&UserGrpId="  + document.getElementById("UserGriIdTXt").value
        var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
     function fnRevAppSetToCode(UsrGrpIdVal,UsrGrpCodeVal,UsrGrpUCodeVal)
    { 
        document.getElementById("ActPlnInchargeLbl_"+RowCNT).innerHTML =UsrGrpUCodeVal
        document.getElementById("ActPlnInchargeTxt_"+RowCNT).value=UsrGrpUCodeVal
        document.getElementById("ActPlnIncharge_"+RowCNT).value=UsrGrpIdVal
    }
    
    
//    function ValidateCloser(src,args) 
//    {
//        args.IsValid=true;
//  	    Page_IsValid=true;
//  	    
//  	    if (<%=CloseStatus%>==1)
//  	    {
//  	     src.errormessage="All Action Plans Must Be Closed"
//          args.IsValid=false;
//          Page_IsValid=false;
//  	    }
//    }
    
    function ValidateActplan(src,args) 
    {
        args.IsValid=true;
  	    Page_IsValid=true;
  	     if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
          { 
           if (document.getElementById("CActTxt").value=="")
           {
  	            src.errormessage="Enter Value For : No.of Action Plans"
                args.IsValid=false;
                Page_IsValid=false;
  	        }
          }
  	}  
    
    
   
      
	//-->
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderTAb">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="ActPlnTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ActonReqTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="ActonReqTd" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList CssClass="MainTD" runat="server" ID="ActionReqRDL" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value='Yes'>Yes</asp:ListItem>
                                    <asp:ListItem Value='No'>No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="CActTd" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CActTxt" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px"
                                    AutoPostBack="true" TabIndex="3" onkeypress="return IsDigit1(event);"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CrvActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="CrvActTab">
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
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="180"
                                    CausesValidation="false"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Left">
                              <input type=button  class ="<%=ActDisable %>" onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'"
                                   value="Confirm Plan(s) Status"  onclick="FldValidation()"  />
                                   
                                   <input type=button  class ="<%=ClsActPln %>" onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'"
                                   value="Close Action Plan"  onclick="ChangeStatus()"  />
                            </asp:TableCell>
                            <asp:TableCell CssClass="Hiderow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'" value="Status report" onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="IssLogId" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ValdString" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkBoxIdTXtx" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="LodeTXT" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="IsuTyepTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="ActPlanInChargeGrpTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    <asp:TextBox ID="UserGriIdTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                    
                    <asp:TextBox ID="UserGrpvalueTXt" CssClass="HideRow" runat="server"></asp:TextBox>
                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()




 function ChangeStatus()
    {
       AjaxCloseWrkItem()
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
                if (Time==1)
                  {
                    alert("Capa Plan Initiaion Is Closed")
                    window.self.close();
                   if ( ("<%=Request.QueryString("imageId") %>"!="Nothing") || ("<%=Request.QueryString("imageId") %>"!="") )
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
    

    
//    function CssChange()
//    {
//      if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
//      { 
//        document.getElementById("CrvActTr").className="MainTD";
//        document.getElementById("CActTr").className="MainTD";
//      }
//      else if(document.getElementById("ActionReqRDL"+ "_1").checked == true)
//      { 
//       document.getElementById("CrvActTr").className="HideRow";
//       document.getElementById("CActTr").className="HideRow";
//       document.getElementById("CActTxt").value="";
//       Form1.submit()
//      }
//    }

$("[id^='ActionReqRDL_']").click(function () {

            //-------Yes->1 ,  No->2
            if ($('#ActionReqRDL_0:checked').val() == "Yes") {
                $("#CrvActTr").removeClass("HideRow").addClass("MainTD")
                $("#CActTr").removeClass("HideRow").addClass("MainTD")
            }
            if ($('#ActionReqRDL_1:checked').val() == "No") {
                $("#CrvActTr").addClass("HideRow");
                $("#CActTxt").val("");
                $("#CActTr").addClass("HideRow");
                Form1.submit()
            }

        });



    

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
			
    function OpenIsueReport()
    { 
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("IsuLogID")%> + "&IsuTypeId=" + <%=Request.QueryString("IssTypeId")%>   + "&PrsType=<%=Request.QueryString("PrsType")%>" 
        var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
     
//-->
</script>

<script language="javascript">

function RestValue()
{
document.getElementById("LodeTXT").value="0";}

function FldValidation()
{

  var ErrMsg=""
  var ActPlnCnt="<%=ActPlnCnt%>"
  var ActplnIDs="<%=ActplnIDs%>"
   

  var ActplnIDArr=new Array()
  
   ActplnIDs=ActplnIDs.substring(1)
   ActplnIDArr=ActplnIDs.split(",")
   
//  if (ActplnIDs=="")
//  {
        for(var AcPlCnt=0;AcPlCnt<ActplnIDArr.length;AcPlCnt++)
        {
          if(ActplnIDArr[AcPlCnt]!="")
          {
                if (document.getElementById("ActPlanType_" + ActplnIDArr[AcPlCnt]).value=="")
                {  ErrMsg=ErrMsg+ "Select Plan Type Of Action Plan " +   ActplnIDArr[AcPlCnt]   +"\n"  }
                
               if (document.getElementById("ActPlnDesc_" + ActplnIDArr[AcPlCnt]).value=="")
                {  ErrMsg=ErrMsg+ "Enter Plan Title of Action Plan " + ActplnIDArr[AcPlCnt] +  "\n"  }
                
                
                if((document.getElementById("ActPlnSel_" + ActplnIDArr[AcPlCnt] + "_0").checked==false) && (document.getElementById("ActPlnSel_" + ActplnIDArr[AcPlCnt] + "_1").checked==false))
                { ErrMsg=ErrMsg+ "Select Status of  Action Plan  " + ActplnIDArr[AcPlCnt] + "\n" }
                
                
                 if (document.getElementById("ActPlnIncharge_" + ActplnIDArr[AcPlCnt]).value=="")
                {  ErrMsg=ErrMsg+ "Select Incharge Of  Action Plan " + ActplnIDArr[AcPlCnt] +  "\n"  }

                if (document.getElementById("ActPlnSel_" + ActplnIDArr[AcPlCnt] + "_0").checked==true)
                { 
            
                      if (document.getElementById("ActPlnTargetDate_" + ActplnIDArr[AcPlCnt] + ":CalDateVal").value=="")
                    {  ErrMsg=ErrMsg+ "Select Target Date of  Action Plan " + ActplnIDArr[AcPlCnt] +  "\n"  }
                     else  
                     {
                        var Flag= VbTargetDateValid(ActplnIDArr[AcPlCnt]) ;
                        if(Flag==false) ErrMsg=ErrMsg+ "Target Date Must Be Greater Than Or Equal To Current Date In Action Plan " +  ActplnIDArr[AcPlCnt]  + "\n"
                     }
                }
          } 
            
        }    
    
            if ( (document.getElementById("ActionReqRDL"+ "_0").checked==false) && (document.getElementById("ActionReqRDL"+ "_1").checked==false))
            { ErrMsg=ErrMsg+ "Select Is Additional Plan(s) Required" + "\n"}
            else
            {
              if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
              { 
                if ( document.getElementById ("CActTxt").value=="")
                { ErrMsg=ErrMsg+"Enter value in: No.of Plan(s)" + "\n"  }
              }
            }
//  }  
//  
//  else
//  {
//    var ActplnIDArr=new Array()
//    for(var AcPlCnt=0;AcPlCnt<ActplnIDArr.length;AcPlCnt++)
//      {
//       
//         if (document.getElementById("ActPlanType_" + ActplnIDArr[AcPlCnt]).value=="")
//            {  ErrMsg=ErrMsg+ "Select Action Plan Type Of " + ActplnIDArr[AcPlCnt] +  "Action Plan \n"  }
//            
//         if (document.getElementById("ActPlnDesc_" + AcPlCnt).value=="")
//            {  ErrMsg=ErrMsg+ "Select Description In Brief of " + AcPlCnt +  "Action Plan \n"  }
//      }
//  }
  
  if(ErrMsg !="")
  {  alert(ErrMsg.substring(0,ErrMsg.length-1)) }
  else
  { 
      document.getElementById("LodeTXT").value="1";
      Page_IsValid=true;
      fnCallESign(3); // At Action Plan Initqaion
      //document.getElementById("btnConfirm").click() 
  }
  
}



</script>

<script language="vbscript"> 

function VbTargetDateValid(FldId)

    TargetDate=document.getElementById("ActPlnTargetDate_" + FldId + ":CalDateVal").value
    if TargetDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	
	IDateAry=split(TargetDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
  
    DDgap=DateDiff("d",Today,IDateVal)
    
	if DDgap<0 then
		VbTargetDateValid=false
    end if  

 End function 
 
function DateSerialValue(Year,Month,Day)
  DateSerialValue= dateSerial(Year,Month,Day)
  
  End function
  
   function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
  
  DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
  
  End function
  


</script>

</html>
