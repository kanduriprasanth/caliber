<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ExtTargetDates.aspx.vb" Inherits="ModificationRequest.ExtTargetDates" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="EsignObj1.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
     <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">
    <%--<script language="javascript" src="../CAPAWORKS/jquery.min.js"></script>--%>
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>

    <script language="javascript" src="../JScript/Common2.js"></script>
    
     <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />

    
 <script language ="javascript" >
   
   
    function IsuFormPopUpFn(PrsType)
    {
        var pageURL ="../IssueWorkAllocationTemplate/IssueFormPopup.aspx?PrsType="+ PrsType ;
        
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
        document.getElementById("IssueFormID").value=KdIdVal
        document.getElementById("IssFormTxt").value=KdCodeVal
        document.getElementById("IssFormLab").innerHTML=KdCodeVal

        document.getElementById("IsuLogIdTxt").value=""
        document.getElementById("IssueLogDescTxt").value=""
        document.getElementById("IsuLogLbl").innerHTML=""
        document.getElementById("IsuLogIdAulTxt").value=""
        
        $("#RecListTab").html("");
        document.forms(0).submit()

    }

    function IsuLoginPopup()
    {
        if (document.getElementById("IssueFormID").value  != "")
        {
            var pageURL ="ETDIsuLogPopUp.aspx?PrsType=" + document.getElementById("IssueFormID").value ;
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            
            SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft );
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        else
        {
            alert("Select Issue Form")
        }
    }

    function GetLoginVals(KdIdVal,KdAulIdVal,KfLableVal)
    {
        document.getElementById("IsuLogIdTxt").value=KdIdVal
        document.getElementById("IssueLogDescTxt").value=KfLableVal
        document.getElementById("IsuLogLbl").innerHTML=KfLableVal
        document.getElementById("IsuLogIdAulTxt").value=KdAulIdVal
        
        $("#RecListTab").html("");
        document.forms(0).submit()
    }

    function fnCrformSubmit()
    { }


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

 </script>

 <script language="javascript" >
   
    function ExtTargetDate(RowCnt)
    {
        var targetdate;
        var duration;
        var IsuAulId=0;
        var EtdType=0;
        var ExtDays=0;
        var PlanId=0;

        targetdate=document.getElementById("PresentTrgDate" + RowCnt).value
        duration =document.getElementById("ExtwrkTxt" + RowCnt).value
        if(  (isNaN(duration)==true) || (duration=="")){
             document.getElementById("ExtwrkTxt" + RowCnt).value="";
             alert("Proposed Extension Days Should Be Numeric values");         
        }
        
        IsuAulId=document.getElementById("IsuLogIdAulTxt").value
        EtdType=document.getElementById("ETDType" + RowCnt).value
        PlanId=document.getElementById("PlanID" + RowCnt).value
        ExtDays=document.getElementById("ExtwrkTxt" + RowCnt).value  
        if(ExtDays!=""){
            if (ExtDays==0)
            {
                 alert("Proposed Extension Days Should Be Greater Than Zero");
                 document.getElementById("ExtwrkTxt" + RowCnt).value="";
            }
            else
            {
                if (targetdate !="" && duration!=""){
                    AjaxExtTargetDate(targetdate,duration,RowCnt,IsuAulId,EtdType,PlanId)
                }        
            }
         }
      
    }

    function EnablePropExtension(RowCnt)
    {

        if (document.getElementById("ETDReq" +RowCnt + "_" + 0).checked==true)
        {
             document.getElementById ("ExtwrkTxt"+RowCnt).removeAttribute("disabled");
             document.getElementById ("Submitbtn"+RowCnt).removeAttribute("disabled");
        }
        else if(document.getElementById("ETDReq" + RowCnt + "_" + 1).checked==true)
        {
            document.getElementById ("ExtwrkTxt"+RowCnt).setAttribute("disabled","disabled");
            document.getElementById ("Submitbtn"+RowCnt).setAttribute("disabled","disabled");
            
            document.getElementById ("ExtwrkTxt"+RowCnt).value="";
            document.getElementById("ExtTargetDateTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
        }

    }


    function SetExtTargetDate(Targetdate,RowCnt)
    {debugger
                      
        if(Targetdate==0)
        {
            alert("Target Date Should be Greater Than Or Equal to Current Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
        }
        else if(Targetdate==1)
        {
            alert("Target Date Should be Less Than Issue Closure Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
    
        }
        else if(Targetdate==2)
        {
            alert("Target Date Should be Less Than Action Plan Target Date");
            document.getElementById("ExtwrkTxt" + RowCnt ).value="";
            document.getElementById ("ETDlbl" + RowCnt).innerText="";
            return;
        }
        document.getElementById ("ETDlbl" + RowCnt).innerText=Targetdate;
        document.getElementById ("ExtTargetDateTxt" + RowCnt).value=Targetdate;

    }
    function isHTML(str) {
        return !!$(str)[0];
    }

    function AjaxExtTargetDate(Targetdate,Duration,RowCnt,IsuAulId,EtdType,PlanId)
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

        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readystate == 4) {
                var RtnStr = "abc"
                var ReturnArr = new Array()
                RtnStr = xmlhttp.ResponseText


                if (isHTML(RtnStr)) {
                    alert("Session Expired");
                    return;
                }


             
                SetExtTargetDate(RtnStr, RowCnt)

            }
        }  
        var IsEFmPlan=document.getElementById("EFPlan" + RowCnt).value 
        var url="../ModificationRequest/AjaxTargetDateCalc.aspx?Targetdate=" + Targetdate + "&Duration=" + Duration + "&IsuAulId=" +IsuAulId + "&EtdType=" + EtdType + "&PlanId=" + PlanId + "&IsEFmPlan=" + IsEFmPlan
        xmlhttp.open("POST",url,true);
        xmlhttp.send(null);
    }


    function SubmitValues(RowCnt)
    {

        var ExpMsg="";

        if (document.getElementById("ETDReq"+ RowCnt + "_" + 0).checked==false && document.getElementById("ETDReq"+ RowCnt + "_" + 1).checked==false)
        {
            ExpMsg= ExpMsg + "Select Value For: Extension Required" + "\n"
        }

        else if(document.getElementById("ETDReq"+ RowCnt + "_" + 0).checked==true)
        {
            if (document.getElementById("ExtwrkTxt" + RowCnt ).value=="")
            {
              ExpMsg=ExpMsg + "Enter Value For: Proposed Extension (days)" + "\n"
            }
            if($.trim(document.getElementById("RemTxt" + RowCnt ).value)=="")
            {
               ExpMsg=ExpMsg + "Enter Value For: Remark(s)/Reason(s)" + "\n"
            }
        }

        if (ExpMsg == "")
        { 
            fnCallESign(1,RowCnt);
        }
        else
        {
            alert(ExpMsg);
            return;
        }
    }


    function Ajax_RegisterETD(RowCnt)
    {
        
        ShowMask()
        document.forms(0).detachEvent('onsubmit',fnCallESign)

        var Values ='<XmlDS>';
        var IsuCode="";
        var WrkItemAulId=0;
        var WrkItemUCode="";
        var ActPlnId=0;
        var WorkType=0;
        var ETDRequired=0;

        var ETDType=document.getElementById("ETDType" + RowCnt).value; 

        if(document.getElementById("ETDReq"+ RowCnt + "_" + 0).checked==true)
        {
            ETDRequired=1;
        }

        Values+="<DataTable>"
        Values+="<IssueLogId>"+ "<![CDATA[" + document.getElementById("IsuLogIdTxt").value + "]]></IssueLogId>"
        Values+="<IssueAulId>"+ "<![CDATA[" + document.getElementById("IsuLogIdAulTxt").value + "]]></IssueAulId>"
        Values+="<WrkItemBaseId>"+ "<![CDATA[" + document.getElementById("WitBaseIdTxt" + RowCnt ).value  + "]]></WrkItemBaseId>" 
        Values+="<WrkItemAulId>"+ "<![CDATA[" + document.getElementById("WitAulIdTxt" + RowCnt ).value  + "]]></WrkItemAulId>" 
        Values+="<Ucode>"+ "<![CDATA[" + document.getElementById("UcodeTxt" +RowCnt ).value + "]]></Ucode>" 
        Values+="<Description>"+ "<![CDATA[" + document.getElementById("Desctxt" +RowCnt ).value + "]]></Description>" 
        Values+="<ActPlnId>"+ "<![CDATA[" + document.getElementById("PlanID" + RowCnt ).value + "]]></ActPlnId>" 
        Values+="<WorkType>"+ "<![CDATA[" + document.getElementById("WorkTypeTXt" + RowCnt ).value + "]]></WorkType>" 
        Values+="<ETDRequired>"+"<![CDATA[" + ETDRequired + "]]></ETDRequired>"
        Values+="<PresentTrgDate>"+"<![CDATA[" + document.getElementById("PresentTrgDate" + RowCnt ).value + "]]></PresentTrgDate>"
        Values+="<ExtDuration>"+"<![CDATA[" + document.getElementById("ExtwrkTxt" + RowCnt ).value + "]]></ExtDuration>"
        Values+="<ExtTargetDate>"+"<![CDATA[" + document.getElementById("ExtTargetDateTxt" + RowCnt ).value + "]]></ExtTargetDate>"
        Values+="<ETDRemarks>"+"<![CDATA[" + document.getElementById("RemTxt" + RowCnt ).value + "]]></ETDRemarks>"
        Values+="<ETDType>"+"<![CDATA[" + document.getElementById("ETDType" + RowCnt).value + "]]></ETDType>"
        Values+="<InchrgeId>"+"<![CDATA[" + document.getElementById("Inchrgegrpid" + RowCnt).value + "]]></InchrgeId>"
        Values+="<EventType>"+"<![CDATA[" + document.getElementById("EventType" + RowCnt).value + "]]></EventType>"
          
          if (ETDType==2 || ETDType==4)
          {
            Values+="<AssignType>"+"<![CDATA[" + document.getElementById("AssignType" + RowCnt).value + "]]></AssignType>"
            Values+="<AssignUserId>"+"<![CDATA[" + document.getElementById("AssignUserid" + RowCnt).value + "]]></AssignUserId>"
          }
        Values+="</DataTable>"

        Values+= "</XmlDS>";

        $.post('../ModificationRequest/ExtTargetDates_Ajax.aspx?ReqType=1', { XmlTextBox: Values }).done(function(data, textStatus, jqXHR) { 
            if($(data).text() !="0")
              FnRefresh(RowCnt)
          
            })
            .fail(function(jqXHR, textStatus, errorThrown) {alert(errorThrown); }).always(function() {HideMask();document.forms(0).attachEvent('onsubmit',fnCallESign);});
             
        } 
        
        function FnRefresh(RowCnt)
        {
            $("#RecListTab").html("");
            document.forms(0).submit();  
        
        }
        
        
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
</head>
<body>
    <form id="Form1" runat="server">
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
                            <asp:TableCell CssClass="MainTD" ID="IssTypeTd" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="IsuFormPopUpFn(<%=PrsType%>)" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IssFormLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IssFormTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueFormID" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="IssuLogTD" Style="font-weight: bold; width: 31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="IsuLoginPopup()" class='RsnPUP' tabindex="3">
                                <asp:Label ID="IsuLogLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="IsuLogIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IssueLogDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="IsuLogIdAulTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                                       
                         <asp:TableRow CssClass="HideRow" ID="RecListTR">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="RecListTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0"
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
            <asp:TableRow CssClass ="HideRow">
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
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70">
                                </asp:Button>
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
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                       
                       <%-- <asp:CustomValidator ID="CusVal1" runat =server ClientValidationFunction="ValidateChangeReq"></asp:CustomValidator>--%>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
