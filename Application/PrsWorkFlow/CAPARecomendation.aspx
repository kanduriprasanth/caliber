<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CAPARecomendation.aspx.vb" Inherits="PrsWorkFlow.CAPARecomendation" %>
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

  
//    function fnChnageCss(RowCnt)
//     {
//       if (document.getElementById("Accept_" + RowCnt + "_0").checked== true || document.getElementById("Accept_" + RowCnt + "_2").checked== true)
//         {
//           document.getElementById("Remarks_" + RowCnt).className="HideRow"
//           document.getElementById("Remarks_" + RowCnt).value=""
//         }  
//       else if (document.getElementById("Accept_" + RowCnt + "_1").checked== true)
//         {
//           document.getElementById("Remarks_" + RowCnt).className="TxtCls"
//         }  
//     }
     
      var AceptStatus=true
     function funPlanProsAcp(RowCnt)
     {
     
       var ExpMsg =""
      
       
       if (document.getElementById("Accept_" + RowCnt + "_1").checked== false && document.getElementById("Accept_" + RowCnt + "_0").checked== false && document.getElementById("Accept_" + RowCnt + "_2").checked== false ) 
       {
          ExpMsg="select Recommend Decision" 
       }
       else if (document.getElementById("Accept_" + RowCnt + "_1").checked== true || document.getElementById("Accept_" + RowCnt + "_0").checked== true)
       {
         if (document.getElementById("Remarks_" + RowCnt).value=="")
          {
            ExpMsg="Enter Remark(s) / Reason(s)"
          }
          else
          {
            AceptStatus=false
          }
       }
       
       if (ExpMsg == "")
       {
          fnCallESign(5,RowCnt); 
         //Ajax_ApproveAcp(RowCnt,AceptStatus)
       }
       else
       { alert(ExpMsg); return;}
       
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
     
     function Ajax_ApproveAcp(RowCnt)
        {

            var Values ='<XmlDS>';
            
            var AcpDecision
            if (document.getElementById("Accept_" + RowCnt + "_1").checked==true)            
                {AcpDecision=2 }
            else if (document.getElementById("Accept_" + RowCnt + "_0").checked==true)            
                {AcpDecision=1 }
            else if (document.getElementById("Accept_" + RowCnt + "_2").checked== true)
                {AcpDecision=3}
                 
            Values+=Fn_XMLTableRow("RecomStatus","<![CDATA[" + AcpDecision + "]]>")
            Values+=Fn_XMLTableRow("Remarks","<![CDATA[" + ReplaceSpeCahar(document.getElementById("Remarks_"+RowCnt).value) + "]]>")
            
            Values+= "</XmlDS>";
            
            var url="../PrsWorkFlow/PoposeAcp_Ajax.aspx?Type=2&PlanId=" +  document.getElementById("PlanID_"+RowCnt).value 
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
                        var ReturnVal="abc"
                        ReturnVal=reqXML.responseText
                        if (ReturnVal != "")
                        {
//                            if (AcpDecision ==1)
//                                { alert("Action Plan Proposal Is-Recommended ") }
//                            else if (AcpDecision ==2)
//                              { alert("Action Plan Proposal Is-Rejected ") }
//                            else if (AcpDecision==3) 
//                              { alert("Action Plan Proposal Is-Rejected ") }
//                              
                              var RetutnValArr =new Array()
                              RetutnValArr =ReturnVal.split("#*#")
                              
                             document.getElementById("Accept_" + RowCnt + "_0").setAttribute("disabled","disabled")
                             document.getElementById("Accept_" + RowCnt + "_1").setAttribute("disabled","disabled")
                             document.getElementById("Accept_" + RowCnt + "_2").setAttribute("disabled","disabled")
                                       
                             document.getElementById("Remarks_" + RowCnt).setAttribute("disabled","disabled")
                             document.getElementById("Remarks_" + RowCnt).setAttribute("disabled","disabled")
                             document.getElementById("Button_" + RowCnt).innerHTML="<input id='SubmitBtn_" + RowCnt + "' name='SubmitBtn_" + RowCnt + "' type='Button' class='ButCls' value='Submit' disabled=disabled/>"
                             document.getElementById("PlanCode_" + RowCnt).innerHTML=RetutnValArr[1]
                             document.getElementById("AcPlanId_" + RowCnt).value=RetutnValArr[0]
                             
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
                            <asp:TableCell CssClass="HideRow" ColumnSpan="2">
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
                        <asp:TableRow ID="ActonReqTr" CssClass="HideRow">
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
                   
                        <asp:TextBox ID="IsuTyepTxt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                        <asp:TextBox ID="ActPlanInChargeGrpTXt" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                        <asp:TextBox ID="IssLogId" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                        <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat="server" Text="0"></asp:TextBox>
                                       
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()

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





</html>

