<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="InstName.Trn" %>
<%@ Register TagPrefix="uc2" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
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
function fnSetToReasons(argValue){
  
   
		document.getElementById('RemarksTxt').value = argValue
	}
	//-->
		</script>
		
	<script language="javascript">
	
	function fnOpenSuppCrPopUp(){   

      SetPopDimensions()
    
    	var pageURL = "SupplierPopUP.aspx"
        var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
 
         SpWinObj = window.open(pageURL,'SpecCodes',features)
	    if(SpWinObj.opener == null) SpWinObj.opener=self;
	    SpWinObj.focus();
   }
   function fnCrSuppSetToCode(KfIdVal,KfLableVal, CodeLableVal){
      var objId
      var obj         
		objId=  'SuppIdLbl'
		obj=document.getElementById(objId)
		obj.value = KfIdVal	
		objId=  'SuppLbl'
		obj=document.getElementById(objId)
		if(KfLableVal=="" && CodeLableVal ==""){
		  obj.value = ""
		}else{  
		  obj.value = KfLableVal + ' (' + CodeLableVal + ')'	
		}
		SuppLbl.innerHTML = obj.value		
		//document.Form1.submit()
		
   } 	

	
	</script>
		
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable"  runat="server">
				<asp:TableRow Height="20">
					<asp:TableCell CssClass="MainHead">
						<asp:Literal ID="MainTitleLtrl" Runat="server"></asp:Literal>
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
									<asp:Literal id="SubTitleLtrl" runat="server"></asp:Literal>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="InstCategoryTd" width="40%" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD" runat="server" ID="InstCategoryCtrlTD">
								</asp:TableCell>
							</asp:TableRow>
								<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CatDesTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:label id="CatDesLbl"  runat="server" CssClass="MainTd" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:label>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EqpTypeCellTD" width="40%" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD" runat="server" ID="EqpTypeTD">
								</asp:TableCell>
							</asp:TableRow>
					
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DescTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="CodeTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="100" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
						
					
							<asp:TableRow cssclass = "hiderow">
								<asp:TableCell CssClass="MainTD" ID="PDateTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<uc1:CaliberCalender id="PDate" runat="server"></uc1:CaliberCalender>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="MakeTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="MakeTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ModelTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="ModelTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="MfgTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="MfgTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="InstallAtTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="InstallAtTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DeptTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DeptTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="IDateTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<uc1:CaliberCalender id="InstallDate" runat="server"  TabIndex=2></uc1:CaliberCalender>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="WExpireTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<uc1:CaliberCalender id="WExpireDate" runat="server" TabIndex=2></uc1:CaliberCalender>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="CModTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:radiobuttonlist id=CModRadio runat="server" Width="200px" TabIndex=2 RepeatDirection="Horizontal" CssClass="RBlist" CellSpacing="1" CellPadding="0">
									<asp:ListItem Value="1" selected="true" >Yes</asp:ListItem>
									<asp:ListItem Value="2">No</asp:ListItem>
								</asp:radiobuttonlist>	
								</asp:TableCell>
							</asp:TableRow>
							<ASP:TableRow>
								<ASP:TableCell CssClass="MainTd" ID="SuppTd" Font-Bold=true></ASP:TableCell>
								<ASP:TableCell CssClass="MainTd" >
									<INPUT type="button" onclick="fnOpenSuppCrPopUp()" class='RsnPup' style="HEIGHT:20px" TabIndex=2>
									<ASP:label Runat="server" ID="SuppLbl" CssClass="MainTd"></ASP:label>
									<ASP:textbox Runat="server" ID="SuppIdLbl" CssClass="hiderow"></ASP:textbox>
								</ASP:TableCell>
							</ASP:TableRow>							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="SopnoTD" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="SopnoTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="SWTd" Font-Bold=true></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="SWTxt"  runat="server" CssClass="TxtCls" MaxLength="50" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
					
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" Font-Bold=true>
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1),'RemarksTxt'" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc2:EsignObj id="EsignObj1" runat="server" visible="false"></uc2:EsignObj>
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
						<asp:Table runat="server"  width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow>
								<asp:TableCell >
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" Text=""  TabIndex=2 ></asp:Button>
								</asp:TableCell>
								<asp:TableCell  HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False" TabIndex=2 ></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>		
	</body>	
</HTML>

<script language=javascript>
<!--
document.getElementById('DescTxt').focus() 

function IDateChk(src, args){

 var flag =0
 var idate = document.getElementById("InstallDate_CalDateDisplay").value

//var Flag= VbIDateValid() ;
//if(Flag==false){
//		args.IsValid=false;
//  	    Page_IsValid=false;
//  	    }
 if(idate==""){
   flag =1
 }
 if(flag==1){
   args.IsValid=false;
   Page_IsValid=false;
 }
}

function WDateChk(src, args){

 var flag =0
 var idate = document.getElementById("WExpireDate_CalDateDisplay").value
var Flag= VbWDateValid() ;
if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
// if(idate==""){
//  // flag =1
// }
// if(flag==1){
//   args.IsValid=false;
//   Page_IsValid=false;
// }
}
 
 function  IDateValid(src,args){
 
 var Flag= VbIDateValid() ;
    if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 } 
 
//-->
</script>

<script language="vbscript"> 

function VbIDateValid 
      
    IDate=document.getElementById("InstallDate_CalDateVal").value
     
    if IDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	 
	
	IDateAry=split(IDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
     
    DDgap=DateDiff("d",Today,IDateVal)
      
	if DDgap>0 then
		VbIDateValid=false
    end if  
  
 End function 
 
 function VbWDateValid 
      
    WDate=document.getElementById("WExpireDate_CalDateVal").value
      IDate=document.getElementById("InstallDate_CalDateVal").value
      
    if WDate="" then exit function
    if IDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	
	 
	
	IDateAry=split(IDate,"/")
	WDateAry=split(WDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
    WDateVal=dateSerial(WDateAry(2),WDateAry(0),WDateAry(1)) 
	 
     
    DDgap=DateDiff("d",IDateVal,WDateVal)
      
	if DDgap<0 then
		VbWDateValid=false
    end if  
  
 End function 
 
 </script>
