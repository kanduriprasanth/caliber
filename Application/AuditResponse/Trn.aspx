<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AuditResponse.Trn" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj2" Src="EsignObj1.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
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
	//-->
	
	function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var Transcode=$("#TranscodeTxt").val(); 
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" +Transcode;
        var SpWinObj = window.open(pageURL,'DMSPopUp',"height=600,width=800,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    
    function FnDocpopup(cnt)
    { 
        var UParam = cnt;
        var RepositoyTypeId =3;   // Repository Type.
        var SourceTypeId =7;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }
           
            function Ret_OpenDMSPopUp(DocId,DocCode,DocDesc,UParam)
            { 
              if(UParam != "undefined")
              {
                document.all("DocId_" + UParam).value=DocId ;
//                document.getElementById("DocumentIdTxt").value=DocId;
                var DocCodeArr = new Array();
                DocCodeArr = DocDesc.split("$@$");
                DocCode = DocCodeArr.join ('; ');
                if(DocCode != "")
                {
                    document.all("DocNameLbl_" + UParam).innerHTML=document.all("DocNameTxt_" + UParam).value=DocCode;
                }
                else
                {
                    document.all("DocNameLbl_" + UParam).innerHTML = DocCode    
                    document.all("DocNameTxt_" + UParam).value="0";
                }
              }
               else
               {
                document.all("RFDocId").value=DocId ;
//                document.getElementById("DocumentIdTxt").value=DocId;
                var DocCodeArr = new Array();
                DocCodeArr = DocDesc.split("$@$");
                DocCode = DocCodeArr.join ('; ');
                document.all("RFDocLbl").innerHTML=document.all("RFDocNameTxt").value=DocCode;
                  
               }             
            }
           
            function OkRet_OpenDMSPopUp(UParam)
            {
               
            }
            
	
	function FnOpenIssuePopUp(NCID,BdyId,Type,cnt,Id)
    {
        var PrsType="<%=ConfigurationManager.AppSettings.Item("PrsType")%>";
        SetPopDimensions()
        var pageURL = "../IssueLogin/IssueTypeLst.aspx?NCID=" + NCID + "&Type=" + 12 + "&BdyId=" + BdyId +"&cnt=" + cnt + "&CDDL=" + PrsType 
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    
    }
    
    function CloseWindow(WorkItem)
    {
        document.getElementById("IsuLogCnt").value="1";
      document.getElementById("sbmtbtn").click();

    }
    
 function  NumValidation4(Cnt)
		{ 
	  
	   var val=  document.getElementById("CCatTxt_" + Cnt).value 
       if(val!='')
		{
		    if(isNaN(val) || val.replace(/ /gi, '') == '' || val<0)
			{
			val=''
			alert('Enter Positive Integer Value Greater Than Or Equal To Zero')
			document.getElementById("CCatTxt_" + Cnt).value  = ""
			document.getElementById("CCatTxt_" + Cnt).focus()
			return(false)
			
			}
		 
				 
							if(val=='-0' || val<0 ||  val=='00'  || val.indexOf(".")!=-1) 
							{
							val=''
						    alert('Enter Positive Integer Value Greater Than Or Equal To Zero')
			                document.getElementById("CCatTxt_" + Cnt).value  = ""
			                document.getElementById("CCatTxt_" + Cnt).focus()
							return(false)
							
							}
			 			
				}
	 	
 
	 	}
    function FnOpenObsDetails()
    {
  
        SetPopDimensions()
        var ObsId=<%=ObsBaseId %>
        var pageURL = "AdtObservation.aspx?BId=" + ObsId
        var features = "height= 600,width= 650,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    
    }
    
	function CheckDateValid(k,flag)
	{
	    var SNO=0;
	    var ErrMsg="";
	    var Flag="";
	
                Flag=VBDateValidation(k,flag)
                if(Flag==undefined)
                {
                    Flag="";
                }
	            return Flag;
	        
	 }
	 	function Submit()
	{
	    document.getElementById("btnConfirm").click();
	}
	
	function CatCMMRVad(Cat)
    {    
    if (document.getElementById("CCatTxt_" + Cat).value == "")
    {
      return false;
    }
    var ACatVal =document.getElementById("CCatTxt_0").value 
    var BCatVal =document.getElementById("CCatTxt_1").value 
    var CCatVal =document.getElementById("CCatTxt_2").value 
    var CritCnt="<%=CriCnt%>"
    var MajorCnt="<%=MajCnt%>"
    var MinorCnt="<%=MinCnt%>"
    var RecomCnt="<%=RecCnt%>"
    var CatSum = +ACatVal + +BCatVal + +CCatVal
    var CMMRSum = +CritCnt + +MajorCnt + +MinorCnt + +RecomCnt
    var CMMRParSum =0
     
     if (ACatVal!=""){CMMRParSum = +ACatVal}
     if (BCatVal!=""){CMMRParSum = +CMMRParSum + +BCatVal}
     if (CCatVal!=""){CMMRParSum = +CMMRParSum + +CCatVal}
    
//        if (ACatVal!="" && BCatVal!="" && CCatVal!="")
//        {
//          if (CMMRParSum != CMMRSum )
//          {
             if (CMMRParSum > CMMRSum )
             {
               alert("Sum of Category Divisions is Not Equal to Sum of Critical, Major, Minor, Recommendations")
               document.getElementById("CCatTxt_" + Cat).value =""
               
               if (Cat ==0){ACatVal =""}
               else  if (Cat==1){BCatVal =""}
               else  if (Cat==2){CCatVal =""}
                            
               if (ACatVal=="" && BCatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_0").value  = CMMRSum - (+BCatVal + +CCatVal)}
               else if (BCatVal=="" && ACatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_1").value = CMMRSum - (+ACatVal + +CCatVal)}
               else if (CCatVal=="" && BCatVal!="" && ACatVal!=""){document.getElementById("CCatTxt_2").value = CMMRSum - (+BCatVal + +ACatVal)}
              }
             else if (CMMRParSum < CMMRSum || CMMRParSum == CMMRSum)
             {
                 if (ACatVal=="" && BCatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_0").value  = CMMRSum - (+BCatVal + +CCatVal)}
                 else if (BCatVal=="" && ACatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_1").value = CMMRSum - (+ACatVal + +CCatVal)}
                 else if (CCatVal=="" && BCatVal!="" && ACatVal!=""){document.getElementById("CCatTxt_2").value = CMMRSum - (+BCatVal + +ACatVal)}
                 else if (ACatVal!="" &&  BCatVal!="" && CCatVal!="")
                 {
                 alert("Sum of Category Divisions is Not Equal to Sum of Critical, Major, Minor, Recommendations")
                 document.getElementById("CCatTxt_" + Cat).value =""
                 
                   if (Cat ==0){ACatVal =""}
               else  if (Cat==1){BCatVal =""}
               else  if (Cat==2){CCatVal =""}
                            
               if (ACatVal=="" && BCatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_0").value  = CMMRSum - (+BCatVal + +CCatVal)}
               else if (BCatVal=="" && ACatVal!="" && CCatVal!=""){document.getElementById("CCatTxt_1").value = CMMRSum - (+ACatVal + +CCatVal)}
               else if (CCatVal=="" && BCatVal!="" && ACatVal!=""){document.getElementById("CCatTxt_2").value = CMMRSum - (+BCatVal + +ACatVal)}
           
                 }
             
               
             }

//          }

//      }
   }
	
    function Detach()
    {
        if(typeof(fnCallESign)!="undefined")
        {
            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit',fnCallESign)
        }
    }
//    
//    		var taMaxLength1 = 1500
//function taLimit1() {
//		
//	
//			var taObj=window.event.srcElement;
//			if (taObj.value.length==taObj.maxLength*1) return false;
//		}

//		function taCount1() {
//		
//			 
//			var taObj=window.event.srcElement;			
//			if (taObj.value.length>taMaxLength1*1){
//				taObj.value=taObj.value.substring(0,taMaxLength1*1);
//				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
//			}
//			}	

        </script>
        
        <script language="vbscript">
           function VBDateValidation(k,flag)

               StDate=document.getElementById("Cal_" & k & "_CalDateVal").value
               AcStDate="<%=AcStDate1%>"
               
                if StDate="" and AcStDate="" then exit function
                StDateAry=split(StDate,"/")
                StDateVal=dateSerial(StDateAry(2),StDateAry(0),StDateAry(1))
                
                AcStDateArr=split(AcStDate,"/")
                AcStDateVal=dateSerial(AcStDateArr(2),AcStDateArr(0),AcStDateArr(1))
                  	  
                ThisMonth = <%=ThisMonth%>
                ThisYear = <%=ThisYear%>
                ThisDay = <%=ThisDay%>
                Today=dateSerial(ThisYear,ThisMonth,ThisDay)
                
                DDgap=DateDiff("d",StDateVal,Today)
                DDgap1=DateDiff("d",StDateVal,AcStDateVal)

                if flag=2 then
                    if DDgap>0 then
                        VBDateValidation="1"
                    end if
                else
                    if DDgap<0 or DDgap1<0 then
                        VBDateValidation="2"
                    end if
                end if
              
          end function
        </script>
        
        
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server" autocomplete=off>
			<asp:table id="tt" CELLPADDING="0" CELLSPACING="0" BorderWidth="3" HorizontalAlign="center"
				cssclass="MainTable" WIDTH="100%" runat="server">
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
								<asp:TableCell CssClass="MainTD" ID="ResPonseTd" Width="30%">Audit Observation Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD"  >
									<asp:Label id="ResponseTxt" runat="server" onclick="FnOpenObsDetails()" style="cursor:hand" ForeColor="blue"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
									<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ObserVationTd" Width="30%" >Audit Header Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="ObserVationTxt" runat="server"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							
								<asp:TableRow CssClass="HideRow">
								<asp:TableCell CssClass="SubHeadTd" ID="HeaderTd" Width="30%" ColumnSpan="2">Header Information</asp:TableCell>
							</asp:TableRow>
							
							
							
							<asp:TableRow id="HdrDtlTr" CssClass="HideRow">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="HdrDtlTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow  CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="CodeTd" Width="30%">Audit Response Code</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CodeTxt"  runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px" AccessKey="C" TabIndex=2 ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="AdtTypeRw" >
								<asp:TableCell CssClass="MainTD" ID="ATypeTd"  Width="30%">Audit Type</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ATypeTdVal">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AdtDescTd" Width="30%" >Audit Description</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="AdtDescLbl"  runat="server"  ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<%--Audit Scope ---START--%>							
							<asp:TableRow ID="ScopeTr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeTd" Width="30%">Audit Scope</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeValTd">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="ScopeMETr" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ScopeMETd" Width="20%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="ScopeMEValTd">
								</asp:TableCell>
							</asp:TableRow>
							<%--Audit Scope ---End--%>							
							
						    <asp:TableRow ID="RegRw" CssClass="HideRow">
                                <asp:TableCell ID="RegTd" CssClass="MainTD">Audit Agency / Customer</asp:TableCell>
                                <asp:TableCell ID="RegNameTd" CssClass="MainTD"></asp:TableCell>
                            </asp:TableRow>
                            
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="DeptTD" Width="30%" >Department/Site</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="DeptLbl"  runat="server"  ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="ProcessTD" Width="30%" >Audit Area</asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:Label id="ProcLbl"  runat="server"  ></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="VendRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="VenTd" Width="30%">Vendor</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="VendValTd">
								</asp:TableCell>
							</asp:TableRow>
														
							<asp:TableRow ID="ItemRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="ItemTd" Width="30%">Item(s)</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="PrdValTd">
								</asp:TableCell>
							</asp:TableRow>
														
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="StDateTD" Width="30%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="StDTD">								   
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="EtDateTd" Width="30%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="EndTD">
								  
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccStDateTd" Width="30%">Actual Start Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccStDateText">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateTd" Width="30%">Actual End Date</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="AccEtDateText">
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow >
								<asp:TableCell CssClass="MainTD" ID="DescTd"  Width="30%"></asp:TableCell>
								<asp:TableCell CssClass="MainTD" >
									<asp:TextBox id="DescTxt" runat="server" CssClass="HideRow" MaxLength="250" Width="200px" AccessKey="D"  TabIndex=1></asp:TextBox>
										<asp:Label id="TgtDateTxt"  runat="server"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<%--added--%>
							<asp:TableRow >
								<asp:TableCell CssClass="MainTD" ID="ObsRecTypTd"  Width="30%">Observations Recording Type</asp:TableCell>
									<asp:TableCell CssClass="MainTD" ID="ObsRecTypValTd">
								    <asp:Label ID="ObsRecTypLbl" runat="server" CssClass="LblCls"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							<%--added--%>
													
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="FileAttTd" Width="30%">File Attachments(If Any)</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="FileAttValTd">
								    <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow>
								<asp:TableCell CssClass="MainTD" ID="TotAdtObsTd" Width="30%">Total Audit Observations</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="TotAdtObsValTd">
								    <asp:Label ID="TotAdtObsLbl" runat="server" CssClass="LblCls"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="ObsTypeCntTr">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ObsTypeCntTab">
                                </asp:Table>
                            </asp:TableCell>
                            </asp:TableRow>
							
							<asp:TableRow id="RmkSgstnTr">
								<asp:TableCell CssClass="SubHeadTd" ID="RmkSgstnTd" ColumnSpan="2"></asp:TableCell>
							</asp:TableRow>
							
								<asp:TableRow id="LotInfo2Tr">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfo2Tab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
					 <%--      <asp:TableRow id="NoteTr" CssClass="MainTd">
								        <asp:TableCell CssClass="MainTD" ID="NoteTD" ColumnSpan="6"></asp:TableCell>
							          </asp:TableRow>--%>
												
								<%--added--%>				
							<asp:TableRow>
							   <asp:TableCell columnspan=4>
							       <asp:Table ID="HeaderTab" runat="server" HorizontalAlign="center" BorderWidth="0"  CellPadding="0" CellSpacing="1" Width="100%">
							           <asp:TableRow id="NoteTr" CssClass="MainTd">
								        <asp:TableCell CssClass="MainTD" ID="NoteTD" ColumnSpan="6"></asp:TableCell>
							          </asp:TableRow>
							         <%-- <asp:Table id="SumFATab" runat="server" cssclass="SubTable" width="100%"></asp:table>--%>
							          <%--<asp:TableRow id="CategoryTr" CssClass="HideRow">--%>
							    
							         <%-- </asp:TableRow>--%>
                                    </asp:Table>
                               </asp:TableCell>
							 </asp:TableRow>
						<%--added--%>
																				
							<asp:TableRow id="AdtObsTr">
								<asp:TableCell CssClass="SubHeadTd" ID="AdtObsTd" Font-Bold=true ColumnSpan="2"></asp:TableCell>
							</asp:TableRow>
							
								<asp:TableRow id="LotInfoTr">								
								<asp:TableCell ID="LotInfoTd" CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfoTab" runat="server" cssclass="SubTable" width="100%"></asp:table>
									<asp:textbox id="TxtIdTxt"  runat="server" CssClass="HideRow"></asp:textbox>
										<asp:textbox id="TxtId1Txt"  runat="server" CssClass="HideRow"></asp:textbox>
							<asp:textbox id="TxtCnageTxt" cssclass="hiderow" autopostback=true  runat="server"></asp:textbox>
							</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="LotInfo1Tr">								
								<asp:TableCell CssClass="MainTD" columnspan=2>
									<asp:Table id="LotInfo1Tab" runat="server" cssclass="SubTable" width="100%"></asp:table>
								</asp:TableCell>
							</asp:TableRow>
							
								<%--added--%>
							 <asp:TableRow ID="OvrAllRspFATr">
								<asp:TableCell CssClass="MainTD" ID="OvrAllRspFATd" Width="30%">File Attachments</asp:TableCell>
								<asp:TableCell CssClass="MainTD" ID="OvrAllRspFAValTd">
								    <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP' style="height: 20px">
 								<asp:Label ID="RFDocLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="RFDocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="RFDocNameTxt" runat="server" CssClass="hiderow"></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>  
								<%--added--%>
						
						    	<asp:TableRow id="CommentsTr" CssClass="HideROw">
								<asp:TableCell CssClass="MainTD" ID="CommentsTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="CommentsTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="C" TextMode="MultiLine" ></asp:TextBox>
								</asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow id="RsnRw" CssClass="HideRow">
								<asp:TableCell CssClass="MainTD" ID="RsnTd"></asp:TableCell>
								<asp:TableCell CssClass="MainTD">
									<asp:TextBox id="RsnTxt" runat="server" onkeypress="taLimit()" onkeyup="taCount()" CssClass="TxtCls"  MaxLength="250" Width="200px" AccessKey="C" TextMode="MultiLine" ></asp:TextBox>
									
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
							   <asp:TableRow ID="TableRow2" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                    padding-bottom: 0px">
                    <uc1:EsignObj2 ID="EsignObj2" runat="server" Visible="false">
                    </uc1:EsignObj2>
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
							<asp:TableRow>
								<asp:TableCell ID="BtnCnfirmTd">
									<asp:Button id="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'" Class='HideRow'
										accessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70"></asp:Button>
										<input type=button runat="server" id="sbbtn" disabled=disabled  onMouseOver="this.className='ButOCls'" Class='ButCls'
										accessKey="C" onMouseOut="this.className='ButCls'" value="Submit" Width="70" />
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
					    <asp:TextBox ID="TranscodeTxt" runat="server"></asp:TextBox>  
						<asp:ValidationSummary id="ValidationSummary1" runat="server" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary>
						<asp:TextBox ID="DocumentIdTxt" runat="server"></asp:TextBox>		
						<asp:Button ID="sbmtbtn" runat="server" CausesValidation=false  />
						<asp:TextBox ID="CntTxt" runat="server" ></asp:TextBox>
						<asp:TextBox ID="SNOTxt" runat="server"></asp:TextBox>
						<asp:TextBox ID="IsuLogCnt" runat="server"></asp:TextBox>
						<asp:TextBox ID="DocIdTxt" runat="server" CssClass="hiderow"></asp:TextBox>       
                        <asp:TextBox ID="DocNameTxt" runat="server" CssClass="hiderow"></asp:TextBox>     
                        <asp:TextBox ID="TotAdtObsTxt" runat="server" CssClass="hiderow"></asp:TextBox>    
                        <asp:TextBox ID="ObsCategoriesTxt" runat="server" CssClass="hiderow"></asp:TextBox> 
					</asp:TableCell>
				    <asp:TableCell>
                             <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                    </asp:TableCell>
				</asp:TableRow>
			</asp:table>
		</form>
		
	</body>
	
	<script language=javascript>
<!--

function FunctionCallEsing(k,RecCnt,btnAct)
{   
        var Value=""
        var ErrMsg=""
        var obj=""
        var feild=""
        var Flag="";
      if(document.getElementById("ObsRecTypLbl").innerText == "Summary")
                 {  
                 if (document.getElementById("CCatTxt_0").value =="")
                 {
                     ErrMsg += "Enter Value for : A Category" + "\n"
                 }
                      if (document.getElementById("CCatTxt_1").value =="")
                 {
                     ErrMsg += "Enter Value for : B Category" + "\n"
                 }
                      if (document.getElementById("CCatTxt_2").value =="")
                 {
                     ErrMsg += "Enter Value for : C Category" + "\n"
                 }
                  if(ErrMsg !="")
                        {
                           ErrMsg = ErrMsg.substring(0,ErrMsg.length-1)
                           alert(ErrMsg);
                           return(false);
                        }
                 fnCallESign(1,k,RecCnt,btnAct,Value)
      }
      else
      {
                  if(document.getElementById("resrbl" + k + '_2').checked==true)
                        {
                            if(document.getElementById("Cal_" + k + "_CalDateVal").value=="")
                            {
                                ErrMsg += "Select Value for : Target Date" + "\n"
                            }
                            else
                            {     
                               Flag=CheckDateValid(k,2);
                            }
                            if(Flag!="")
                            {
                                ErrMsg += "Target Date Must Be Greater Than Or Equal To Current Date" + "\n -"
                            }
                        }
                        
                         if(document.getElementById("resrbl" + k + '_0').checked==true)
                        {
                            if(document.getElementById("Cal_" + k + "_CalDateVal").value=="")
                            {
                                ErrMsg += "Select Value for : Date of Completion" + "\n"
                            }
                            else
                            {     
                               Flag=CheckDateValid(k,0);
                            }       
                            
                            if(Flag!="")
                            {
                                ErrMsg += "Date of Completion must be less than or equal to Current Date and Audit Actual Start Date" + "\n -"
                            }
                        }
                        
                        //// Comment for FKABI 
                        
                        if(document.getElementById("resrbl" + k + '_2').checked==true)
                        {
                            if(document.getElementById("Tds_" + k).innerHTML=="")   
                            {
                                ErrMsg += "Select Issue Login" + "\n"
                            } 

                             //obj = document.getElementById("CmntsTxt_" + k);
//                             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
//                             feild = obj.value
//                    
//                            if (feild.length == 0) {
//                               ErrMsg += "Enter Value for : Comments" + "\n"
//                            }
                        }
                    
                        if(document.getElementById("resrbl" + k + '_1').checked==true)
                        {
                        
                             obj = document.getElementById("CnmtActTxt_" + k);
                             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
                             feild = obj.value
                    
                            if (feild.length == 0) {
                                ErrMsg+= "Enter Value For : Containment Action" + "\n"
                            }
                         }
                        
                        if(document.getElementById("resrbl" + k + '_0').checked==true)
                        {   
                        
                             obj = document.getElementById("JustTxt_" + k);
                             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
                             feild = obj.value

                            if (feild.length == 0) {
                            ErrMsg+= "Enter Value For : Justification/Root Cause Analysis" + "\n"
                            }
                            
                             obj = document.getElementById("CorTxt_" + k);
                             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
                             feild = obj.value
                    
                            if (feild.length == 0) {
                            ErrMsg+= "Enter Value For : Corrective Action" + "\n"
                            }
                            
                             obj = document.getElementById("PreTxt_" + k);
                             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
                             feild = obj.value
                    
                            if (feild.length == 0) {
                            ErrMsg+= "Enter Value For : Preventive Action" + "\n"
                            }
                    
                        }
                        
                        if(document.getElementById("resrbl" + k + '_0').checked==false && document.getElementById("resrbl" + k + '_1').checked==false && document.getElementById("resrbl" + k + '_2').checked==false)
                        {
                            ErrMsg += "Select Value For : Response Category" + "\n"
                        }
                        
                        if(ErrMsg !="")
                        {
                           ErrMsg = ErrMsg.substring(0,ErrMsg.length-1)
                           alert(ErrMsg);
                           return(false);
                        }
                             
                        else if(document.getElementById("resrbl" + k + '_0').checked==true)
                        {
                            Value=document.getElementById("resrbl" + k + '_0').value
                           
                        }
                        else if(document.getElementById("resrbl" + k + '_1').checked==true)
                        {
                           Value=document.getElementById("resrbl" + k + '_1').value
                        }
                        else if(document.getElementById("resrbl" + k + '_2').checked==true)
                        {
                           Value=document.getElementById("resrbl" + k + '_2').value
                        }       
                        else
                        {
                            alert('Select Value For : Response Category')
                            return(false);
                        }
                        
                          fnCallESign(1,k,RecCnt,btnAct,Value) 
      }    
}
    function fnCallAjax(k,RecCnt,btnAct,Value)
    {   

            var Value = Value
            var url="ResponseClsAjax.aspx?btnAct=" + btnAct
            var PlanXmlRow = "<XmlDS>";
            
            PlanXmlRow += "<DataTable>";
             PlanXmlRow += "<ObsId>" + " <![CDATA[" + <%=ObsBaseId%> + "]]> " + "</ObsId>";
            if(document.getElementById("ObsRecTypLbl").innerText == "Summary")
            {
            var RspCatCntStr = document.getElementById("CCatTxt_0").value + "#*#" + document.getElementById("CCatTxt_1").value + "#*#" + document.getElementById("CCatTxt_2").value;
            var DocIds = document.getElementById("DocId_0").value + "#*#" + document.getElementById("DocId_1").value + "#*#" + document.getElementById("DocId_2").value;
            var DocNameStr = document.getElementById("DocNameTxt_0").value + "#*#" + document.getElementById("DocNameTxt_1").value + "#*#" + document.getElementById("DocNameTxt_2").value;
      
            PlanXmlRow += "<ObsData>" + " <![CDATA[" + "--" + "]]> " +  "</ObsData>";
            PlanXmlRow += "<JustData>" + " <![CDATA[" + "" + "]]> " +  "</JustData>";
            PlanXmlRow += "<IsuCmntsData>" + " <![CDATA[" + "" + "]]> " +  "</IsuCmntsData>";
            PlanXmlRow += "<CrctData>" + " <![CDATA[" + "" + "]]> " +  "</CrctData>";
            PlanXmlRow += "<PreData>" + " <![CDATA[" + "" + "]]> " +  "</PreData>";
            PlanXmlRow += "<CnmtData>" + " <![CDATA[" + "" + "]]> " + "</CnmtData>";
            PlanXmlRow += "<ObsDate>" + " <![CDATA[" + "1/1/1900" + "]]> " +  "</ObsDate>";
            PlanXmlRow += "<RspCategory>" + " <![CDATA[" + "" + "]]> " +  "</RspCategory>";
            PlanXmlRow += "<Cnt>" + " <![CDATA[" + 1 + "]]> " + "</Cnt>";
            PlanXmlRow += "<ChldBId>" + " <![CDATA[" + document.getElementById("ChldBId_" +k).value + "]]> " +  "</ChldBId>";
            PlanXmlRow += "<NcsId>" + " <![CDATA[" + document.getElementById("NcsTxt_" +k).value + "]]> " +  "</NcsId>";
            PlanXmlRow += "<DocIds>" + " <![CDATA[" +  DocIds + "]]> " +  "</DocIds>";
            PlanXmlRow += "<DocCodes>" + " <![CDATA[" + DocNameStr + "]]> " +  "</DocCodes>";
            PlanXmlRow += "<TransType>" + " <![CDATA[" + <%=ViewState("TransType")%> + "]]> " +  "</TransType>";
            PlanXmlRow += "<TotalObsCnt>" + " <![CDATA[" + <%=TotalObsCnt%> + "]]> " +  "</TotalObsCnt>";
            PlanXmlRow += "<Category>" + " <![CDATA[" + 0 + "]]> " + "</Category>";
            PlanXmlRow += "<RspCatCntStr>" + " <![CDATA[" + RspCatCntStr + "]]> " + "</RspCatCntStr>";
      
            }
            else
            {
            if (Value != "")
            {
                document.getElementById("resrbltxt" + k).value=Value;            
            }
            PlanXmlRow += "<ObsData>" + " <![CDATA[" + document.getElementById("Dytxt" + k).value + "]]> " +  "</ObsData>";
            PlanXmlRow += "<JustData>" + " <![CDATA[" + document.getElementById("JustTxt_" + k).value + "]]> " +  "</JustData>";
            PlanXmlRow += "<IsuCmntsData>" + " <![CDATA[" + document.getElementById("IsuTD_" + k).innerHTML + "]]> " +  "</IsuCmntsData>";
            PlanXmlRow += "<CrctData>" + " <![CDATA[" + document.getElementById("CorTxt_" + k).value + "]]> " +  "</CrctData>";
            PlanXmlRow += "<PreData>" + " <![CDATA[" + document.getElementById("PreTxt_" + k).value + "]]> " +  "</PreData>";
            PlanXmlRow += "<CnmtData>" + " <![CDATA[" + document.getElementById("CnmtActTxt_" + k).value + "]]> " + "</CnmtData>";
            PlanXmlRow += "<ObsDate>" + " <![CDATA[" + document.getElementById("Cal_" + k + "$CalDateVal").value + "]]> " +  "</ObsDate>";
            PlanXmlRow += "<RspCategory>" + " <![CDATA[" + Value + "]]> " +  "</RspCategory>";
            PlanXmlRow += "<Cnt>" + " <![CDATA[" + RecCnt + "]]> " + "</Cnt>";
            PlanXmlRow += "<ChldBId>" + " <![CDATA[" + document.getElementById("ChldBId_" +k).value + "]]> " +  "</ChldBId>";
            PlanXmlRow += "<NcsId>" + " <![CDATA[" + document.getElementById("NcsTxt_" +k).value + "]]> " +  "</NcsId>";
            PlanXmlRow += "<DocIds>" + " <![CDATA[" + document.getElementById("DocId_" + (RecCnt-1)).value + "]]> " +  "</DocIds>";
            PlanXmlRow += "<DocCodes>" + " <![CDATA[" + document.getElementById("DocNameTxt_" + (RecCnt-1)).value + "]]> " +  "</DocCodes>";
            PlanXmlRow += "<TransType>" + " <![CDATA[" + <%=ViewState("TransType")%> + "]]> " +  "</TransType>";
            PlanXmlRow += "<TotalObsCnt>" + " <![CDATA[" + <%=TotalObsCnt%> + "]]> " +  "</TotalObsCnt>";
            PlanXmlRow += "<Category>" + " <![CDATA[" + document.getElementById("Category_" + (RecCnt-1)).value + "]]> " + "</Category>";
            PlanXmlRow += "<RspCatCntStr>" + " <![CDATA[" + RspCatCntStr + "]]> " + "</RspCatCntStr>";
      
            }
           PlanXmlRow += "</DataTable>";
           PlanXmlRow += "</XmlDS>";
                
            
            
        
        if (window.XMLHttpRequest)
        { 
            reqXML = new XMLHttpRequest(); 
        }
        else if(window.ActiveXObject)
        {
            reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
        }

        if (reqXML)
        {
            reqXML.open("POST", url, true);
            reqXML.setRequestHeader("Content-Type", "text/xml");
            reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + PlanXmlRow);
            
            reqXML.onreadystatechange=function()
            {
                if(reqXML.readyState==4)
                {  
                    var s = reqXML.responseText;
                    if(s=="1")
                    {                      
                       alert('Returned')             
                    }
                    else if(s=="2")
                    {
                       alert('Confirmed') 
                     if(document.getElementById("ObsRecTypLbl").innerText != "Summary")
                       {
                       document.getElementById("BtnTxt_" + k).value="1"
                       document.getElementById("Dytxt" + k).disabled=true;
                       document.getElementById("resrbl" + k).disabled=true;
                       document.getElementById("CnfBtn_" + k).disabled=true;
                       document.getElementById("JustTxt_" + k).disabled=true;
                       //document.getElementById("CmntsTxt_" + k).disabled=true;     
                       document.getElementById("CorTxt_" + k).disabled=true;
                       document.getElementById("PreTxt_" + k).disabled=true;
                       document.getElementById("CnmtActTxt_" + k).disabled=true;      
                       document.getElementById("Poup_" + (RecCnt-1)).className="HideRow"
                       document.getElementById("Poup_" + (RecCnt-1)).style.borderColor="white"
                       document.getElementById("Poup_" + (RecCnt-1)).style.borderWidth="0px"
                       document.getElementById("IsuLogCnt").value="";
                       
                       var obj=document.getElementById("CalTr_" + k).getElementsByTagName("input")
                        for(i=0; i<obj.length;i++)
                        {
                            if(obj[i].type=='button')
                            {
                                obj[i].disabled=true
                            }
                        }
                       
                       if (document.getElementById("DocNameTxt_" + (RecCnt-1)).value == "0")
                         { document.getElementById("DocNameLbl_" + (RecCnt-1)).innerHTML ="N/A" }
      
//                       Form1.submit();
                       var AllCompleted =true;
                       for(var i=0;i<<%=TotalObsCnt%>;i++)
                       {
                          if(document.getElementById("BtnTxt_" + (i+1)+(i+1)).value=="0")
                          {
                            AllCompleted=false;
                            break ;
                          }
                       } 
                       
                       if(AllCompleted==true)
                       {
                            document.getElementById("sbbtn").className="HideRow";
                            document.getElementById("btnconfirm").className="ButCls";
                       }
                      }
                      else
                      {
                      
                           
                        for(i=0; i<=2;i++)
                        {
                         document.getElementById("CCatTxt_" + i).disabled=true;
                         document.getElementById("Poup_" + i).className="HideRow"
                         document.getElementById("Poup_" + i).style.borderColor="white"
                         document.getElementById("Poup_" + i).style.borderWidth="0px"
                         if (document.getElementById("DocNameTxt_" + i).value == "0")
                         { document.getElementById("DocNameLbl_" + i).innerHTML ="N/A" }
                                           
                        }
                       document.getElementById("CnfBtn_" + k).disabled=true;                   
                       document.getElementById("sbbtn").className="HideRow";
                       document.getElementById("btnconfirm").className="ButCls";
                       document.getElementById("btnconfirm").disabled=false;
                     }
                       
                       
                    }
                    else
                    {
                       alert('Failed')
                    }
                    
                }
                   
            }
        }            
        //var url="ResponseClsAjax.aspx?ObsId=" + <%=ObsBaseId%> + "&ObsData='" + document.getElementById("Dytxt" + k).value + "'&ObsDate='" + document.getElementById("Cal_" + k + "$CalDateVal").value + "'&RspCategory=" + Value + "&Cnt=" + RecCnt + "&btnAct=" + btnAct + "&ChldBId=" + document.getElementById("ChldBId_" +k).value + "&NcsId=" + document.getElementById("NcsTxt_" +k).value;
//        xmlHttp.open("GET",url,true);
//        xmlHttp.send(null);
         else
            {
             alert("Your browser does not support Ajax");
            }
    }
 
  function RestetValue()
  {
        if(document.getElementById("CntTxt").value!="")
        {
            for(var k=0; k<document.getElementById("CntTxt").value; k++)
            {
                if (document.getElementById("resrbl" + (k+1) + (k+1) +"_0").checked == true)
                {
                    document.getElementById("CatLbl" + (k+1) + (k+1)).innerHTML="(Action taken, shall be closed.)"
                    if (document.getElementById("Tds_" + (k+1) + (k+1)).innerText!="")   
                    {
                        alert('Already C category is selected and Issue is registered');
                        document.getElementById("resrbl" + (k+1) + (k+1) +"_2").checked=true;
                        document.getElementById("CalTr_" + (k+1) + (k+1)).className=""
                        document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateVal").value="";
                        document.getElementById("Lbl_" + (k+1) + (k+1)).innerHTML="Target Date"
                        document.getElementById("Tr_" + (k+1) + (k+1)).className=""          
                        //document.getElementById("CmntsTr_" + (k+1) + (k+1)).className=""       
                        
                        document.getElementById("JusTr_" + (k+1) + (k+1)).className="HideRow"
                        document.getElementById("CorTr_" + (k+1) + (k+1)).className="HideRow"
                        document.getElementById("PreTr_" + (k+1) + (k+1)).className="HideRow"
                        //			document.getElementById("CalTd_" + k).colSpan="1"
                        //			document.getElementById("Td_" + k).colSpan="1"
                        //			document.getElementById("SubTd_" + k).colSpan="1"
                        document.getElementById("resrbltxt" + (k+1) + (k+1)).value="C"
                                        
                     }
                        document.getElementById("CalTr_" + (k+1) + (k+1)).className=""
//                        document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateVal").value="";
                        document.getElementById("Lbl_" + (k+1) + (k+1)).innerHTML="Date of Completion"
                        document.getElementById("JustLbl_" + (k+1) + (k+1)).innerHTML="Justification/Root Cause Analysis"
                        document.getElementById("Tr_" + (k+1) + (k+1)).className="HideRow"      
                        //document.getElementById("CmntsTr_" + (k+1) + (k+1)).className="HideRow"     
                        document.getElementById("CnmtActTr_" + (k+1) + (k+1)).className="HideRow"             
                        document.getElementById("JusTr_" + (k+1) + (k+1)).className=""
                        document.getElementById("CorTr_" + (k+1) + (k+1)).className=""
                        document.getElementById("PreTr_" + (k+1) + (k+1)).className=""
                        //			
                        //			document.getElementById("SubTd_" + k).colSpan="4"
                        document.getElementById("resrbltxt" + (k+1) + (k+1)).value="A"
                        
                         if (document.getElementById("Cal_" + (k+1) + (k+1) + "_CalDateVal").value=="")
                        {
                            document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateDisplay").value="";
                        }
                 }
                      
                    if (document.getElementById("resrbl" + (k+1) + (k+1) +"_1").checked == true)
			        {
			//document.all(DytxtId).value="B"
			            document.getElementById("CatLbl" + (k+1) + (k+1)).innerHTML="(No CAPA Required, Justification provided.)"
                        if (document.getElementById("Tds_" + (k+1) + (k+1)).innerText!="")   
                        {
                            
                            document.getElementById("resrbl" + (k+1) + (k+1) +"_2").checked=true;
                            document.getElementById("CalTr_" + (k+1) + (k+1)).className=""
                            document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateVal").value="";
                            document.getElementById("Lbl_" + (k+1) + (k+1)).innerHTML="Target Date"
                            document.getElementById("Tr_" + (k+1) + (k+1)).className=""               
                            document.getElementById("CmntsTr_" + (k+1) + (k+1)).className="HideRow"    
                            document.getElementById("JusTr_" + (k+1) + (k+1)).className="HideRow"
                            document.getElementById("CorTr_" + (k+1) + (k+1)).className="HideRow"
                            document.getElementById("PreTr_" + (k+1) + (k+1)).className="HideRow"
                        //			document.getElementById("CalTd_" + k).colSpan="1"
                        //			document.getElementById("Td_" + k).colSpan="1"
                        //			document.getElementById("SubTd_" + k).colSpan="1"
                            document.getElementById("resrbltxt" + (k+1) + (k+1)).value="C"
                          
                        }
		                document.getElementById("CalTr_" + (k+1) + (k+1)).className="HideRow"
//		                document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateVal").value="";
		                document.getElementById("Tr_" + (k+1) + (k+1)).className="HideRow"        
		                
		                //document.getElementById("CmntsTr_" + (k+1) + (k+1)).className="HideRow"       
		                document.getElementById("CnmtActTr_" + (k+1) + (k+1)).className=""                       
		                document.getElementById("JusTr_" + (k+1) + (k+1)).className="HideRow"
//		                document.getElementById("JustLbl_" + (k+1) + (k+1)).innerHTML="Containment Action"
		                document.getElementById("CorTr_" + (k+1) + (k+1)).className="HideRow"
		                document.getElementById("PreTr_" + (k+1) + (k+1)).className="HideRow"
            //			document.getElementById("CalTd_" + k).colSpan="2"
            //			document.getElementById("SubTd_" + k).colSpan="1"
		                document.getElementById("resrbltxt" + (k+1) + (k+1)).value="B"
		                
		                 if (document.getElementById("Cal_" + (k+1) + (k+1) + "_CalDateVal").value=="")
                        {
                            document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateDisplay").value="";
                        }
		
			        }
			        
			        if (document.getElementById("resrbl" + (k+1) + (k+1) +"_2").checked == true)
			        {
		                //document.all(DytxtId).value="C"
		                document.getElementById("CatLbl" + (k+1) + (k+1)).innerHTML="(Action to be taken, target date(with internal CAPA).)"
		                document.getElementById("CalTr_" + (k+1) + (k+1)).className=""
//		                document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateVal").value="";
		                document.getElementById("Lbl_" + (k+1) + (k+1)).innerHTML="Target Date"
		                document.getElementById("Tr_" + (k+1) + (k+1)).className=""              
		                //document.getElementById("CmntsTr_" + (k+1) + (k+1)).className=""            
		                
		                document.getElementById("JusTr_" + (k+1) + (k+1)).className="HideRow"
		                document.getElementById("CorTr_" + (k+1) + (k+1)).className="HideRow"
		                document.getElementById("PreTr_" + (k+1) + (k+1)).className="HideRow"
		                document.getElementById("CnmtActTr_" + (k+1) + (k+1)).className="HideRow"              
            //			document.getElementById("CalTd_" + k).colSpan="1"
            //			document.getElementById("Td_" + k).colSpan="1"
            //			document.getElementById("SubTd_" + k).colSpan="1"
		                document.getElementById("resrbltxt" + (k+1) + (k+1)).value="C"
		                
		                 if (document.getElementById("Cal_" + (k+1) + (k+1) + "_CalDateVal").value=="")
                        {
                            document.getElementById("Cal_" + (k+1) + (k+1) + "$CalDateDisplay").value="";
                        }
        		
			        }
			        
                 }
             }
        }

    
function SetTextVal(k)
{
	
			var resrblId=  "resrbl" + k
			var DytxtId=  "Dytxt" + k
	
			if (document.getElementById(resrblId +"_0").checked == true)
			{  
			//document.all(DytxtId).value="A"
			document.getElementById("CatLbl" + k).innerHTML="(Action taken, shall be closed.)"
			if (document.getElementById("Tds_" + k).innerText!="")
			{
			    alert('Already C category is selected and Issue is registered');
			    document.getElementById(resrblId +"_2").checked=true;
			    document.getElementById("CalTr_" + k).className=""
			    document.getElementById("Cal_" + k + "_CalDateVal").value="";
			    document.getElementById("Cal_" + k + "$CalDateDisplay").value=""
			    document.getElementById("Lbl_" + k).innerHTML="Target Date"
			    document.getElementById("Tr_" + k).className=""
			    document.getElementById("JusTr_" + k).className="HideRow"
			    document.getElementById("CorTr_" + k).className="HideRow"
			    document.getElementById("PreTr_" + k).className="HideRow"
//              document.getElementById("CalTd_" + k).colSpan="1"
//   		    document.getElementById("Td_" + k).colSpan="1"
//              document.getElementById("SubTd_" + k).colSpan="1"
			    document.getElementById("resrbltxt" + k).value="C"
			    document.getElementById("JustTxt_" + k).value=""
              document.getElementById("CorTxt_" + k).value=""
              document.getElementById("PreTxt_" + k).value=""
			    return(false);
			}
			document.getElementById("CalTr_" + k).className=""
			document.getElementById("Lbl_" + k).innerHTML="Date of Completion"
//			document.getElementById("JustLbl_" + k).innerHTML="Justification/Root Cause Analysis"
			document.getElementById("Tr_" + k).className="HideRow"
			document.getElementById("JusTr_" + k).className=""
			document.getElementById("CorTr_" + k).className=""
			document.getElementById("PreTr_" + k).className=""
			//document.getElementById("CmntsTr_" + k).className="HideRow"        
			document.getElementById("CnmtActTr_" + k).className="HideRow"       
		
//			document.getElementById("SubTd_" + k).colSpan="4"
			document.getElementById("resrbltxt" + k).value="A"
			document.getElementById("JustTxt_" + k).value=""
            document.getElementById("CorTxt_" + k).value=""
            document.getElementById("PreTxt_" + k).value=""
            document.getElementById("CnmtActTxt_" + k).value=""
            //document.getElementById("CmntsTxt_" + k).value=""
            document.getElementById("Cal_" + k + "_CalDateVal").value=""
			document.getElementById("Cal_" + k + "$CalDateDisplay").value=""
			}
			
		    if (document.getElementById(resrblId +"_1").checked == true)
			{
			//document.all(DytxtId).value="B"
			document.getElementById("CatLbl" + k).innerHTML="(No CAPA Required, Justification provided.)"
			if (document.getElementById("Tds_" + k).innerText!="")
			{
			    alert('Already C category is selected and Issue is registered');
			    document.getElementById(resrblId +"_2").checked=true;
			    document.getElementById("CalTr_" + k).className=""
			    document.getElementById("Lbl_" + k).innerHTML="Target Date"
			    document.getElementById("Tr_" + k).className=""
			    document.getElementById("JusTr_" + k).className="HideRow"
			    document.getElementById("CorTr_" + k).className="HideRow"
			    document.getElementById("PreTr_" + k).className="HideRow"
//              document.getElementById("CalTd_" + k).colSpan="1"
//              document.getElementById("Td_" + k).colSpan="1"
//              document.getElementById("SubTd_" + k).colSpan="1"
			    document.getElementById("resrbltxt" + k).value="C"
			    document.getElementById("JustTxt_" + k).value=""
              document.getElementById("CorTxt_" + k).value=""
              document.getElementById("PreTxt_" + k).value=""
              document.getElementById("Cal_" + k + "_CalDateVal").value=""
              document.getElementById("Cal_" + k + "$CalDateDisplay").value=""
			    return(false);
			}
			document.getElementById("CalTr_" + k).className="HideRow"
			document.getElementById("CnmtActTr_" + k).className=""
			document.getElementById("Tr_" + k).className="HideRow"			              
			document.getElementById("JusTr_" + k).className="HideRow"
			//document.getElementById("CmntsTr_" + k).className="HideRow"         
//			document.getElementById("JustLbl_" + k).innerHTML="Containment Action"
			document.getElementById("CorTr_" + k).className="HideRow"
			document.getElementById("PreTr_" + k).className="HideRow"
//			document.getElementById("CalTd_" + k).colSpan="2"
//			document.getElementById("SubTd_" + k).colSpan="1"
			document.getElementById("resrbltxt" + k).value="B"
			document.getElementById("JustTxt_" + k).value=""
            document.getElementById("CorTxt_" + k).value=""
            document.getElementById("PreTxt_" + k).value=""
            document.getElementById("CnmtActTxt_" + k).value=""
            //document.getElementById("CmntsTxt_" + k).value=""
            document.getElementById("Cal_" + k + "_CalDateVal").value=""
		    document.getElementById("Cal_" + k + "$CalDateDisplay").value=""
			}
			if (document.getElementById(resrblId +"_2").checked == true)
			{
			//document.all(DytxtId).value="C"
			document.getElementById("CatLbl" + k).innerHTML="(Action to be taken, target date(with internal CAPA).)"
			document.getElementById("CalTr_" + k).className=""
            document.getElementById("Tr_" + k).className=""              
            //document.getElementById("CmntsTr_" + k).className=""            
			document.getElementById("Lbl_" + k).innerHTML="Target Date"
			document.getElementById("JusTr_" + k).className="HideRow"
			document.getElementById("CorTr_" + k).className="HideRow"
			document.getElementById("PreTr_" + k).className="HideRow"
			document.getElementById("CnmtActTr_" + k).className="HideRow"              
//			document.getElementById("CalTd_" + k).colSpan="1"
//			document.getElementById("Td_" + k).colSpan="1"
//			document.getElementById("SubTd_" + k).colSpan="1"
			document.getElementById("resrbltxt" + k).value="C"
			document.getElementById("JustTxt_" + k).value=""
            document.getElementById("CorTxt_" + k).value=""
            document.getElementById("PreTxt_" + k).value=""
            document.getElementById("CnmtActTxt_" + k).value=""
            //document.getElementById("CmntsTxt_" + k).value=""
            document.getElementById("Cal_" + k + "_CalDateVal").value=""
		    document.getElementById("Cal_" + k + "$CalDateDisplay").value=""
			}

}

function SetTextVal1(k)
{
 			
			var resrblId=  "resrbl1" + k
			var DytxtId=  "Dytxt1" + k

			if (document.getElementById(resrblId +"_0").checked == true)
			{  
			document.all(DytxtId).value="Yes"
			}
			if (document.getElementById(resrblId +"_1").checked == true)
			{
			document.all(DytxtId).value="No"
			}
			if (document.getElementById(resrblId +"_2").checked == true)
			{
			document.all(DytxtId).value="N/A"
			}

}

        setTimeout("RestetValue()",500);
//-->
    </script>
    
     <script type = "text/javascript">
         function OnConfirm() {
             var confirm_value = document.createElement("INPUT");
             confirm_value.type = "hidden";
             confirm_value.name = "confirm_value";
             if (confirm("Do you want to Modify?")) {
                 confirm_value.value = "Yes";
             } else {
                 confirm_value.value = "No";
             }

             return (confirm_value.value)
         }
    </script>
    
<script language="javascript">
    var taMaxLength1 = 250

    function taLimit() {
        var taObj = window.event.srcElement;
        if (taObj.value.length == taObj.maxLength * 1) return false;
    }

    function taCount() {

        var taObj = window.event.srcElement;
        if (taObj.value.length > taMaxLength1 * 1) {
            taObj.value = taObj.value.substring(0, taMaxLength1 * 1);
            alert("Characters exceeding limit\nMaximum Length: " + taMaxLength1 + " Characters")
        }
    }

    var taMaxLength2 = 500

    function taLimit2() {

        var taObj = window.event.srcElement;
        if (taObj.value.length == taObj.maxLength * 1) return false;
    }

    function taCount2() {

        var taObj = window.event.srcElement;
        if (taObj.value.length > taMaxLength2 * 1) {
            taObj.value = taObj.value.substring(0, taMaxLength1 * 1);
            alert("Characters exceeding limit\nMaximum Length: " + taMaxLength2 + " Characters")
        }
    }

    function fnSetToReasons(argValue)//For Remarks
    {
        document.getElementById('RemarksTxt').value = argValue
    }		

 </script>
 <script type="text/javascript">
     jQuery(document).ready(function () {
         var d = new Date();
         d = d.getTime();
         if (jQuery('#reloadValue').val().length == 0) {
             jQuery('#reloadValue').val(d);
             jQuery('body').show();
         }
         else {
             jQuery('#reloadValue').val('');
             location.reload();
         }
     });
   </script>
 
	</HTML>
