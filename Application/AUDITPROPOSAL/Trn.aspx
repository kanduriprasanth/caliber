<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AUDITPROPOSAL.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc3" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script> <%--Added by P Suresh--%>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	
	RequestPrefix='<%=me.ClientID%>'


function CallDMSPopup(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var IsuTransCode=''
        var pageURL = "../DMSManagement/DMSFilesSelPopUp.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam + "&IsuTransCode=" + IsuTransCode ;
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
                        <asp:TableRow ID="HeaderCodeRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="HeaderCodeTd">Audit Header Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="HdrCodeValTD">
									<%--<asp:Label id="HeaderCodeLbl" runat="server"></asp:Label>--%>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AdtTempRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTempTd">Audit Format No.</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="AdtTempLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="BodyidTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HdrCodeRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="HdrCodeTd">Audit Header Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:Label ID="HeaderCodeLbl" runat="server"></asp:Label>
                                <asp:Label ID="Label1" runat="server"></asp:Label>
                                <asp:DropDownList ID="HdrCodeDDL" runat="server" CssClass="HideRow" AutoPostBack="true"
                                    Width="200px">
                                </asp:DropDownList>
                                &nbsp;&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHeadTd" ID="RspTempTd" ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LotInfo1Tr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="LotInfo1Tab" runat="server" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="20" Width = "30%"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server"  ReadOnly="true" CssClass="TxtCls" MaxLength="250" Width = "30%"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <%--Audit Scope ---START--%>
                         <asp:TableRow ID="ScopeTr" CssClass="HideRow">
							<asp:TableCell CssClass="MainTD" ID="ScopeTd" Width = "40%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD" ID="ScopeValTd" Wrap=true>
							</asp:TableCell>
						</asp:TableRow>
						<asp:TableRow ID="ScopeMETr" CssClass="HideRow">
							<asp:TableCell CssClass="MainTD" ID="ScopeMETD"></asp:TableCell>
							<asp:TableCell CssClass="MainTD" ID="ScopeMEValTd">
							</asp:TableCell>
						</asp:TableRow>
						<%--Audit Scope ---END--%>
                         <asp:TableRow ID="RegRw" CssClass="HideRow">
                            <asp:TableCell ID="RegTd" CssClass="MainTD" Width = "40%">Audit Agency / Customer</asp:TableCell>
                            <asp:TableCell ID="RegNameTd" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="VendRw" CssClass="HideRow">
                            <asp:TableCell ID="VendTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell ID="VendNameTd" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="PrdRw" CssClass="HideRow">
                            <asp:TableCell ID="PrdTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell ID="PrdNameTd" CssClass="MainTD"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHeadTd" ID="ObsTempTd" ColumnSpan="2"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="LotInfoTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="LotInfoTab" runat="server" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="StDateTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="StDTD">
                                <uc2:CaliberCalender visible="false" id="StDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="EtDateTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="EndTD">
                                <uc2:CaliberCalender visible="false" id="EndDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AccStDateTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc2:CaliberCalender id="AccStDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AccEtDateTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc2:CaliberCalender id="AccEtDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD">File Attachments(If Any)</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnDocpopup()" title="Click Here" class='RsnPUP' style="height: 20px">
                                <asp:Label ID="DocNameLbl" runat="server" CssClass="LblCls"></asp:Label>
                                <asp:TextBox ID="DocId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="DocName" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DevTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DevTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width = "30%"
                                    TextMode="MultiLine" Rows="2" AccessKey="R" onkeypress="taLimit()" onkeyup="taCount()"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="OtherDetRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="DetailsTab" runat="server" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="OthTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="OthTd" ColumnSpan="2">
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
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="btnPreview" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' onMouseOut="this.className='ButCls'" Text="Take Print" Width="70"
                                    CausesValidation="false"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="HideRow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButSelCls" onMouseOver="this.className='ButSelOCls'"
                                    onMouseOut="this.className='ButSelCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="DeptTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="ProcessTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="CheckLstTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AudtitorTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditeeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditorNametxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="AuditeenameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="DateTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="HideRow"></asp:TextBox>
                    <asp:TextBox ID="PrdIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="VendIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AudAgenIdTxt" runat="server"></asp:TextBox>
                    <%--<asp:TextBox ID="TimeTxt" runat="server" CssClass="HideRow"></asp:TextBox>--%>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
	 	function ExpiryDateValid(src,args){
//	 	   var Flag= VbExpiryDateValid() ;
//   if(Flag==false){
//		args.IsValid=false;
//  	    Page_IsValid=false;
//  	    }
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
			
			
//-->

 //If Flag==3 Added by P Suresh
 function ChkDeviation(src,args)
 {
        if(<%=ViewState("TrnsType")%>==1 || <%=ViewState("TrnsType")%>==2 || <%=ViewState("TrnsType")%>==3 || <%=ViewState("TrnsType")%>==4){
            var Flag= VbDeviationChk() ;
            if(Flag==1)
            {
                src.errormessage="Actual Start Date Must Be Greater Than Or Equal To Current Date"
                args.IsValid=false;
  	            Page_IsValid=false;
  	        }
            if(Flag==2)
            {
                src.errormessage="Actual End Date Must Be Greater Than Or Equal To Actual Start Date"
                args.IsValid=false;
  	            Page_IsValid=false;
            }
            if(Flag==3)
            {
                var Flag1= VbDeviationChk1()
                if  (Flag1==1)
                {
                src.errormessage="Actual Start Date Must Be Greater Than Or Equal To Current Date"
                args.IsValid=false;
  	            Page_IsValid=false;
  	            }
                 if(Flag1==2)
                {
                src.errormessage="Actual End Date Must Be Greater Than Or Equal To Actual Start Date"
                args.IsValid=false;
  	            Page_IsValid=false;
                }
//                if(Flag1==3)
//                {
                    if ($.trim(document.getElementById("DevTxt").value) == "")
                    {
                    src.errormessage="Enter Value for: Remark(s)/Reason(s) for Planning Audit Before/After Planned Dates"
                    args.IsValid=false;
  	                Page_IsValid=false;
  	                }
//  	           }
            }
        }
     
 }
 
 function GetDateFrn(Deptar)
 {
//    for (var i=0 ;i<Deptar;i++)
//    {
//        document.getElementById("DateTxt").value += "#*#" + document.getElementById("Cal" & i & "$CalDateVal").value 
//    }
 }
 
 	function DateValid(src,args){
 	var DeptCnt
 	var PrcsCnt
 	if(<%=ViewState("TrnsType")%>==1)
 	{
 	    DeptCnt = "<%=ViewState("DeptCnt")%>"
 	    PrcsCnt = "<%=ViewState("PrcsCnt")%>"
 	    
 	    for(var j =0 ; j<DeptCnt; j++)
 	    {
             for(var i =0; i<PrcsCnt; i++)
             {
                var Flag= VbDateValid(j,i) ;
                if(Flag==false){
                    args.IsValid=false;
                    Page_IsValid=false;
                }
             }
 	    }
 	}
 	else if(<%=ViewState("TrnsType")%>==2 || <%=ViewState("TrnsType")%>==3 || <%=ViewState("TrnsType")%>==4)
 	{
 	    DeptCnt = "<%=ViewState("DeptCnt")%>"
 	    PrcsCnt = "<%=ViewState("PrcsCnt")%>"
 	    var Flag= VbDateValid(DeptCnt,PrcsCnt);
        if(Flag==false){
	        args.IsValid=false;
            Page_IsValid=false;
        }
 	}
 	else
 	{
        return;
    }
 		 	  
 }
    function FnCheckListPopUp(DeptId,PrcsId,DeptCnt,PrcsCnt)
    {	   	
        SetPopDimensions()
        var pageURL = "ChckListPopUp.aspx?DeptId=" + DeptId + "&PrcsId=" + PrcsId + "&DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt;
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnGetCheckListVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
        document.getElementById("CheckListLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        var Cnt = <%=Cnt%>
        document.getElementById("CheckListTxt_" + DeptCnt + "_" + PrcsCnt).value =  KdIdVal
    }

    
    function FnAuditorPopUp(DeptId,DeptCnt,PrcsCnt,UgpIds)
    {	   	
        SetPopDimensions()
        var AdtrId="";
//        if (<%=ViewState("AdtType")%>==1)
//        {
            var AdteExtId=document.getElementById("AuditeeTextBx_" + DeptCnt + "_" + PrcsCnt).value
//        }
//        else
//        {
//            var AdteExtId="";
//        }
//        if(<%=TransType1 %>!=1)
//        {
            AdtrId=document.getElementById("AuditorTextBx_" + DeptCnt + "_" + PrcsCnt).value
//        }
        var pageURL = "AuditorPopUp.aspx?DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt + "&UgpIds=" + UgpIds + "&AdteExtId=" + AdteExtId + "&DeptId=" + DeptId + "&AdtrId=" + AdtrId + "&TransType=" + <%=TransType1%> + "&AdtType=" + <%=ViewState("AdtType")%>;
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnGetAuditorVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
        document.getElementById("AuditorLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        if(KfLableVal=="")
        {
            document.getElementById("AuditorNametxt").value=""  
        }
        else
        {
            document.getElementById("AuditorNametxt").value+="#*#" +KfLableVal  
        }
        document.getElementById("AuditorTextBx_" + DeptCnt + "_" + PrcsCnt).value=KdIdVal        
    }
 
    function FnAuditeePopUp(DeptId,DeptCnt,PrcsCnt,UgpIds)
    {	   	
        SetPopDimensions()
        var AdteeId="";
//        if (<%=ViewState("AdtType")%>==1)
//        {
            var AdtrExtId=document.getElementById("AuditorTextBx_" + DeptCnt + "_" + PrcsCnt).value
//        }
//        else
//        {
//            var AdtrExtId="";
//        }
//        if(<%=TransType1 %>!=1)
//        {
            AdteeId=document.getElementById("AuditeeTextBx_" + DeptCnt + "_" + PrcsCnt).value
//        }
        var pageURL = "AuditeePopUp.aspx?DeptCnt=" + DeptCnt + "&PrcsCnt=" + PrcsCnt + "&UgpIds=" + UgpIds + "&AdtrExtId=" + AdtrExtId + "&DeptId=" + DeptId + "&AdteeId=" + AdteeId + "&TransType=" + <%=TransType1%> + "&AdtType=" + <%=ViewState("AdtType")%>;
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function fnGetAuditeeVal(KdIdVal,KdCodeVal,KfLableVal,DeptCnt,PrcsCnt)
    {
        document.getElementById("AuditeeLbl_" + DeptCnt + "_" + PrcsCnt).innerText=KfLableVal
        if(KfLableVal=="")
        {
            document.getElementById("AuditeenameTxt").value=""  
        }
        else
        {
            document.getElementById("AuditeenameTxt").value+="#*#" +KfLableVal  
        }
        document.getElementById("AuditeeTextBx_" + DeptCnt + "_" + PrcsCnt).value=KdIdVal
    }
    
    function fnOpenCrPopUpAudit(UsgID,RowCount)
    {	   	
        SetPopDimensions()
        var pageURL = "../InstUsage/Particulars.aspx?BId=" + UsgID 
        var features = "height= 450,width= 600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
        var SpWinObj = window.open(pageURL,'BRMPopup',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    
</script>

<script language="vbscript">

'--Edited by P Suresh for Actual dates tobe selected between Planned Dates
function VbDeviationChk
       
       AccStDate=document.getElementById("AccStDate$CalDateVal").value
       AccEdDate=document.getElementById("AccEtDate$CalDateVal").value
                
       stardate=document.getElementById("TextBox1").value 
       enddate=document.getElementById("TextBox2").value
     
     if AccStDate="" or AccEdDate="" or stardate="" or enddate="" then exit function
      AccStDateAry=split(AccStDate,"/")
      AccStDateVal=dateSerial(AccStDateAry(2),AccStDateAry(0),AccStDateAry(1))
	  
	  AccEdDateAry=split(AccEdDate,"/")
	  AccEdDateVal=dateSerial(AccEdDateAry(2),AccEdDateAry(0),AccEdDateAry(1))
	  
	  stardateAry=split(stardate,"/")
      stardateVal=dateSerial(stardateAry(2),stardateAry(0),stardateAry(1))
	  
	  enddateAry=split(enddate,"/")
	  enddateVal=dateSerial(enddateAry(2),enddateAry(0),enddateAry(1))
	  
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  
	DDgap1=DateDiff("d",AccStDateVal,Today)
	DDgap2=DateDiff("d",AccStDateVal,AccEdDateVal)
	DDgap3=DateDiff("d",AccStDateVal,stardateVal)
	DDgap4=DateDiff("d",AccEdDateVal,enddateVal)

	 if DDgap2<0 then
		VbDeviationChk=2
	 end if
	 if DDgap1>0 then
		VbDeviationChk=1
	 end if
	 if DDgap3>0 or DDgap4<0 then
	    VbDeviationChk=3
	 end if
    
end function

function VbDeviationChk1
       
       AccStDate=document.getElementById("AccStDate$CalDateVal").value
       AccEdDate=document.getElementById("AccEtDate$CalDateVal").value
                
       stardate=document.getElementById("TextBox1").value 
       enddate=document.getElementById("TextBox2").value
     
     if AccStDate="" or AccEdDate="" or stardate="" or enddate="" then exit function
      AccStDateAry=split(AccStDate,"/")
      AccStDateVal=dateSerial(AccStDateAry(2),AccStDateAry(0),AccStDateAry(1))
	  
	  AccEdDateAry=split(AccEdDate,"/")
	  AccEdDateVal=dateSerial(AccEdDateAry(2),AccEdDateAry(0),AccEdDateAry(1))
	  
	  stardateAry=split(stardate,"/")
      stardateVal=dateSerial(stardateAry(2),stardateAry(0),stardateAry(1))
	  
	  enddateAry=split(enddate,"/")
	  enddateVal=dateSerial(enddateAry(2),enddateAry(0),enddateAry(1))
	 ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  
	DDgap1=DateDiff("d",AccStDateVal,Today)
	DDgap2=DateDiff("d",AccStDateVal,AccEdDateVal)
	DDgap3=DateDiff("d",AccStDateVal,stardateVal)
	DDgap4=DateDiff("d",AccEdDateVal,enddateVal)

	 if DDgap2<0 then
		VbDeviationChk1=2
	 end if
	 if DDgap1>0 then
		VbDeviationChk1=1
	 end if
'	 if DDgap3>0 or DDgap4<0 then
'	    VbDeviationChk1=3
'	 end if
  
end function

 function VbExpiryDateValid 
       ExpDate=document.getElementById("TxtCal$CalDateVal").value
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
 
  function VbDateValid(j,i)
         
  VbDateValid=true
  AccStDate=document.getElementById("AccStDate$CalDateVal").value
  'AccEdDate=document.getElementById("AccEtDate$CalDateVal").value
  CurrDate=document.getElementById("Cal_" & j & "_" & i & "$CalDateVal").value
  if CurrDate="" or AccStDate="" then exit function
  
  
  
	  ThisMonth = <%=ThisMonth%>
	  ThisYear = <%=ThisYear%>
	  ThisDay = <%=ThisDay%>
	  Today=dateSerial(ThisYear,ThisMonth,ThisDay)
	  if Today="" then exit function
	  
	  CurrDateDateAry=split(CurrDate,"/")
	  CurrDateDateVal=dateSerial(CurrDateDateAry(2),CurrDateDateAry(0),CurrDateDateAry(1))
	  
	  AccStDateAry=split(AccStDate,"/")
	  AccStDateVal=dateSerial(AccStDateAry(2),AccStDateAry(0),AccStDateAry(1))
	  
'	  AccEdDateAry=split(AccEdDate,"/")
'	  AccEdDateVal=dateSerial(AccEdDateAry(2),AccEdDateAry(0),AccEdDateAry(1))

	  DDgap=DateDiff("d",Today,CurrDateDateVal)
	  DDgap1=DateDiff("d",CurrDateDateVal,AccStDateVal)
	  if DDgap<0 then
		 VbDateValid=false
	  end if
	  if  DDgap1<0 then
	     VbDateValid=false
	  end if
   	 
 End function
 
</script>

<script language="javascript">
<!-- 
 function SDateValid(src,args){
   var Flag= VbSDateValid() ;
   if(Flag==false){
		args.IsValid=false;
  	    Page_IsValid=false;
  	    }
 }
 
//-->
</script>

<script language="vbscript">
function VbSDateValid 
		SDate=document.getElementById("TxtCal2$CalDateVal").value
		VbSDateValid=true
		if SDate="" then exit function
			ThisMonth = <%=ThisMonth%>
			ThisYear = <%=ThisYear%>
			ThisDay = <%=ThisDay%>
			Today=dateSerial(ThisYear,ThisMonth,ThisDay)

			SDateAry=split(SDate,"/")
			SDateVal=dateSerial(SDateAry(2),SDateAry(0),SDateAry(1))

		DDgap=DateDiff("d",Today,SDateVal)
			if DDgap>0 then
			VbSDateValid=false
			end if 
End function

 
</script>

<script language="javascript">
	function fnSetToReasons(argValue)//For Remarks
          {   
               document.getElementById('RemarksTxt').value = argValue
          }		
<!--
document.getElementById('CodeTxt').focus()
//-->
</script>

</html>
