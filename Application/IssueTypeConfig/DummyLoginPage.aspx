<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DummyLoginPage.aspx.vb" Inherits="IssueTypeConfig.DummyLoginPage" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

  <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
		}

     	
    function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}
        if(event.shiftLeft == true){return false}
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
    
     
   function fnOpenPopUp(BaseId)
	{
	SetPopDimensions()
	  	  var pageURL=""
	  switch (parseInt(BaseId))
	  {
	  case 1:
	   pageURL= "../IssueLogin/productList.aspx?ID="+ BaseId
	   break;
	   case 14:
	   pageURL= "../IssueLogin/IssueToPopup.aspx?ID="+ BaseId
     	  break;
	  }
	    var features = "height=  400 ,width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=No,top=" + PopUpLeftTopY + ",left=" + PopUpLeftTopX
     	 SpWinObj = window.open(pageURL,'SpecCodes',features)
		if(SpWinObj.opener == null) SpWinObj.opener=self;
		SpWinObj.focus();
	   }
	
 function fnCrSetToCode(BaseId,KfIdVal,KfLableVal,KfLableVal1,KdIdVal1)
	{
      var objId;
      var obj;
	objId="<%=Fldprefix%>" +  BaseId;
	obj=document.getElementById(objId);
	switch (parseInt(BaseId))
	{
	  case 1:
	    obj.value = KfIdVal + "#*#" + KdIdVal1;
	    break;
	  case 14:
	    obj.value = KfIdVal  ;
	    break;
	}
	
	objId="Value_" + "<%=Fldprefix %>" + BaseId;
	obj=document.getElementById(objId);
	
   if((KfLableVal=="") && (KfLableVal1==""))
    {
      obj.innerHTML =""
    }
    else
    {
     switch (parseInt(BaseId))
    	{
	        case 1:
        	    obj.innerHTML = KfLableVal+'/'+KfLableVal1;
    	        break;
	        case 14:
    	        obj.innerHTML = KfLableVal; 
	            break;
	    }
	}
	}
	
	
	function fnCrformSubmit(){
     //document.Form1.submit()
		}
		
		
	 
      
      
    //-->
    </script>
    
    
  <script language=javascript>

 function MfgDateValid(src,args){
     var Flag= VbMfgDateValid() ;
    if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
 function  ExpDateValid(src,args){
  var Flag= VbExpDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
function  ComplDateValid(src,args){
  var Flag= VbComplDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
function  ComplMfgDateValid(src,args){
  var Flag= VbComplDateMfgDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
function  RecCurDateValid(src,args){
  var Flag= VbRecCurDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
function  ComplCurDateValid(src,args){
  var Flag= VbComplCurDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
/*function  ComplRecCurDateValid(src,args){
  var Flag= VbComplRecCurDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}*/
function  TarRecDateValid(src,args){
  var Flag= VbTarRecDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}
function  TarCurDateValid(src,args){
  var Flag= VbTarCurDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	   Page_IsValid=false;
  	    }
}


function IssDateValid(src,args){
    var Flag= VbIssDateValid() ;
    if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
//function fnCrformSubmit(){
		//document.Form1.submit()
	// document.all("GoBtn").click()
	//}		

</script>
 

  <script language="vbscript">
 
 function VbMfgDateValid 
       MfgDate=document.getElementById("FLD_3:CalDateVal").value

  VbMfgDateValid=true
  if MfgDate="" then exit function
   	    ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    MfgDateAry=split(MfgDate,"/")
	    MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  	DDgap=DateDiff("d",Today,MfgDateVal)
			if DDgap>0 then
				VbMfgDateValid=false
			end if
 End function
 
  function VbExpDateValid 
    MfgDate=document.getElementById("FLD_3:CalDateVal").value
  if MfgDate="" then exit function
    ExpDate=document.getElementById("FLD_4:CalDateVal").value
  if ExpDate="" then exit function
      MfgDateAry=split(MfgDate,"/")
	  ExpDateAry=split(ExpDate,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	
	DDgap=DateDiff("d", ExpDateVal,MfgDateVal)
	 if DDgap>=0 then
		VbExpDateValid=false
	end if
  
 End function
 
 function VbComplDateValid 
    ComplDate=document.getElementById("FLD_7:CalDateVal").value
  if ComplDate="" then exit function
    DtRecCompl=document.getElementById("FLD_8:CalDateVal").value
  if DtRecCompl="" then exit function
      MfgDateAry=split(ComplDate,"/")
	  ExpDateAry=split(DtRecCompl,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	
	DDgap=DateDiff("d", ExpDateVal,MfgDateVal)
	 if DDgap>0 then
		VbComplDateValid=false
	end if
  
 End function
 
 function VbComplDateMfgDateValid 
    ComplDate=document.getElementById("FLD_7:CalDateVal").value
  if ComplDate="" then exit function
    DtRecCompl=document.getElementById("FLD_3:CalDateVal").value
  if DtRecCompl="" then exit function
      MfgDateAry=split(ComplDate,"/")
	  ExpDateAry=split(DtRecCompl,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	
	DDgap=DateDiff("d", ExpDateVal,MfgDateVal)
	 if DDgap<0 then
		VbComplDateMfgDateValid=false
	end if
	End function
	
   function VbRecCurDateValid 
      MfgDate=document.getElementById("FLD_8:CalDateVal").value

  VbRecCurDateValid=true
  if MfgDate="" then exit function
   	    ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    MfgDateAry=split(MfgDate,"/")
	    MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  	DDgap=DateDiff("d",Today,MfgDateVal)
			if DDgap>0 then
				VbRecCurDateValid=false
			end if
 
 End function
 
 function VbComplCurDateValid 
      MfgDate=document.getElementById("FLD_7:CalDateVal").value

  VbComplCurDateValid=true
  if MfgDate="" then exit function
   	    ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    MfgDateAry=split(MfgDate,"/")
	    MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  	DDgap=DateDiff("d",Today,MfgDateVal)
			if DDgap>0 then
				VbComplCurDateValid=false
			end if
 
 End function
 
  'function VbComplRecCurDateValid 
   '   MfgDate=document.Form1.all("ComplDateCal:CalDateVal").value

  'VbComplRecCurDateValid=true
  'if MfgDate="" then exit function
   	    'ThisMonth = <%=ThisMonth%>
	    'ThisYear = <%=ThisYear%>
	    'ThisDay = <%=ThisDay%>
	    'Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    'MfgDateAry=split(MfgDate,"/")
	    'MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  	'DDgap=DateDiff("d",Today,MfgDateVal)
		'	if DDgap>0 then
		'		VbComplRecCurDateValid=false
		'	end if
 
' End function
 
 function VbTarRecDateValid 
    MfgDate=document.getElementById("FLD_8:CalDateVal").value
  if MfgDate="" then exit function
    ExpDate=document.getElementById("FLD_10:CalDateVal").value
  if ExpDate="" then exit function
      MfgDateAry=split(MfgDate,"/")
	  ExpDateAry=split(ExpDate,"/")
	  MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	
	DDgap=DateDiff("d", ExpDateVal,MfgDateVal)
	 if DDgap>=0 then
		VbTarRecDateValid=false
	end if
  
 End function
 
 function VbTarCurDateValid 
      TarDate=document.getElementById("FLD_10:CalDateVal").value
 
  VbTarCurDateValid=true
  if TarDate="" then exit function
   	    ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    TarDateAry=split(TarDate,"/")
	    TarDateVal=dateSerial(TarDateAry(2),TarDateAry(0),TarDateAry(1))
	  	DDgap=DateDiff("d",Today,TarDateVal)
	  	 
			if DDgap<0 then
				VbTarCurDateValid=false
			end if
 
 End function
 
 
 function VbIssDateValid 
      MfgDate=document.getElementById("FLD_13:CalDateVal").value

  VbIssDateValid=true
  if MfgDate="" then exit function
   	    ThisMonth = <%=ThisMonth%>
	    ThisYear = <%=ThisYear%>
	    ThisDay = <%=ThisDay%>
	    Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	    MfgDateAry=split(MfgDate,"/")
	    MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
	  	DDgap=DateDiff("d",Today,MfgDateVal)
			if DDgap>0 then
				VbIssDateValid=false
			end if
End function

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
                        <asp:TableCell CssClass="MainTD" ID="IssTypeTd" style="font-weight:bold"></asp:TableCell>
                        <asp:TableCell CssClass="MainTD" >
                          <asp:DropDownList ID="IssTypeDDL" runat="server" AutoPostBack="true" CssClass="HideRow" style="width:200px"></asp:DropDownList>
                          <asp:TextBox ID="IssTypeTxt" runat="server" CssClass="HideRow" ReadOnly="true" ></asp:TextBox>
                          <asp:TextBox ID="IssueID" runat="server" CssClass="HideRow"></asp:TextBox>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" style="font-weight:bold" Width="40%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" Width="60%" >
                                <asp:TextBox ID="CodeTxt" ReadOnly=true runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                                     <asp:TextBox runat="server" CssClass="HideRow" ID="ValdString" ></asp:TextBox>
                                  </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ID="ISSINVTd" Text="" style="font-weight:bold" >
                                              </asp:TableCell>
                        <asp:TableCell CssClass="MainTD" >
                          <asp:RadioButtonList ID="INVRd" runat="server" RepeatDirection="Horizontal" CssClass="RBList" >
                             <asp:ListItem Value="1" Selected="True">Off-Line</asp:ListItem>
                             <asp:ListItem Value="2">On-LIne</asp:ListItem>
                          </asp:RadioButtonList>
                        </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                        <asp:TableCell CssClass="MainTD" ColumnSpan="2" >
                        <asp:Table CssClass="SubTable" ID="SampleTAb" runat="server" CellPadding="1" CellSpacing="0"></asp:Table>
                          
                        
                        </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" style="font-weight:bold">
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
                <asp:TableCell>
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
                                <asp:Button ID="BtnUpload" runat=server onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Strucherd Data" Width="150">
                                </asp:Button>
                                
                                <asp:Button ID="unstuBtn" runat=server onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Un Strucherd Data" Width="150">
                                </asp:Button>
                                
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                           
                            </asp:TableCell>
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.Form1.CodeTxt.focus()

//var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.MaxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taObj.MaxLength*1){
				taObj.value=taObj.value.substring(0,taObj.MaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taObj.MaxLength +" Characters")
			}
			}		
			
			  //function taLimit() {
            //var taObj=window.event.srcElement;
            //if (taObj.value.length==taObj.maxLength*1) return false;
        //}
        //function taCount() {
            //var taObj=window.event.srcElement;           
            //if (taObj.value.length>taObj.maxLength*1){
            //    taObj.value=taObj.value.substring(0,taMaxLength*1);
                //alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
            //}
//            }        
//-->
</script>

</html>
