<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActionPlanInitMod.aspx.vb" Inherits="PrsWorkFlow.ActionPlanInitMod" %>

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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                                                                        
                       <asp:TableRow >
                         <asp:TableCell CssClass="MainTD" ColumnSpan=4>
                           <asp:Table ID="ActPlnTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>  
                         </asp:TableCell>
                       </asp:TableRow>
                       
                        <asp:TableRow id=EventsTr CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ColumnSpan=4>
                           <asp:Table ID="Eventstab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>  
                         </asp:TableCell>
                       </asp:TableRow>
                       
            
                <asp:TableRow ID="AppdesicitionTr" CssClass="HideRow">
                     <asp:TableCell CssClass="MainTD" ID="AppdesicitionTd" ColumnSpan="1"  Style="font-weight: bold;"></asp:TableCell>
                    <asp:TableCell CssClass="MainTD" ColumnSpan="1"  >
                        <asp:RadioButtonList ID="AppdesicitionRdl" runat=server RepeatDirection=Horizontal CssClass="MainTD" onclick='fubSetReasons()'>
                         </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>
                    
                 <asp:TableRow ID="Reamrkstr" CssClass="HideRow">
                     <asp:TableCell CssClass="MainTD"  ColumnSpan="1" ID="RemarksTd" Style="font-weight: bold;"></asp:TableCell>
                    <asp:TableCell CssClass="MainTD" ColumnSpan="1" >
                        <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" TextMode=MultiLine Width="50%"></asp:TextBox>
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
            <asp:TableRow ID="IARow" runat="server" CssClass="MAinTD">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
                                              
            <asp:TableRow>
                <asp:TableCell  CssClass="MainFoot" >
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign=Left>
                              <input type =button  id="BtnSubmit" onMouseOver="this.className='ButOCls'"
                                    Class='<%=BtnSubCss%>' AccessKey="C" onMouseOut="this.className='ButCls'" value="Submit" onclick="ButtonSubmit()"/>
                            </asp:TableCell>
                            
                             <asp:TableCell CssClass="MainFoot" HorizontalAlign=Right>
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
                        <asp:TextBox ID="IssLogId" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="ValdString" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="ChkBoxIdTXtx" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="LodeTXT" CssClass="HideRow" runat=server Text="0"></asp:TextBox>
                        <asp:TextBox ID="PlanCodetxt" CssClass="HideRow" runat=server ></asp:TextBox>
                 </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()

function fubSetReasons()
{
  if(document.getElementById("AppdesicitionRdl_0").checked==true) document.getElementById("RemarksTxt").value="--"
  else if(document.getElementById("AppdesicitionRdl_1").checked==true) document.getElementById("RemarksTxt").value=""
}

function ModActionPlan(RowCnt)
{
        var ExpMsg=''
        var ActPlnaRemarks=document.getElementById("ActPlnRemarks_1").value
        var RevDate=document.getElementById("ActPlnTargetDate_1" +  ":CalDateVal").value        
        if (ActPlnaRemarks=='')ExpMsg=ExpMsg + "Enter : Remark(s)/ Reason(s)"+ "\n"
        if(RevDate=='')ExpMsg=ExpMsg + "Select : Target Date"+ "\n"
        else {
                var today = new Date(); 
                today = new Date(today.getFullYear(), today.getMonth(), today.getDate()); 
                var revDate1 = new Date(RevDate); 
                if(revDate1<today){
                    ExpMsg=ExpMsg +"Target Date Should Be Greater Than Or Equal To Current Date"
                }
            }                       
        if(ExpMsg=='')
                fnCallESign(1,RowCnt)
        else
           alert(ExpMsg)
                 
  //AjaxModifyActPlan(RowCnt)
}

function ButtonSubmit()
{
    
  var ExpMsg=''
//  var today = new Date();
//  var RevDate=document.getElementById("ActPlnTargetDate_1" +  ":CalDateVal").value   
//  if ((new Date(RevDate)) < today){
//    ExpMsg= ExpMsg + "Target Date Should Not Be Less Than Current Date" + "\n -";
//  }
  
  if(document.getElementById("RemarksTxt").value=="")
    ExpMsg= ExpMsg + "Enter Remark(s) / Reason(s)" + "\n -"
  if ((document.getElementById("AppdesicitionRdl_0").checked==false) && (document.getElementById("AppdesicitionRdl_1").checked==false))  
     ExpMsg= ExpMsg + "Select " + "<%=DecisionCap %>" + "\n -"
  else
      var Desiction=document.getElementById("AppdesicitionRdl_0").checked==true ? 2 : 4
      
  if (ExpMsg != '') alert(ExpMsg.substring(0,ExpMsg.length-3))
  else fnCallESign(Desiction,0) //AjaxApproveActPlan()
}


function AjaxApproveActPlan() 
   {

        var ActPlanId=document.getElementById("ActPlnID_1" ).value
        var Desiction=document.getElementById("AppdesicitionRdl_0").checked==true ? 2 : 4
        var ActPlnaRemarks=document.getElementById("RemarksTxt").value
        var ActonplnaCode =document.getElementById("PlanCodetxt").value
            
            XmlString ="<NewDataSet>"
              XmlString  = XmlString + "<MulbatchTab>"
                XmlString  = XmlString + "<ActPlanId>" + " <![CDATA[ " + ActPlanId + "]]> " + "</ActPlanId>"
                XmlString  = XmlString + "<Desiction>" + " <![CDATA[ " + Desiction + "]]> " + "</Desiction>"
                XmlString  =XmlString +  "<ActPlnaRemarks>" + " <![CDATA[ " + ActPlnaRemarks + "]]> " + "</ActPlnaRemarks>"
                XmlString  = XmlString + "<IsuModId>" + " <![CDATA[ " + <%=Request.QueryString("IsuModId") %> + "]]> " + "</IsuModId>"
                 XmlString  = XmlString + "<ActonplnaCode>" + " <![CDATA[ " + ActonplnaCode + "]]> " + "</ActonplnaCode>"
                              
              XmlString  = XmlString + "</MulbatchTab>"
            XmlString = XmlString + "</NewDataSet>"
            
           var url="ActPlanModfication_Ajax.aspx?Type=" + <%=Request.QueryString("ReqType") %>
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
                reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + XmlString);
                reqXML.onreadystatechange = function()
                {
                    if(reqXML.readyState==4)
                    {
                        var RtnStr=reqXML.responseText;
                         if (RtnStr !="" &&  RtnStr != "0" &&  RtnStr != "#*#")
                         { RtnStr=1}
                        else
                        {RtnStr=0}
                        
                        window.navigate("MsgDisplay1.aspx?ReqType=" + <%=Request.QueryString("ReqType")%> + "&RtnStr=" + RtnStr +  "&Desiction=" + Desiction  + "&PlanCode=" + document.getElementById("PlanCodetxt").value  ) 
                        window.self.close()
                        
//                        if (RtnStr !=0)
//                        {
//                         if (<%=Request.QueryString("ReqType")%> =="1")
//                           { 
//                             //alert("Action Plan Modified") 
//                              window.navigate("MsgDisplay1.aspx?ReqType=" + <%=Request.QueryString("ReqType")%> + "&RtnStr=" + RtnStr + "&Desiction=0&PlanCode=" +  )
//                           }
//                         else if (<%=Request.QueryString("ReqType")%> =="2")
//                            {
////                              if (Desiction == 2) alert("Action Plan Approved")
////                              else if (Desiction == 4) alert("Action Plan Droped")
//                            }
//                         //window.navigate("../ModificationRequest/ChangeRequestList.aspx")
//                         window.self.close()
//                        }  
//                        else
//                           //alert("Exception Occured")  
//                           window.navigate("4.aspx?ReqType=" + <%=Request.QueryString("ReqType")%> + "&RtnStr=" + RtnStr +  "&Desiction=0")
                        reqXML =null;
                    }
                }
            }
            else
            {
             alert("Your browser does not support Ajax");
            }
    }
    

   function AjaxModifyActPlan(RowCnt)
   {
        
        var ActPlnaId=document.getElementById("ActPlnID_1").value
        var RevDate=document.getElementById("ActPlnTargetDate_1" +  ":CalDateVal").value
        var ActPlnaRemarks=document.getElementById("ActPlnRemarks_1").value
        var ActonplnaCode =document.getElementById("PlanCodetxt").value
//        var ExpMsg=''
//        if(ExpMsg=='')
//        {
            
            XmlString ="<NewDataSet>"
              XmlString  = XmlString + "<MulbatchTab>"
                XmlString  = XmlString + "<ActPlnaId>" + " <![CDATA[ " + ActPlnaId + "]]> " + "</ActPlnaId>"
                XmlString  = XmlString + "<RevDate>" + " <![CDATA[ " + RevDate + "]]> " + "</RevDate>"
                XmlString  =XmlString +  "<ActPlnaRemarks>" + " <![CDATA[ " + ActPlnaRemarks + "]]> " + "</ActPlnaRemarks>"
                XmlString  = XmlString + "<IsuModId>" + " <![CDATA[ " + <%=Request.QueryString("IsuModId") %> + "]]> " + "</IsuModId>"
                XmlString  = XmlString + "<ActonplnaCode>" + " <![CDATA[ " + ActonplnaCode + "]]> " + "</ActonplnaCode>"
              XmlString  = XmlString + "</MulbatchTab>"
            XmlString = XmlString + "</NewDataSet>"
            
           var url="ActPlanModfication_Ajax.aspx?Type=" + <%=Request.QueryString("ReqType") %>
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
                reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + XmlString);
                reqXML.onreadystatechange = function()
                {
                    if(reqXML.readyState==4)
                    {debugger
                        var RtnStr=reqXML.responseText;
                        
                         if (RtnStr !="" &&  RtnStr != "0" &&  RtnStr != "#*#")
                         { RtnStr=1}
                        else
                        {RtnStr=0}
                        
                         window.navigate("MsgDisplay1.aspx?ReqType=" + <%=Request.QueryString("ReqType")%> + "&RtnStr=" + RtnStr +  "&Desiction=0" + "&PlanCode=" + document.getElementById("PlanCodetxt").value) 
                         
//                        if (RtnStr !="")
//                        {
//                        
////                         alert("Action Plan Modified")
////                         window.navigate("../ModificationRequest/ChangeRequestList.aspx")
//                         window.self.close()
//                        }     
//                        else
//                           alert("Exception Occured")  
                        window.self.close()
                        reqXML =null;
                    }
                }
            }
            else
            {
             alert("Your browser does not support Ajax");
            }

//         }
//         else
//         {
//           alert(ExpMsg)
//         }   
    }
    
    
 
//function AjaxModifyActPlan()
//{
// var recary = new Array(); 
//  
//    var xmlhttp;
//    try
//    {
//        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//    }
//    catch(ex)
//    {
//        try 
//        {
//            xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
//        }
//        catch(ex)
//        {
//            try
//            {
//                xmlhttp=new XmlHttpRequest();
//            }
//            catch(ex)
//            {
//                alert("please update the webbrowser");
//            }
//        }
//    }
//    xmlhttp.onreadystatechange=function()
//    {
//        if(xmlhttp.readystate==4)
//        {
//            var Time="abc"
//            Time=xmlhttp.ResponseText
//            if (Time=1)
//              {
//                alert("Modification Initiated")
//                window.self.close()
//                window.navigate("../ModificationRequest/ChangeRequestList.aspx")
//              } 
//             else 
//               alert("Exception Occured")
//               
//          xmlhttp =null;
//        }
//    }
//    var url="ActPlanModfication_Ajax.aspx"
//    xmlhttp.open("POST",url,true);
//    xmlhttp.send(null);
//}
//        
   
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
	
	
function OpenIsueReport()
{
    var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + <%=Request.QueryString("isuLoginId")%> + "&IsuTypeId=" + <%=Request.QueryString("IssueTypeID")%> 
    var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
    SpWinObj = window.open(pageURL,'SpecCodes',features)
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}	

     
//-->
</script>





</html>