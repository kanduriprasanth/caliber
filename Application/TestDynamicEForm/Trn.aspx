<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="TestDynamicEForm.Trn" MaintainScrollPositionOnPostback="true" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
<script type="text/javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

	function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.getElementById(EleId);
	}

	function Fn_GetAllE(EleId,ParentObject)
	{
	    var RetObj =Fn_GetAllEs(EleId,ParentObject)
	    return RetObj.length ? RetObj[0] : RetObj
	}

	function Fn_GetAllEs(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.all(EleId);
	}

function FnEFormTablePopUp()
{
    var pageURL;
    pageURL ="EFormTablePopUp.aspx"

    SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
}

function fnEFormTableVal(EFormTableId,EFTblCode,EFormTableDes)
{
    Fn_GetE("HeaderTableIdTxt").value=EFormTableId;
    Fn_GetE("HeaderTableDesLab").innerHTML =EFormTableDes;
    Fn_GetE("HeaderTableDesTxt").value =EFormTableDes;
}

function CreatePostback()
{
    if(Fn_GetE("HeaderTableIdTxt").value !="")
    {
        Fn_GetE("eFromBtn").click();
    }
}

function FnCheckRepeat(IsDet)
{
    if(IsDet=="2")
    {
        Detach();
    }
}
function Detach()
{
    if (typeof(fnCallESign) != "undefined")
    {
//       var formName = document.forms(0).name
//       document.forms(0).detachEvent('onsubmit',fnCallESign)
         document.forms(0).detachEvent('onsubmit',fnCallESign)
    }
}


 function ValidateFieldSelection(src,args)
    {
 
        args.IsValid=true;
        Page_IsValid=true;
        var FieldsCount=<%=FieldsCount %>
        var Count=0
       for(var i=0;i<FieldsCount;i++)
       {
         if(document.getElementById("CBox" + i).checked==true)
         {
          Count= Count+1
         }
       }
        if (Count==0) 
        {
        src.errormessage="Select At Least One eForm Table Field"
        args.IsValid=false;
        Page_IsValid=false;
        }
        
    }

	//-->
    </script>

    <script language="javascript">

    function WRKPopUpFn()
    {
        var pageURL;
        pageURL ="WorkFlowListPopUp.aspx"
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    function fnCrSetToCode(WofIdVal,WofAulIdVal,WofDesVal,RevCntVal,AppCntVal,RevColVal,AppColVal)
    {
        document.getElementById("WrkFloIDTxt").value=WofIdVal
        document.getElementById("WrkFloCodeTxt").value=WofAulIdVal
        document.getElementById("WrkFlowDescLab").innerHTML =WofDesVal
        document.getElementById("WrkFlowDescTxt").value =WofDesVal
        document.getElementById("RevCntTxt").value=RevCntVal
        document.getElementById("AppCntTxt").value=AppCntVal
        document.getElementById("RevColTxt").value=RevColVal
        document.getElementById("AppColTxt").value=AppColVal
         
    }

    function fnCrformSubmit()
    {
        document.all("GoBtn").click()
    }
    function SetHeadColCaption(k)
    {
        var dropId=  "drop" + k
        var txtId=  "txt" + (k-1)
        document.all(txtId).value=document.all(dropId).value
    }
    var SelRowCnt ="";

    function ValidationPopUpFn(RowCnt,CtrlID,DBType,CtrlDataType)
    {
        SelRowCnt = RowCnt
        var pageURL;
        var TempArr = new Array()
        TempArr = document.getElementById("ValidTypeValTxt"+RowCnt).value.split("#*#")
//        var CustomValFunIdArr =new Array()
//        CustomValFunIdArr=document.getElementById("CustValTxt"+RowCnt).value.split("#*#")
        
        //pageURL ="ValidationRulePopUp.aspx?RowCnt=" + RowCnt + "&FieldCnt=" + TempArr.length + "&CtrlID="+ CtrlID + "&DBType="+ DBType;
        pageURL ="ValidationRulePopUp.aspx?RowCnt=" + RowCnt + "&FieldCnt=" + TempArr.length + "&CtrlID="+ CtrlID + "&DBType="+ DBType + "&CtrlDataType=" + CtrlDataType; 

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    }      


    function SetSelFieldVal(FielIdLstArr,FieldValLstArr,ValTypeText,ValTypeVal,RowCnt)
    {
        for(var k=0;k<FielIdLstArr.length;k++)
        {
            document.getElementById(FielIdLstArr[k]+SelRowCnt).value = FieldValLstArr[k];
        }
         
        var ValidTypeArr=new Array()
        ValidTypeArr=ValTypeText.split("#*#")
       
        document.getElementById("ValidTypeCapLab"+RowCnt).innerHTML =ValidTypeArr.join(", "); // ValTypeText.replace("#*#",", ").ValTypeText.replace("#*#",", ");
        document.getElementById("ValidTypeCapTxt"+RowCnt).value = ValidTypeArr.join(",");  //ValTypeText;
        document.getElementById("ValidTypeValTxt"+RowCnt).value = ValTypeVal;

        SelRowCnt =""
    }

    function SetWorkCol(RCnt)
    { 
       var DDLObj = document.getElementById("WorkFlowTypeDDL"+RCnt)
       document.getElementById("WorkflowColTxt"+RCnt).value =DDLObj.item(DDLObj.selectedIndex).wcol
    }
    </script>
    
   <script language="javascript">
    function fnChangeCalss(RowCount)
    {
       if(document.getElementById("CBox"+RowCount).checked == true)
       {
         document.getElementById("FldInfoTxt"+RowCount).className="TxtCls"
          if(document.getElementById("WorkFlowTypeDDL"+RowCount).disabled == true)
       {
       document.getElementById("WorkFlowTypeDDL"+RowCount).disabled = false
       }
       }
       else
       {
         document.getElementById("FldInfoTxt"+RowCount).className="HideRow"
         document.getElementById("FldInfoTxt"+RowCount).value=""
          if(document.getElementById("WorkFlowTypeDDL"+RowCount).disabled == false)
       {
       document.getElementById("WorkFlowTypeDDL"+RowCount).disabled = true
       }
               
       }
      
    }
    
    function fnCheckAll()
    {
      var FieldsCount=<%=FieldsCount%>
      var ChkBoxId
      var chk=document.getElementById("TestChkAll").checked
   
      for(i=0;i<=FieldsCount-1;i++){
         ChkBoxId="CBox"+i
           if(!document.getElementById(ChkBoxId).disabled) 
           {
             document.getElementById(ChkBoxId).checked=chk 
           }
		}
     }
     
    function eFormPreview()
    {
        var pageURL;

        pageURL ="eFromPreview.aspx?TabCode=" + document.getElementById("TableCode").value + "&TabId=" + document.getElementById("TableId").value
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
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
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="FormCodeCapTd" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="FormCodeCapTxt" runat="server" CssClass="TxtCls"
                                     MaxLength="50" Width="200px" AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="EfromTypeTD" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:Label runat="server" ID="EfromTabLbl"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="EfromTabTD" Style="font-weight: bold;"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:Label runat="server" ID="EfromLbl"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow >
                          <asp:TableCell CssClass="MainTD" ID="SpWrkAllValTD" Style="font-weight: bold;" ></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                                  <asp:RadioButtonList CssClass="MainTD" runat=server ID="SpWrkAllValRdl" RepeatDirection=Horizontal onClick="FunAllSelction()">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                  </asp:RadioButtonList>&nbsp;
                                  <asp:DropDownList ID="SpWrkAllDDl" runat=server CssClass="HideRow"></asp:DropDownList>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow" >
                          <asp:TableCell CssClass="MainTD" ID="SpWrkexeValTD" Style="font-weight: bold;" ></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                                  <asp:RadioButtonList CssClass="MainTD" runat=server ID="SpWrkexeValRdl" RepeatDirection=Horizontal onClick="FunExeSelction()">
                                    <asp:ListItem Value="1">Yes</asp:ListItem>
                                    <asp:ListItem Value="2">No</asp:ListItem>
                                  </asp:RadioButtonList>&nbsp;&nbsp;
                                  <asp:DropDownList ID="SpWrkExeDDl" runat=server CssClass="HideRow"></asp:DropDownList>
                          </asp:TableCell>
                        </asp:TableRow>
                                            
                        <asp:TableRow >
							  <asp:TableCell CssClass="MainTD" ID ="AutoWrkAllTD" style="font-weight:bold;width:30%" ></asp:TableCell>
							  <asp:TableCell CssClass="MainTD">
							    <asp:RadioButtonList ID="AutoWrkAllRdl" runat=server CssClass="MainTD" RepeatDirection=Horizontal onclick="ShowWorkTemplate()">
							      <asp:ListItem Value=1>Yes</asp:ListItem>
							      <asp:ListItem Value=2>No</asp:ListItem>
							    </asp:RadioButtonList>
							  </asp:TableCell>
							</asp:TableRow>
							
							<asp:TableRow ID="WrkTempTr" CssClass="HideRow"> 
							  <asp:TableCell CssClass="MainTD" ID ="WrkTempTd" style="font-weight:bold;width:30%"></asp:TableCell>
							  <asp:TableCell CssClass="MainTD">
							   <asp:DropDownList ID="WrkTempDDl" runat=server CssClass=MainTD></asp:DropDownList>
							  </asp:TableCell>
							</asp:TableRow>
                   
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="WrkFlowDescTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="WrkFloIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WrkFloCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <input type="button" onclick="WRKPopUpFn()" class='RsnPUP' tabindex="3" >
                                <asp:Label ID="WrkFlowDescLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="WrkFlowDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:ImageButton ID="GoBtn" runat="server" ImageUrl="../IMAGES/Go.gif" CssClass="HideRow"
                                    CausesValidation="false"></asp:ImageButton>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="HeaderEFormTableTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell ID="TableCell2" CssClass="MainTD" runat="server">
                                <asp:Label ID="Label1" runat="server" Text="<input type='button' onclick='FnEFormTablePopUp()' class='RsnPUP' tabindex='4'>"></asp:Label>
                                <asp:TextBox ID="HeaderTableIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="HeaderTableDesLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="HeaderTableDesTxt" runat="server" Text="" CssClass="HideRow"></asp:TextBox>
                                <asp:ImageButton ID="eFromBtn" runat="server" ImageUrl="../IMAGES/Go.gif" CssClass="HideRow"
                                    CausesValidation="false"></asp:ImageButton>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHeadTd" ID="HeaderTd" ColumnSpan="2">
                            
                            </asp:TableCell>
                           
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table ID="ttt" runat="server" EnableViewState="False" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="HRowsTd" ColumnSpan="1" Text="Rows"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:TextBox ID="HRowsTxt" CssClass="TxtCls" MaxLength="1" Width="30px" runat="server"
                                                AccessKey="c" AutoPostBack="True" Text="" TabIndex="5"></asp:TextBox></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ID="HRows1Td" ColumnSpan="1" Text="Columns"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                            <asp:DropDownList ID="HRowsDd" runat="server" CssClass="TxtCls" MaxLength="50" Width="70px"
                                                TabIndex="6" AccessKey="c" AutoPostBack="True">
                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                <asp:ListItem Value="6">6</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HeaderTr" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DHTabTd" ColumnSpan="2" runat="server">
                                <asp:Table ID="DHTab" runat="server" EnableViewState="False" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="BodyRowTd" Style="font-weight: bold;" Text="Body Column Count"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="BodyRowsDdL" runat="server" CssClass="TxtCls" MaxLength="50" Width="100"
                                                TabIndex="6" AccessKey="c" AutoPostBack=false>
                                                <asp:ListItem Value=""><< Select >></asp:ListItem>
                                                <asp:ListItem Value="2">2</asp:ListItem>
                                                <asp:ListItem Value="4">4</asp:ListItem>
                                                <asp:ListItem Value="6">6</asp:ListItem>
                                            </asp:DropDownList>
                                            
                                           
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHeadTd" ID="BodyTd" ColumnSpan="2" ></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DBTabTd" ColumnSpan="2" runat="server">
                                <asp:Table ID="DBTab" runat="server" EnableViewState="False" Width="100%" CellPadding="0"
                                    CellSpacing="1" CssClass="SubTable">
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
            <asp:TableRow>
                <asp:TableCell  CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                               <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                     CssClass='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70px"></asp:Button>
                            </asp:TableCell>
                            
                             
                             <asp:TableCell CssClass="MainFoot" HorizontalAlign=Right>
                            <%--  <asp:Button ID="PrevBtn" runat=server causesvalidation=false onMouseOver="this.className='ButOCls'" CssClass="ButCls"
                              AccessKey="C" onMouseOut="this.className='ButCls'" Text="eForm Preview"  PostBackUrl="~/TestDynamicEForm/eFromPreview.aspx" >
                              </asp:Button>--%>
                              
                               <input type="button" onclick="eFormPreview()" class='ButSelCls' nMouseOver="this.className='ButexOCls'" CssClass="ButexCls"
                              AccessKey="C" onMouseOut="this.className='ButexCls'" value="eForm Preview" >
                              
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
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
                    <asp:TextBox ID="RevCntTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AppCntTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="RevColTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="AppColTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TableId" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TableCode" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FldSelValueTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FldCountTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="UserStatusTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WofStatusTxt" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language =javascript >


function FunAllSelction()
{
  if (document.getElementById("SpWrkAllValRdl_0").checked==true)
    document.getElementById("SpWrkAllDDl").className="MainTD"
  else document.getElementById("SpWrkAllDDl").className="HideRow"
}


function FunExeSelction()
{
  if (document.getElementById("SpWrkexeValRdl_0").checked==true)
    document.getElementById("SpWrkExeDDl").className="MainTD"
  else document.getElementById("SpWrkExeDDl").className="HideRow"
}


function ValidateBodyForm(src,args)
{
    var str=""
    var FldDesc=""
    args.IsValid=true;
    Page_IsValid=true;

    var Cnt =0
    while(Fn_GetE("CBox" + Cnt) !=null)
    {
        if(Fn_GetE("CBox" + Cnt).checked ==true)
        {
        FldDesc=Fn_GetE("FieldDesc" + Cnt).value
            if($.trim(FldDesc)== "")
            {
            
                str=str + "<%=EnterValForCap%> " + "<%=FieldCaptionCap%>" + (Cnt+1) + "  \n -"
            }
//            if(Fn_GetE("ValidTypeValTxt" + Cnt).value == "")
//            {
//                str=str + "<%=SelectValForCap%> " + "<%=FieldValTypeCap%>" + (Cnt+1) + "  \n -"
//            }
            if(Fn_GetE("WorkFlowTypeDDL" + Cnt).value == "")
            {
                str=str + "<%=SelectValForCap%> " + "<%=FieldWorkFlowSelCap%>" + "-"+ (Cnt+1) + "  \n -"
            }
        }
        Cnt+=1;
    }

    if(str!="")
    {
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;
    }   
}

function ValidateSpecialValFun(src,args)
{
    var str=""
    args.IsValid=true;
    Page_IsValid=true;
    
//    if(document.getElementById("SpWrkAllValRdl_0").checked== true)
//    {
//      if(document.getElementById("SpWrkAllDDl").value=="")
//       {
//         src.errormessage="Select Special Validation Required At Work Allocation Function"
//         args.IsValid=false;
//         Page_IsValid=false;
//       }
//    }

    if(document.getElementById("SpWrkAllValRdl_0").checked== true)
    {
        if(document.getElementById("SpWrkAllDDl").value=="")
        {
             str =str + "Select Special Validation Required At Work Allocation Function" + "  \n -"
        }
    }
    if(document.getElementById("AutoWrkAllRdl_0").checked== true)
    {
        if(document.getElementById("WrkTempDDl").value=="")
        {
             str =str + "Select Value For : Work Template" + "  \n -"
        }
    }
    
    if(str!="")
    {
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;
    }   
      
      
}
</script>

<script language="javascript">
<!--
document.getElementById("CodeTxt").focus()

var taMaxLength = 250
var taMaxLength1 = 500
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

            function ShowWorkTemplate()
            {
            if(document.getElementById("AutoWrkAllRdl_0").checked==true)
            {
               document.getElementById("WrkTempTr").className="MainTD"
            }   
            else if(document.getElementById("AutoWrkAllRdl_1").checked==true)
               document.getElementById("WrkTempTr").className="HideRow"
            }	

//-->
</script>

</html>