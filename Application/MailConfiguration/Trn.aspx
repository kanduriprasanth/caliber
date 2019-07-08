<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="MailConfiguration.Trn" %>

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
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script type="text/javascript" src="../JScript/Common.js"></script>
    

       

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}
jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
    function FormSelPopUpFn()
    {
      if (document.getElementById("EnventDDL").value!="")
      {
        var pageURL;
        
            if ( (document.getElementById("EnventDDL").value =="1") || (document.getElementById("EnventDDL").value =="2"))
            {pageURL ="../IssueLogin/IsuTypePopUp.aspx"}
            else
            {pageURL ="../EFormIssuance/EFormListPopUp.aspx?WrkType=0"}
        
        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
       }
       else
       {
             alert("Select Configuration Event")
       } 
    }

    function fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID)
    {
        document.getElementById("FormDesc").innerHTML =KfLableVal
        document.getElementById("FormIdTxt").value=KdIdVal
        document.getElementById("FormCodeTxt").value=KdCodeVal
        document.getElementById("FormDescTxt").value=KfLableVal
        document.getElementById("WOFIDTxt").value=WofID
    }
    
     function fnCrSetIsuType(BaseID,AulID,IsuTypeUCode, IsuTYpeDes,LogWofId,ClsWofId)
    {
        
        document.getElementById("FormDesc").innerHTML =IsuTYpeDes
        document.getElementById("FormIdTxt").value=BaseID
        document.getElementById("FormCodeTxt").value=AulID
        document.getElementById("FormDescTxt").value=IsuTYpeDes
        
        if(document.getElementById("EnventDDL").value=="1")
        {document.getElementById("WOFIDTxt").value=LogWofId}
        else if(document.getElementById("EnventDDL").value=="2") 
        {document.getElementById("WOFIDTxt").value=ClsWofId}
    }
    
    
    function fnCrformSubmit(){
        document.all("GoBtn").click()
	}		
    
    var FldId
    var AddType
    var evantType
    
    function FunSelGroup(EventCnt,Id,Type)
    {
        FldId=Id;
        AddType=Type;
        evantType=EventCnt;

        var pageURL ="RevAppListPopUp.aspx";
        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    
    function fnSetVal_MailTo(KdIdVal,KfLableVal)
    {
    
         switch (parseInt(AddType))
         {
         
           case 1:
                    document.getElementById("MailToLbl"  + evantType + "_" + FldId).innerHTML =KfLableVal
                    document.getElementById("MailTo"+ evantType + "_" +  FldId) .value=KdIdVal
                    document.getElementById("MailToTxt" + evantType + "_" +  FldId).value=KfLableVal
                    break;
           case 2:
                    document.getElementById("MailCCLbl"  + evantType + "_" +  FldId).innerHTML =KfLableVal
                    document.getElementById("MailCC"+ evantType + "_" +  FldId) .value=KdIdVal
                    document.getElementById("MailCCTxt" + evantType + "_" +  FldId).value=KfLableVal
                    break;
           case 3:
                    document.getElementById("MailBccLbl"  + evantType + "_" +  FldId).innerHTML =KfLableVal
                    document.getElementById("MailBcc"+ evantType + "_" +  FldId) .value=KdIdVal
                    document.getElementById("MailBccTxt" + evantType + "_" +  FldId).value=KfLableVal
                    break;
         }
        
    }
    
//    
//    function FormSelWofPopup()
//    {
//       if(document.getElementById("WOFIDTxt").value!="")
//        { 
//           var pageURL;
//           pageURL ="WorkFlowPopUp.aspx?WOFID="+ document.getElementById("WOFIDTxt").value + "&FormId=" + document.getElementById("FormIdTxt").value +"&EventType=" + document.getElementById("EnventDDL").value
//           SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
//           if(SpWinObj.opener == null) SpWinObj.opener=self;
//           SpWinObj.focus();
//        }
//        else
//        {alert("Select Form")}
//     }
//    
//    function fnSetVal_MailTo(KdIdVal,KfLableVal)
//    {
//        document.getElementById("UserGrpdescLbl").innerHTML =KfLableVal
//        document.getElementById("UserGrpIdTXt").value=KdIdVal
//        document.getElementById("UserGrpdescTxt").value=KfLableVal
//    }
    
      function fnCrformSubmit1(){
//        document.all("GoBtn").click()
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
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold; width:31%;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                            <asp:Label ID="DescLbl" CssClass="MainTd" runat=server ></asp:Label>
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="HideRow" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2" ></asp:TextBox>
                                 
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                          <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SubjectTd" Style="font-weight: bold; width:31%;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="SubjectTXT" runat="server" CssClass="TxtCls" MaxLength="100" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow >
                           <asp:TableCell CssClass="MainTD" ID="EventTD" Style="font-weight: bold; width:31%;"></asp:TableCell>
                           <asp:TableCell CssClass="MainTD" >
                            <asp:DropDownList ID="EnventDDL" runat="server" CssClass="MainTD" AutoPostBack=true onchange="SetDesc()"></asp:DropDownList>
                           </asp:TableCell>
                        </asp:TableRow>
                                                                      
                        <asp:TableRow Id="FormSelTr" CssClass="HideRow">
                            <asp:TableCell ID="FormSelTd" Style="font-weight: bold; width:31%" runat="server" CssClass="MainTD"
                               ></asp:TableCell>
                            <asp:TableCell ID="TableCell2" runat="server" CssClass="MainTD">
                                <input class='RsnPUP' onclick="FormSelPopUpFn()" type="button" tabindex="8">
                                <asp:Label ID="FormDesc" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="FormIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="FormCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="FormDescTxt" runat="server" CssClass="HideRow" Text=""></asp:TextBox>
                                 <asp:TextBox ID="WOFIDTxt" runat="server" CssClass="HideRow" Text=""></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                           
                        
                        <asp:TableRow id="WOFTR" CssClass="HideRow">
                          <asp:TableCell CssClass="MainTD" ID="WoFGrpTD" Style="font-weight: bold; width:31%" runat="server"></asp:TableCell>
                          <asp:TableCell runat=server CssClass="MainTD">
                            <input class='RsnPUP' onclick="FormSelWofPopup()" type="button" tabindex="8">
                                <asp:TextBox ID="UserGrpIdTXt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserGrpdescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="UserGrpdescLbl" runat=server Text=""></asp:Label>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                       <asp:TableRow id="EvnetTr" CssClass="HideRow">
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table runat=server CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="EventTab"></asp:Table>
                          </asp:TableCell>
                       </asp:TableRow> 
                       
                        
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='HideRow'>
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
                            <asp:TableCell  CssClass="HideRow" HorizontalAlign="Right">
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
                        <asp:Button ID="GoBtn" runat=server  CssClass="HideRow" CausesValidation=false />
                        <asp:TextBox ID="OldEvntIdTxt" runat=server></asp:TextBox>
                        <asp:TextBox ID="EvntIdTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
                <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.getElementById('CodeTxt').focus()

function SetDesc()
{
document.getElementById("DescTxt").value=""
document.getElementById("DescLbl").innerHTML=""
  if (document.getElementById("EnventDDL").value !="")
   {
     var EventDDl = document.getElementById("EnventDDL");
     document.getElementById("DescTxt").value= EventDDl.options(EventDDl.selectedIndex).text
     document.getElementById("DescLbl").innerHTML= document.getElementById("DescTxt").value
     
   }
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
        function VaidateFields(src,args)	
        {
        
            var EventDll = document.getElementById("EnventDDL").value
            var EditerId="BodyTxt_"+  EventDll
            var ErrerStr=""
            var Eventtype = "<%=Eventtype %>"
             var FieldNodes 
            if (Eventtype == "2")
            {
               var oEditor = FCKeditorAPI.GetInstance(EditerId);
               
              
               
               //var FieldNodes = oEditor.EditorDocument.documentElement.getElementsByTagName("div");
               oEditor.GetXHTML(true); // Will set any unclosed tags and convert to dhtml format.
               oEditor.ResetIsDirty();
            }  
            
            
            args.IsValid=true;
            Page_IsValid=true;
            
            var ErrerStr=""
            var Eventtype = "<%=Eventtype %>"
            
            if (Eventtype == "2")
            {
                var sData = oEditor.GetData() 
                
                if (sData=="" || sData=="<div><div>&nbsp;</div></div>" ) 
                   {ErrerStr=ErrerStr+ "Add Fields To Template Body" + "\n -" }
            } 
            
            if (ErrerStr != "") 
              {
                src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
                args.IsValid=false;
                Page_IsValid=false;
              }

        }
        
        

			
//-->
</script>

</html>
