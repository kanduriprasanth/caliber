<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AuditObservation.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script> 
        <script language="javascript" src="../JScript/jquery.min.js"></script>
		<script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

function OpenRuleTypePopUp(IdSuffix)
{
    var pageURL = "RuleTypeListPopup.aspx?IdSuffix="+IdSuffix
	var features = "height=350,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=50,left=50"
	var winObj = window.open(pageURL,'eNoteBookfields',features)
	if(winObj.opener ==null)winObj.opener = self;
	winObj.temp="asdf"
}

function Ret_OpenRuleTypePopUp(RuleTypeId,RuleId,RuleTypeDesc,RupeDesc,RuleTypeRuleDesc,IdSuffix)
{
    document.getElementById("RuleTypeIDTxt"+IdSuffix).value = RuleTypeId;
    document.getElementById("RuleIDTxt"+IdSuffix).value = RuleId;
    if(RupeDesc!="")
    {
        //DispVal = RuleTypeDesc + " : " + RupeDesc + "  "
        DispVal = RupeDesc
    }
    else
    {
        DispVal="";
    }
    document.getElementById("RuleDescTxt"+IdSuffix).value = DispVal;
    document.getElementById("RuleDescLbl"+IdSuffix).innerHTML = DispVal;
}

function UserLstpopup()
{
	var TidObj="UsersList:OptValues"
	SetPopDimensions()    
	var features = "height="+ 400 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
	 
	var pageURL = "UsersList.aspx" 
	
	SpWinObj = window.open(pageURL,'SpecCodes',features)
	if(SpWinObj.opener == null) SpWinObj.opener=self;
	SpWinObj.focus();
}
	
	function fnCrSetToCode(UserID,UserName)
		{	
		
		document.all("RspByTxt").value=UserName;	
		
		
		document.all("RspBy1Txt").value=UserID;
		document.all("RspByLbl").innerHTML=UserName;
		
		}	
	function fnCrformSubmit()
	{
	 document.all("GoBtn").click()
	 }
	 
	 
	 
	 function fnOpenDatasheetPrnt()
{

var RegBaseId="<%=PrntRegBaseid%>"
var RegCode="<%=PrntRegCode%>"
var BodyBaseId="<%=PrntBodyBaseId%>"
var DeptId="<%=DeptId%>"
var ProcessID="<%=ProcessID%>"
var Docno=<%=Docno%>
var Processno=<%=Processno%>
var AuditeeId="<%=AuditeeId%>"
//window.navigate("PrintObservation.aspx?VSNameID="+ VSNameID + "&Quantity=" + Quantity)	
window.navigate("PrintObservation.aspx?RegBaseId="+ RegBaseId + "&RegCode=" + RegCode+ "&BodyBaseId=" + BodyBaseId + "&DeptId=" + DeptId + "&ProcessID=" + ProcessID + "&Docno=" + Docno + "&Processno=" + Processno + "&AuditeeId=" + AuditeeId + "&Cnt=" + document.getElementById("NonCOnfirmetiesTxt").value)	
//"PrintObservation.aspx?RegBaseId=" & viewstate("RgsBaseId") & "&RegCode=" & AdtRgsCOde.Text & "&BodyBaseId=" & viewstate("BodyBaseId"))
	
	
}


	function AssignOldVal()
	{
	    if(document.getElementById("NonCOnfirmetiesTxt").value!="")
	    {
	        for(i=0; i<parseInt(document.getElementById("NonCOnfirmetiesTxt").value); i++)
	        {
	            document.getElementById("RuleDescTxt" + (i+1) + (1000 + i + 1)).value=document.getElementById("RuleDescTxt" + (i+1) + (1000 + i + 1)).value
	            document.getElementById("RuleDescLbl" + (i+1) + (1000 + i + 1)).innerHTML=document.getElementById("RuleDescTxt" + (i+1) + (1000+ i + 1)).value
	            document.getElementById("RuleTypeIDTxt" + (i+1) + (1000 + i + 1)).value=document.getElementById("RuleTypeIDTxt" + (i+1) + (1000 + i + 1)).value
	            document.getElementById("RuleIDTxt" + (i+1) + (1000 + i + 1)).value=document.getElementById("RuleIDTxt" + (i+1) + (1000 + i + 1)).value
	            document.getElementById("DocName").value=document.getElementById("DocName").value;
	            if(<%=TransType%>==1)
	            {
	               document.getElementById("DocNameLbl").innerHTML=document.getElementById("DocName").value;
	            }
	            document.getElementById("DocId").value=document.getElementById("DocId").value;
	        }
	    }
	}
	 
	 
	 function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }		
	 
//	   function FnDocpopup()
//            {
//                var UParam = ""
//                var RType =1;   // Source Type
//                var PlantID =<%=Session("PlantID")%>;   // Source Type
//                var pageURL;
//                pageURL ="../DMSManagement/DMSFilesPopUp.aspx?RType=" + RType + "&PlantID=" + PlantID + "&UParam=" + UParam;
//                var SpWinObj;
//                SpWinObj = window.open(pageURL,'DMSPopUp',"height=500,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
//                if(SpWinObj.opener == null) SpWinObj.opener=self;
//                SpWinObj.focus();
//            }

function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val();
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function FnDocpopup()
    {
        var UParam = "";
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            {
               
                document.all("DocId").value=DocId ;
                var DocDescArr = new Array();
                DocDescArr = DocDesc.split("$@$");
                DocDesc = DocDescArr.join ('; ');
                document.all("DocNameLbl").innerHTML=document.all("DocName").value=DocDesc;
             
            }
           
            function OkRet_OpenDMSPopUp(UParam)
            {
               
            }
            
           function OpenDocument(DocId) 
		    {
			    var yval = parseInt(screen.availHeight) - 100
			    var xval = screen.availWidth-500

			    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
			    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
			    if (SpWinObj.opener == null) SpWinObj.opener = self;
			    SpWinObj.focus();
		    }           
//	 function FnDocpopup()
//	{
//	
//	SetPopDimensions()    
//	var features = "height="+ 570 + ",width=" + PopUpWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + PopUpLeftTopY +  ",left=" + PopUpLeftTopX
//	 
//	var pageURL = "DocumentPopup.aspx" 
//	
//	SpWinObj = window.open(pageURL,'SpecCodes',features)
//	if(SpWinObj.opener == null) SpWinObj.opener=self;
//	SpWinObj.focus();
//	}
//	
//	function fnCrSetToCode1(DocID,DocName)
//		{	
//		
//		document.all("DocName").value=DocName;	
//		document.all("DocId").value=DocID;
//		document.all("DocNameLbl").innerHTML=DocName;
//		
//		}	
		
	 
	//-->
        </script>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server" >
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable" WIDTH="98%" runat="server">
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
								<asp:TableCell CssClass="MainTD" ID="ADtRgsTd" width="20%" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="AdtRgsCOde"  runat="server" ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="AdtTypeRw" >
								<asp:TableCell CssClass="MainTD" ID="ATypeTd"  Width="20%">Audit Type</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ATypeTdVal">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AdtDescTd" width="20%" >Audit Description</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="AdtDescLbl"  runat="server"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<%--Audit Scope ---START--%>
							<asp:TableRow ID="ScopeTr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="ScopeMETr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeMETd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeMEValTd">
								</asp:TableCell>
							</asp:TableRow>
						    <%--Audit Scope ---END--%>
						    
						<asp:TableRow ID="RegRw" CssClass="HideRow">
                            <asp:TableCell ID="RegTd" CssClass="MainTD">Audit Agency / Customer</asp:TableCell>
                            <asp:TableCell ID="RegNameTd" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DeptTD" width="20%" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="DeptLbl"  runat="server"   ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ProcessTD" width="20%" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="ProcLbl"  runat="server"  ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="VendRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="VenTd">Vendor</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="VendValTd">
								</asp:TableCell>
							</asp:TableRow>
														
							<asp:TableRow ID="ItemRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ItemTd">Item(s)</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="PrdValTd">
								</asp:TableCell>
							</asp:TableRow>
													
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="StDateTD"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="StDTD">								   
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EtDateTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="EndTD">
								  
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccStDateTd">Actual Start Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccStDateText">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateTd">Actual End Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateText">
								</asp:TableCell>
							</asp:TableRow>
						                           
                            <asp:TableRow  CssClass="HideRow">
								<asp:TableCell CssClass="SubHeadTd" ID="HeaderTd" ColumnSpan="2">Header Information</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="HdrDtlTr"  CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="HdrDtlTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="DescTd" ></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							
							<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>							
							
							<asp:TableRow id="LotInfoTr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfoTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
									<asp:textbox id="TxtIdTxt"  runat="server" width="0" height="0"></asp:textbox>
									<asp:textbox id="SessionTxt"  runat="server" CssClass="HideRow"></asp:textbox>
									<asp:textbox id="ControlIdText"  runat="server" CssClass="HideRow"></asp:textbox>
									<asp:textbox id="Control2IdText"  runat="server" CssClass="HideRow"></asp:textbox>
									<asp:textbox id="Control3IdText"  runat="server" CssClass="HideRow"></asp:textbox>
									<asp:textbox id="Control4IdText"  runat="server" CssClass="HideRow"></asp:textbox>
								    <asp:textbox id="TxtId1Txt"  runat="server" width="0" height="0"></asp:textbox>
							        <asp:textbox id="TxtCnageTxt" cssclass="hiderow" autopostback=true  runat="server" width="0" height="0"></asp:textbox>
							    </asp:TableCell>
							</asp:TableRow>
							
						   <asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ObsRecTypTd">Observation Recording Type</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
							       <asp:RadioButtonList CssClass="MainTD" ID="ObsRecTypRb" autopostback ="true" title="Audit Observation Recording Type should be either 'Summary' or 'Detailed'" runat="server" OnClick="FnObsRec()" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="Summary" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="Detailed" Value="2"></asp:ListItem>
                                   </asp:RadioButtonList> 
                              </asp:TableCell>
							</asp:TableRow>
							
										
					<%--	    <asp:TableRow id ="TtlAudObsCntTr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="TtlAudObsCntTd">Total Audit Observations</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								     <asp:TextBox id="TtlAudObsCntTxt"  autopostback="true" runat="server" CssClass="MainTd" ReadOnly ="True" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
                              </asp:TableCell>
							</asp:TableRow>	--%>	
							
							<asp:TableRow id = "NonCOnfirmetiesTr">
								<asp:TableCell CssClass="MainTD" ID="NonCOnfirmetiesTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="NonCOnfirmetiesTxt"  autopostback="true" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
									<asp:TextBox id="SummNonConTxt"  title ="Read Only Field" autopostback="true" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								   <asp:TextBox id="RmkSgstnTxt"  autopostback="true" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								   <asp:TextBox id="NoObservationTxt" autopostback="true" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							 <asp:TableRow id = "CmmrTr" CssClass ="HideRow">
							   <asp:TableCell columnspan=2>
							       <asp:Table ID="HeaderTab" runat="server" HorizontalAlign="center" BorderWidth="0"  CellPadding="0" CellSpacing="1" Width="100%">
							          <asp:TableRow CssClass="MainTD">
	                                    <asp:TableCell CssClass="MainTD" ID="CriticalTd" ColumnSpan =2>Critical</asp:TableCell>
	                                    <asp:TableCell CssClass="MainTD">
									       <asp:TextBox id="CriticalTxt"   runat="server" onblur="NumValidation4('Critical')" CssClass="TxtCls" MaxLength="2" OnChange="AutoCalNo()" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								        </asp:TableCell>
								        <asp:TableCell CssClass="MainTD" ID="MajorTd" ColumnSpan =2>Major</asp:TableCell>
								         <asp:TableCell CssClass="MainTD">
									       <asp:TextBox id="MajorTxt"   runat="server" onblur="NumValidation4('Major')" CssClass="TxtCls" OnChange="AutoCalNo()" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								        </asp:TableCell>
								        <asp:TableCell CssClass="MainTD" ID="MinorTd" ColumnSpan =2>Minor</asp:TableCell>
								         <asp:TableCell CssClass="MainTD">
									       <asp:TextBox id="MinorTxt"  runat="server" onblur="NumValidation4('Minor')" CssClass="TxtCls" OnChange="AutoCalNo()" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								        </asp:TableCell>
								        <asp:TableCell CssClass="MainTD" ID="RecomTd" ColumnSpan =2>Recommendations</asp:TableCell>
								         <asp:TableCell CssClass="MainTD">
									       <asp:TextBox id="RecomTxt"  runat="server" onblur="NumValidation4('Recom')" CssClass="TxtCls" OnChange="AutoCalNo()" MaxLength="2" Width="50px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								        </asp:TableCell>
	                               	  </asp:TableRow>
                                    </asp:Table>
                               </asp:TableCell>
							 </asp:TableRow>
               		
							<asp:TableRow id="LotInfo2Tr">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfo2Tab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow >								
								<asp:TableCell ID="AtcHFleTd" CssClass="MainTD">File Attachments</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								 <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                 <asp:Label ID="DocNameLbl" runat=server CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:Label ID="Lbl" CssClass="HideRow"  runat="server" Text=" ( Refer Attached Annexure )"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="TgtDateTr">
								<asp:TableCell CssClass="MainTD" ID="TgtDatRspTd" WIDTH="310px"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								<uc2:calibercalender id="TgtDatRspCal" runat="server"></uc2:calibercalender>
								</asp:TableCell>
							</asp:TableRow>		
							
								<asp:TableRow ID="RspByTr">
								<asp:TableCell CssClass="MainTD" ID="RspBytd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
								<asp:Label Id="RspByLbl" runat="server"></asp:Label>
								<asp:TextBox id="RspByTxt"  runat="server" CssClass="HideRow" ReadOnly="True" MaxLength="250" Width="200px" AccessKey="D"></asp:TextBox>
							    <ASP:Literal Id="ButtonLtrl" runat="server"><INPUT type="button" ID="GoBtn" onclick="UserLstpopup()"  class="HideRow" style='HEIGHT:20px'></asp:literal>
							    <asp:textbox id="RspBy1Txt" runat="server" cssclass="HideRow"></asp:textbox>&nbsp;
							    </asp:TableCell>
							</asp:TableRow>
								
						    
							<asp:TableRow id="LotInfo3Tr">
									<asp:TableCell CssClass="MainTD" >Checklist Print Status</asp:TableCell>					
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="PrtStsLbl"  runat="server" ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
											
						    <asp:TableRow id="RmrkRw">
									<asp:TableCell CssClass="MainTD" >Remark(s)</asp:TableCell>					
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox ID="RmrkTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" Width="200px"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
									
						    <asp:TableRow ID="RemarksRow" Runat="server" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD">
									<asp:Literal Runat="server" ID="RemarksLtrl"></asp:Literal>
								</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" TextMode="MultiLine"
										Rows="2" AccessKey="R"></asp:TextBox>
									<INPUT type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="EsignRow" Runat="server" CssClass="HideRow">
								<asp:TableCell ColumnSpan="2" style="PADDING-RIGHT:0px;PADDING-LEFT:0px;PADDING-TOP:0px;PADDING-BOTTOM:0px">
									<uc1:EsignObj id="EsignObj1" runat="server" visible="false"></uc1:EsignObj>
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
						<asp:Table runat="server" width="100%" CELLPADDING="0" cellspacing="0"
							HorizontalAlign="center" ID="Table2" BorderWidth="0">
							<asp:TableRow CssClass="HideRow" Height="0">
								<asp:TableCell></asp:TableCell>
								<asp:TableCell></asp:TableCell>
							</asp:TableRow>
							<asp:TableRow  >
								<asp:TableCell>
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
									accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button> &nbsp;
									<asp:Label ID="MsgLbl" runat="server" CssClass="HideRow"></asp:Label>
									</asp:TableCell>
								<asp:TableCell HorizontalAlign="Right" CssClass="HideRow">
								
                        <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
      </asp:TableCell>

								<INPUT type="button" onclick="fnOpenDatasheetPrnt()" class='ButSelCls'  id="WSBdtn" runat="server" value='Observation Print'  Width="150">									
										
								</asp:TableCell>
								<asp:TableCell  CssClass="HideRow" HorizontalAlign="Right">
									<asp:HyperLink ID="Hlink" Runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
										onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</asp:TableCell>
				</asp:TableRow>
				<asp:TableRow CssClass="HideRow" Height="0">
					<asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
						<asp:TextBox ID="DeptTxt" runat="server" CssClass="HideRow"></asp:TextBox>
						<asp:TextBox ID="ProcessTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="ExtNonCOnfirmetiesTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                        <asp:TextBox ID="ATypeTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="PrdIdTxt" runat="server"></asp:TextBox>
                        <asp:TextBox ID="VendIdTxt" runat="server"></asp:TextBox>
                         <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>
					</asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		
	</body>
	
<script type="text/javascript">
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
   </script>
	<script language=javascript>
	
	
	function  NumValidation(src,errMsg)
		{

		    var val = document.getElementById("NoObservationTxt").value 
		
			if(val!='')
		{
		    if( val.replace(/ /gi, '') == '')
		    {
		        alert('Enter Positive Integer Value Between 0 And 20 For: No. Of Observation')
		        document.getElementById(src).value = ""
			  document.all(src).focus()
			  document.forms(0).submit()
			return(false)
		    }
			if(isNaN(val) || val==0)
			{
			alert('Enter Positive Integer Value Between 0 And 20 For: No. Of Observation')
			document.getElementById(src).value = ""
			  document.all(src).focus()
			  document.forms(0).submit()
			return(false)
			}
		 
				 
							if(val=='-0' || val<0 || val.indexOf(".")!=-1 || val>20) 
							{
							alert('Enter Positive Integer Value Between 0 And 20 For: No. Of Observation')
							//alert(errMsg)
							document.getElementById("NoObservationTxt").value = ""
							  document.all("NoObservationTxt").focus()
							  document.forms(0).submit()
							return(false)
							}
			 			
				}
	 	
	 	
	 	}
 
 
 function VaildateDetailData(src,args)
	{
	 
		var i = 0;
		var valsub
		var RmkdSgtnVal = document.getElementById("RmkSgstnTxt").value;
		var NoObservation = document.getElementById("NoObservationTxt").value;
		var NonCOnfirmeties = document.getElementById("NonCOnfirmetiesTxt").value; 
		var flag = 0;
		var k = 0
		  if(RmkdSgtnVal!="")
		
		  {
				for(i=1; i<=RmkdSgtnVal; i++)
				{
				 alert(document.all("txt"+i+3000+i).value)
							if(document.all("txt"+i+3000+i).value!="")
							{
						
							flag=1;
							
							}					
				}
		}
		  if(NoObservation!="")
		  {  
		  
				for(i=1; i<=NoObservation; i++)
				{	 alert(document.all("txt"+i+1000+i).value)
				 
							if(document.all("txt"+i+1000+i).value!="")
							{
						
							flag=1;
							
							}					
				}
		}
		
		  if(NonCOnfirmeties!="")
		  {
				for(i=1; i<=NonCOnfirmeties; i++)
				{
				 	 alert(document.all("txt"+i+2000+i).value)
							if(document.all("txt"+i+2000+i).value!="")
							{
						
							flag=1;
							
							}					
				}
		}
		
		 
			if(flag==0)
			{   
					args.IsValid=false;
					Page_IsValid=false;
					  
			}
  }
  
  
  
 
 
 
 
 
 function  NumValidation2(src,errMsg)
		{



		    var val = document.getElementById("NonCOnfirmetiesTxt").value 
	
			if(val!='')
		{
		    document.getElementById("ExtNonCOnfirmetiesTxt").value=document.getElementById("NonCOnfirmetiesTxt").value
			if(isNaN(val) || val.replace(/ /gi, '') == '' || val<0)
			{
			val=''
			alert('Enter Positive Integer Value Greater Than Or Equal To 0 For: No. Of Audit Findings(AF)' )
			document.getElementById(src).value = ""
			document.getElementById("Control4IdText").value = ""
			document.getElementById("Control2IdText").value = ""
			  document.all(src).focus()
			  document.forms(0).submit()
			return(false)
			
			}
		 
				 
							if(val=='-0' || val=='00' || val<0 || val.indexOf(".")!=-1) 
							{
							val=''
							alert('Enter Positive Integer Value Greater Than Or Equal To 0 For: No. Of Audit Findings(AF)')
							//alert(errMsg)
							document.getElementById("NonCOnfirmetiesTxt").value = ""
							document.getElementById("Control4IdText").value = ""
							document.getElementById("Control2IdText").value = ""
							  document.all("NonCOnfirmetiesTxt").focus()
							  document.forms(0).submit()
							return(false)
							
							}
			 			
				}
	 	
//	 	else
//	 	{
////	 	    document.getElementById("Control4IdText").value=""
////				document.getElementById("Control2IdText").value=""
//                document.getElementById("NonCOnfirmetiesTxt").value=""
//                //document.getElementById("ExtNonCOnfirmetiesTxt").value
//				alert('Enter Positive Integer Value Greater Than Or Equal To 0 And Less Than Or Equal To 20 For: No. Of Audit Findings(AF)')
//					return(false)
//	 	}
	 
	 	}
	 	
  
 function  NumValidation4(Id)
		{ 
	   var TxtId = Id
	   var val
	   val = document.getElementById(TxtId + "Txt").value 
       if(val!='')
		{
		    if(isNaN(val) || val.replace(/ /gi, '') == '' || val<0)
			{
			val=''
			alert('Enter Positive Integer Value Greater Than Or Equal To Zero')
			document.getElementById(TxtId + "Txt").value = ""
			document.getElementById(TxtId + "Txt").focus()
			document.forms(0).submit()
			return(false)
			
			}
		 
				 
							if(val=='-0' || val<0 || val.indexOf(".")!=-1) 
							{
							val=''
						    alert('Enter Positive Integer Value Greater Than Or Equal To Zero')
						    document.getElementById(TxtId + "Txt").value = ""
						    document.getElementById(TxtId + "Txt").focus()
			                document.forms(0).submit()
						    return(false)
							
							}
			 			
				}
	 	
 
	 	}
 
 
 
 function ValidateObservation(src, args)
 {
 
  var cnt = 0
  var SessionVal = document.getElementById("SessionTxt").value 
  var flag = 0
  var controlId = document.getElementById("ControlIdText").value
  var Arr = new Array()
  Arr=controlId.split(",")
  if (controlId!="")
  {
  //for(cnt=0;cnt<=Arr.length-1;cnt++)
  for(cnt=Arr.length-1;cnt>=0;cnt--)
	{            	
					if(document.getElementById(Arr[cnt]).value=="")
					{
				    //alert("One Or More Observation Not Entered")
					
				 args.IsValid=false;
				 Page_IsValid=false;
				src.errormessage = "Enter Value For: Observations"
				document.getElementById(Arr[cnt]).focus()
								break;
				   }//if	
			
			} //end of for
  }
 }// End oF function
	 	
	
	function ValidateObservation2(src, args)
	{
	 
	var cnt = 0
	var SessionVal = document.getElementById("SessionTxt").value 
	var flag = 0
	var controlId = document.getElementById("Control2IdText").value
	var Arr = new Array()
	Arr=controlId.split(",")
	if (controlId!="")
		{
		
			//for(cnt=0;cnt<=Arr.length-1;cnt++)
			for(cnt=Arr.length-1;cnt>=0;cnt--)
			{
		            	
							if(document.getElementById(Arr[cnt]).value=="")
							{					
							 args.IsValid=false;
						 Page_IsValid=false;
						//src.errormessage = "Enter Value For: Audit Findings"
						 document.getElementById(Arr[cnt]).focus()
							}//if	
					
				} //end of for
		}
 }// End oF function
	 	
	 	
	 	function ValidateNonCoformeties(src, args)
	{
	 
  var cnt = 0
  var SessionVal = document.getElementById("SessionTxt").value 
  //alert("SessionVal"+SessionVal)
  var flag = 0
  var controlId = document.getElementById("Control3IdText").value
  //alert("controlId"+controlId)
 var Arr = new Array()
  Arr=controlId.split(",")
  if (controlId!="")
  {
   // for(cnt=0;cnt<=Arr.length-1;cnt++)
   for(cnt=Arr.length-1;cnt>=0;cnt--)
	{
            	
					if(document.getElementById(Arr[cnt]).value=="")
					{
				   		
					    args.IsValid=false;
						Page_IsValid=false;
						src.errormessage = "Enter Value For: No. Of Audit Finding(s)"

						document.getElementById(Arr[cnt]).focus()
				         break;
				
					}//if	
					
					
			
		} //end of for
  }
 }// End oF function
	 	
	
	
	function ValidateRmkSgstn(src, args)
	{
	 
  var cnt = 0
  var SessionVal = document.getElementById("SessionTxt").value   
  var flag = 0
  var controlId = document.getElementById("Control4IdText").value
 var Arr = new Array()
  Arr=controlId.split(",")
   if (controlId!="")
  {
   // for(cnt=0;cnt<=Arr.length-1;cnt++)
   for(cnt=Arr.length-1;cnt>=0;cnt--)
	{
            	
					if(document.getElementById(Arr[cnt]).value=="")
					{
				  
				    //alert("One Or More Recommendation / Suggestion Not Detailed")
								 
					  args.IsValid=false;
						Page_IsValid=false;
						src.errormessage = "Enter Value For: Any Recommendation(s)/Suggestion(s)"
						document.getElementById(Arr[cnt]).focus()
								break;
				
					}//if	
			
		} //end of for
  }
 }// End oF function
	 	
	

	
  
  
	 	
	 	function  NumValidation3(src,errMsg)
		{



		    var val = document.getElementById("RmkSgstnTxt").value 
		
			if(val!='')
		{
			if(isNaN(val))
			{
			alert('Enter Positive Integer Value Greater Than 0 And Less Than 20 For: No.Of Recommendation / Suggestion')
			document.getElementById(src).value = ""
			  document.all(src).focus()
			return(false)
			}
		 
				 
							if(val=='-0' || val<0 || val.indexOf(".")!=-1 || val>20) 
							{
							alert('Enter Positive Integer Value Greater Than 0 And Less Than 20 For: Recommendation / Suggestion')
							//alert(errMsg)
							document.getElementById("RmkSgstnTxt").value = ""
							  document.all("RmkSgstnTxt").focus()
							return(false)
							}
			 			
				}
	 	
	 	
	 	}
 
 
 
 
//function SetTextVal(k)
//{

//			
//			var resrblId=  "resrbl" + k
//			var DytxtId=  "Dytxt" + k

//			if (document.getElementById(resrblId +"_0").checked == true)
//			{  
//			document.all(DytxtId).value="FM"
//			}
//			if (document.getElementById(resrblId +"_1").checked == true)
//			{
//			document.all(DytxtId).value="AM"
//			}
//			if (document.getElementById(resrblId +"_2").checked == true)
//			{
//			document.all(DytxtId).value="PM"
//			}
//				if (document.getElementById(resrblId +"_3").checked == true)
//			{
//			document.all(DytxtId).value="NC"
//			}


//}

function SetTextVal(k)
{

			
			var resrblId=  "resrbl" + k
			var DytxtId=  "Dytxt" + k
var Cnt =0;
while(document.getElementById(resrblId+"_"+Cnt) != null)
{
    if(document.getElementById(resrblId+"_"+Cnt).checked==true)
    {
        document.all(DytxtId).value=document.getElementById(resrblId+"_"+Cnt).value
        if (document.getElementById(resrblId+"_"+Cnt).value == "No")
        {
        document.all(DytxtId).value=""
        }
    }
    Cnt++;
}
            
            
//			if (document.getElementById(resrblId +"_0").checked == true)
//			{  
//			document.all(DytxtId).value="FM"
//			}
//			if (document.getElementById(resrblId +"_1").checked == true)
//			{
//			document.all(DytxtId).value="AM"
//			}
//			if (document.getElementById(resrblId +"_2").checked == true)
//			{
//			document.all(DytxtId).value="PM"
//			}
//				if (document.getElementById(resrblId +"_3").checked == true)
//			{
//			document.all(DytxtId).value="NC"
//			}


}


function AutoCal(TxtId,SessionNo)
{
  
    var RbLstId
    var CriticalCnt = 0
    var MajorCnt = 0
    var MinorCnt = 0
    var RecomCnt = 0
    var Cnt =0;
    
    for(i=1;i<=SessionNo;i++)
      
    {
             RbLstId = "RbLst_" + i + (TxtId + i)
             if (document.getElementById(RbLstId +"_0").checked == true)   
             {
              CriticalCnt = (CriticalCnt+1)
             }
             else  if (document.getElementById(RbLstId +"_1").checked == true )  
             {
             MajorCnt = (MajorCnt+1)
             }
             else  if (document.getElementById(RbLstId +"_2").checked == true)   
             {
              MinorCnt = (MinorCnt+1)
             }
             else  if (document.getElementById(RbLstId +"_3").checked == true )  
             {
              RecomCnt = (RecomCnt+1)
             }
    } 
    if (document.getElementById("NonCOnfirmetiesTxt").value=="0") 
    {
    CriticalCnt =0
    MajorCnt =0
    MinorCnt =0
    RecomCnt =0
    }
    document.getElementById("CriticalTxt").value = CriticalCnt
    document.getElementById("MajorTxt").value = MajorCnt
    document.getElementById("MinorTxt").value = MinorCnt
    document.getElementById("RecomTxt").value = RecomCnt  	
}


function AutoCalNo()
{   
    var CriticalCnt =   document.getElementById("CriticalTxt").value
    var MajorCnt = document.getElementById("MajorTxt").value 
    var MinorCnt =   document.getElementById("MinorTxt").value
    var RecomCnt =  document.getElementById("RecomTxt").value
    var result =  +CriticalCnt + +MajorCnt + +MinorCnt + +RecomCnt
    if(!isNaN(result)){
           document.getElementById("SummNonConTxt").value = result
        }
      
   
} 

function FnObsRec()
{  
  if (document.getElementById("ObsRecTypRb_0").checked == true) 
  { 
    document.getElementById("NonCOnfirmetiesTr").className="";
    document.getElementById("CmmrTr").className="";
    document.getElementById("SummNonConTxt").className="";
    document.getElementById("NonCOnfirmetiesTxt").className = "HideRow"
    
    document.getElementById("CriticalTxt").className = "TxtCls"
    document.getElementById("MajorTxt").className = "TxtCls"
    document.getElementById("MinorTxt").className = "TxtCls"
    document.getElementById("RecomTxt").className = "TxtCls"
   
    document.getElementById("SummNonConTxt").value = ""
    document.getElementById("ExtNonCOnfirmetiesTxt").value = ""
    document.getElementById("NonCOnfirmetiesTxt").value = ""
    document.getElementById("CriticalTxt").value = ""
    document.getElementById("MajorTxt").value = ""
    document.getElementById("MinorTxt").value = ""
    document.getElementById("RecomTxt").value = ""
       return false
//    document.getElementById("SummNonConTxt").disabled = true
//    document.getElementById("CriticalTxt").disabled = false
//    document.getElementById("MajorTxt").disabled = false
//    document.getElementById("MinorTxt").disabled = false
//    document.getElementById("RecomTxt").disabled = false
  }
  else if (document.getElementById("ObsRecTypRb_1").checked == true) 
  {
    document.getElementById("NonCOnfirmetiesTr").className="";
    document.getElementById("CmmrTr").className="";
    document.getElementById("SummNonConTxt").className = "HideRow"
    document.getElementById("NonCOnfirmetiesTxt").className = "TxtCls"
    document.getElementById("CriticalTxt").className = ""
    document.getElementById("MajorTxt").className = ""
    document.getElementById("MinorTxt").className = ""
    document.getElementById("RecomTxt").className = ""
     
    document.getElementById("SummNonConTxt").value = ""
    document.getElementById("ExtNonCOnfirmetiesTxt").value = ""
    document.getElementById("NonCOnfirmetiesTxt").value = ""
    document.getElementById("CriticalTxt").value = ""
    document.getElementById("MajorTxt").value = ""
    document.getElementById("MinorTxt").value = ""
    document.getElementById("RecomTxt").value = ""
    return false
//    document.getElementById("NonCOnfirmetiesTxt").disabled = false
//    document.getElementById("CriticalTxt").disabled = true
//    document.getElementById("MajorTxt").disabled = true
//    document.getElementById("MinorTxt").disabled = true
//    document.getElementById("RecomTxt").disabled = true
  }
 
} 

 
	function ExpiryDateValid(src,args){
 
   var Flag= VbExpiryDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
 
//NoOfObsandFileVal function Added by P Suresh
function NoOfObsandFileAttVal(src,args){   
   args.IsValid=true;
   Page_IsValid=true;
   if(document.getElementById("NonCOnfirmetiesTxt").value=="0" || document.getElementById("ATypeTxt").value=="1" || document.getElementById("ObsRecTypRb_0").checked == true)
   {
        if(document.getElementById("DocNameLbl").innerText=="")
        {
            args.IsValid=false;
  	        Page_IsValid=false;
        }
   }
}

    </script>
 	
 	
 	<script language="vbscript">
 function VbExpiryDateValid 
      ExpDate=document.getElementById("TgtDatRspCal$CalDateVal").value
  VbExpiryDateValid=true
  if ExpDate="" then exit function
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  ExpDateAry=split(ExpDate,"/")
	  ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))
	  
	DDgap=DateDiff("d",Today,ExpDateVal)
	if DDgap<0 then
		VbExpiryDateValid=false
	 end if
 'msgbox( Today &"   " &  MfgDateVal &"    "  &DDgap)
 End function
 
  	</script>
 	<script language="javascript">
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

    
     function FnSubmitDec()
    {
        
         var RgsBaseId="<%=ViewState("RgsBaseId") %>"
       var xmlHttp;
        try 
        {    
            //FF, Opera, Safari, Chrome, IE7+
            xmlHttp = new XMLHttpRequest();  
        } 
        catch(e) 
        {    
            try 
            {      
                //IE6+
                xmlHttp  = new ActiveXObject("Microsoft.XMLHTTP");    
                
            } 
            catch(e) 
            {
                try 
                {
                    xmlHttp  = new ActiveXObject("Msxml2.XMLHTTP");
                } 
                catch(e) 
                {
                    xmlHttp  = null;
                }
            }
        }  

        if (xmlHttp!=null)
        {
            xmlHttp.onreadystatechange=function()
            {
                if(xmlHttp.readyState==4)
                {  
                    var s = xmlHttp.responseText;
                     if(s=="1")
                    {
                       document.getElementById("PrtStsLbl").innerHTML="Done"                       
                    }
                    else
                    {
                         
                         document.getElementById("PrtStsLbl").innerHTML="Pending"  
                                                  
                    }
                    
                }
                    
                
            }
        }            
        var url="PrintSts_Ajax.aspx?RgsBaseId=" + RgsBaseId ;
        xmlHttp.open("GET",url,true);
        xmlHttp.send(null);
    }
		
		var taMaxLength1 = 1500
function taLimit1() {
		
	
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount1() {
		
			 
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}		
	
    
    setTimeout("AssignOldVal()",500);
//    setTimeout("FnSubmitDec()",500);
    
     </script>
	</HTML>
