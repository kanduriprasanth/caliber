<%@ Page Language="vb" AutoEventWireup="false" ValidateRequest="false" Codebehind="Trn.aspx.vb"
    Inherits="WorkAllocationTemplate.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
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

function GetEditorText(EditerId)
{
    var RVal =""
    try
    {
        var oEditor = FCKeditorAPI.GetInstance(EditerId) ;
        RVal = oEditor.EditingArea.Document.body.innerHTML;
    }
    catch(ex)
    {
    }
    return RVal
}


function OpenDocumentJs( body,header,footer)
{
    DocumentAccess("",body,header,footer,"Caliber","Print")
}
    </script>

    <script language="javascript">
function AddFieldIDs(src,args)
{
    args.IsValid=false;
    Page_IsValid=false;

    //For EForm Header and Footer
    /*if(parseInt(Fn_GetE("TemplateTypeDDL").value) == 2)
    {
        //SetValues('<%=instanceName%>' + "Header1")
        //SetValues('<%=instanceName%>' + "Footer1")
    }
    //Sets FieldNames as well as Binding Field ids for Template[EForm]
    //SetValues('<%=instanceName%>')*/
    readfldvalue()

 //--------------------------------------
    args.IsValid=true;
    Page_IsValid=true;
}


function readfldvalue()
{

 var FldIdList  =""
 var FldId =""
 FldId=SetValues('<%=instanceName%>' + "Header1")
 if (FldId!="")
 {
   FldIdList=FldId
 }
 
 if (FldIdList=="")
 {
 FldId=SetValues('<%=instanceName%>' + "Footer1")
 if (FldId!="")
 {
   FldIdList=FldId
 }
 }
 else 
 {
   FldId=SetValues('<%=instanceName%>' + "Footer1")
   if (FldId!="")
   {
    FldIdList += "#*#"+ FldId
   }
}
if (FldIdList=="")
 {
 FldId=SetValues('<%=instanceName%>')
 if (FldId!="")
 {
   FldIdList=FldId
 }
 }
 else
 {
 FldId=SetValues('<%=instanceName%>' )
 if (FldId!="")
 {
  FldIdList += "#*#"+ FldId
  }
}
 document.getElementById("FieldNameListTxt").value=FldIdList
}

function SetValues(EditerId)
{
    var FieldNameTxtId ="FieldNameListTxt"
    var BndFldTxtId = "BndFldIdLstTxt"
    var FieldNameList =""
    var BindingFieldIdList =""
    var FieldTypeValLst =""
    var oEditor = FCKeditorAPI.GetInstance(EditerId) ;

    if(oEditor)
    {
        var FieldNodes = oEditor.EditorDocument.documentElement.getElementsByTagName("span");
        if (FieldNodes.length >0)
        {
            for(var i=0;i<FieldNodes.length;i++)
            {
                if(FieldNodes(i))
                {
                    //For Reading Field Names Entry as well as binding
                    if(FieldNodes(i).getAttribute("calfld"))
                    {
                        FieldNameList +=  FieldNodes(i).id + "#*#"
                        //FieldTypeValLst += FieldNodes(i).fieldtype + ","
                    }
                                        
                    //For Reading Binding fields BaseId
                    /*if(FieldNodes(i).getAttribute("fieldid"))
                    {
                        BindingFieldIdList +=  FieldNodes(i).fieldid + ","
                    }*/
                }
            }
        }
    }

    if(FieldNameList !="")
    {
        FieldNameList = FieldNameList.substr(0,FieldNameList.lastIndexOf("#*#"))
        FieldTypeValLst=FieldTypeValLst.substr(0,FieldTypeValLst.lastIndexOf(","))
        
        /*if(Fn_GetE(FieldNameTxtId).value !="")
        {
            FieldNameList = Fn_GetE(FieldNameTxtId).value + "#*#" + FieldNameList;
        }
        Fn_GetE(FieldNameTxtId).value= FieldNameList
        Fn_GetE("FieldTypeLstTxt").value= FieldTypeValLst*/
    }
    return FieldNameList
   /* if(BindingFieldIdList !="")
    {
        BindingFieldIdList = BindingFieldIdList.substr(0,BindingFieldIdList.lastIndexOf(","))
        if(Fn_GetE(BndFldTxtId).value !="")
        {
            BindingFieldIdList = Fn_GetE(BndFldTxtId).value + "," + BindingFieldIdList;
        }
        Fn_GetE(BndFldTxtId).value= BindingFieldIdList
    }*/
}

    </script>

    <script language="javascript">
<!--
RequestPrefix='<%=me.ClientID%>'
function fnSetToReasons(argValue)
{  
	//document.Form1.RemarksTxt.value = argValue
	Fn_GetE("RemarksTxt").value=argValue
}
//-->

function ValidateTableSelection(src,args)
{
    var str="" 
    args.IsValid=true;
    Page_IsValid=true;

     //var Val = parseInt(Fn_GetE("TemplateTypeDDL").value)

     //if(Val == 2)
     //{
        var SelFlag =0
        for(var i=0;i<2;i++)
        {
            if(Fn_GetE("EFormTableReqRBtn_"+i).checked == true)
            {
                SelFlag=1
            }
        }
        if(SelFlag ==0)
        {
            str=str+ "<%=SelValForCaption%>" + Fn_GetE("EFormTableReqTd").innerHTML + "\n -"
        }
        else
        {
            if(Fn_GetE("EFormTableReqRBtn_1").checked == true)
            {
                 if(Fn_GetE("EFormTableDesLab").innerHTML  =="")
                 {
                    str=str+ "<%=SelValForCaption%>" + Fn_GetE("EFormTableTd").innerHTML + "\n -"
                 }
            }
        }
   // }
    if(str!="")
    {	
        src.errormessage=str.substring(0,str.length-3)
        args.IsValid=false;
        Page_IsValid=false;  	
    }
}

function FnEFormTablePopUp()
{
   
        var pageURL;
        pageURL ="EFormTablePopUp.aspx"

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
      
}

function fnEFormTableVal(EFormTableId,EFormTableDes)
{
    Fn_GetE("EFormTableIdTxt").value=EFormTableId
    Fn_GetE("EFormTableDesLab").innerHTML =EFormTableDes
    Fn_GetE("EFormTableDesTxt").value =EFormTableDes
}

function SetEFromTblVisible()
{
    if(Fn_GetE("TemplateTypeDDL").value !="")
    {
        Form1.submit()
    }
}

function SetEFormTableVisible()
{
    Fn_GetE("EFormTableReqRBtn_1").checked ? Fn_GetE("EFormTableTr").className ="MainTD" : Fn_GetE("EFormTableTr").className ="HideRow"
}
    </script>

    <script language="javascript">
var HFType ;
function fnOpen_HFTemplate(Type)
{   HFType =(Type * 1)
    //Type : 0 -->Header ;1 --> Footer;
        pageURL ="TemplateListPopup.aspx?&Type=" + Type

        SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
}

function fnSetVal_HFTemplate(BaseId,Desc)
{
    Fn_GetE("TpltIdTxt").value =BaseId
}

function Submitpage()
{
     Form1.submit();
       //__doPostBack(textBoxId,'');
 }

    </script>

    <script language="javascript">

function FnENBSelLstPopUp()
	{
	var pageURL ="EnotebookListPopUp.aspx?"
	
    var PWidth=600
    var PHeight=460
    var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
    var ScreenTop = parseInt(window.screen.height-PHeight)/2; 

    SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}

    function GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)
    {
        //((ENBDesc=="") || (SecDesc=="")) ? Fn_GetE("ENBUCodeLab").innerHTML ="" : Fn_GetE("ENBUCodeLab").innerHTML =ENBDesc + " / " + SecDesc
        Fn_GetE("ENBUCodeLab").innerHTML = ((ENBDesc=="") || (SecDesc=="")) ? "" : ENBDesc + " / " + SecDesc
        Fn_GetE("ENBIDTxt").value =ENBId
        Fn_GetE("ENBUCodeTxt").value =ENBDesc
        Fn_GetE("SectionIdTxt").value =Secid
        Fn_GetE("SectionDescTxt").value =SecDesc
    }
    
    //For EForm 
     function FormSelPopUpFn()
    {
     if(Fn_GetE("TemplateTypeDDL").value !="")
      {
        var pageURL;
        pageURL ="EFormListPopUp.aspx";
        var PWidth=600
        var PHeight=460
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
        SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" +  ScreenTop + ",left=" + ScreenLeft);
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
      }
       else
       {
         alert("Select Type");
       }    
    }

function fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WOfID)
{
    document.getElementById("EFormDescLab").innerHTML =KfLableVal
    document.getElementById("EFormIdTxt").value=KdIdVal
    document.getElementById("EFormCodeTxt").value=KdCodeVal
    document.getElementById("EFormDescTxt").value=KfLableVal
    document.getElementById("WofTxt").value=WOfID
}
function Postback(){
     Form1.submit()
}


    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                   
                    <asp:TextBox ID="TpltIdTxt" runat="server" CssClass="HideRow" AutoPostBack="True"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow2" runat="server">
                <asp:TableCell ID="TableCell2" runat="server">
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="Center" ID="Table1">
                        <asp:TableRow ID="TableRow3" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="TableCell3" runat="server"></asp:TableCell>
                            <asp:TableCell ID="TableCell4" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow4" runat="server">
                            <asp:TableCell ID="TableCell5" CssClass="SubHead" ColumnSpan="2" runat="server" >
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                               
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="OrientationTd" 
                                Text="Orientation"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="OrientationRBn" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                    TabIndex="4">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="ENoteBookTd" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="FnENBSelLstPopUp()" class='RsnPUP' tabindex="5">
                                <asp:Label ID="ENBUCodeLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="ENBUCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ENBIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="SectionIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="SectionDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                       
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="AttachFileTd" Font-Bold="true" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:FileUpload ID="File1" runat="server" contenteditable="false" TabIndex="2" />
                                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                <asp:Button ID="Button1" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
                                    AccessKey="C" CausesValidation="false" onMouseOut="this.className='ButCls'" Text="Up Load"
                                    Width="70px"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="HFTypeRow" runat="server" CssClass="MainTD">
                            <asp:TableCell ID="HFTypeTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                ></asp:TableCell>
                            <asp:TableCell ID="TableCell6" CssClass="MainTD" runat="server">
                                <asp:DropDownList ID="TemplateTypeDDL" CssClass="DDlCls" runat="server" onchange="SetEFromTblVisible()"
                                    Width="120px" TabIndex="3">
                                    <asp:ListItem Value="">&lt;Select&gt;</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label CssClass="<%=TempTypeCss%>" runat=server ID="TemPTYpeLBl"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ID="EFormTableReqTd" Style="font-weight: bold;" CssClass="MainTD"
                                ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList onclick="SetEFormTableVisible()" ID="EFormTableReqRBtn" runat="server"
                                    CssClass="RBList" RepeatDirection="Horizontal" TabIndex="4">
                                    <asp:ListItem Text="Not Required" Value="2" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="Required" Value="1"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EFormTableTr" CssClass="HideRow">
                            <asp:TableCell ID="EFormTableTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                ></asp:TableCell>
                            <asp:TableCell ID="TableCell7" CssClass="MainTD" runat="server">
                                <asp:Label ID="PopupLbl" runat="server" Text="<input type='button' onclick='FnEFormTablePopUp()' class='RsnPUP' tabindex='5'>"></asp:Label>
                                <asp:TextBox ID="EFormTableDesTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="EFormTableDesLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="EFormTableIdTxt" runat="server" Text="0" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                           <asp:TableRow>
                            <asp:TableCell ID="FormSelTd" Style="font-weight: bold;" runat="server" CssClass="MainTD"
                                ></asp:TableCell>
                            <asp:TableCell ID="TableCell14" runat="server" CssClass="MainTD">
                                <input class='<%=eFromCSS%>' onclick="FormSelPopUpFn()" type="button" tabindex="8">
                                <asp:Label ID="EFormDescLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="EFormIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFormCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFormDescTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                                <asp:TextBox ID="WofTxt" runat="server" CssClass="HideRow" Text="0"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="TableRow5" runat="server">
                            <asp:TableCell ID="TemplateTd" Style="font-weight: bold;" runat="server" ColumnSpan="2"
                                CssClass="SubHead"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow6" runat="server">
                            <asp:TableCell ID="EditorTd" runat="server" CssClass="MainTD" ColumnSpan="2">
                             
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" >
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
                <asp:TableCell ID="TableCell8" runat="server">
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow7" runat="server">
                <asp:TableCell ID="TableCell9" runat="server" CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="Center" ID="Table2" BorderWidth="0px">
                        <asp:TableRow ID="TableRow8" CssClass="HideRow" Height="0px" runat="server">
                            <asp:TableCell ID="TableCell10" runat="server"></asp:TableCell>
                            <asp:TableCell ID="TableCell11" runat="server"></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TableRow9" runat="server">
                            <asp:TableCell ID="TableCell12" CssClass="MainFoot" runat="server">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Width="70px"></asp:Button>
                            </asp:TableCell>
                            <asp:TableCell ID="TableCell13" CssClass="MainFoot" HorizontalAlign="Right" runat="server">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls" Height="20px" onMouseOver="this.className='ButexOCls'"
                                    onMouseOut="this.className='ButexCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="TableRow10" CssClass="HideRow" Height="0px" runat="server">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd" runat="server">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="FieldNameListTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="BndFldIdLstTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TpltUniqueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FieldTypeLstTxt" runat="server"></asp:TextBox>
                       
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById("DescTxt").focus()

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
			
			//window.setTimeout ("CallMe()",300)
		
	function CallMe()
	{
	    if(Fn_GetE("FCKeditor1Header1___Frame"))
	    {
	        Fn_GetE("FCKeditor1Header1___Frame").style .width ="750px"
	        Fn_GetE("FCKeditor1Header1___Frame").style .height ="250px"
        }
	    if(Fn_GetE("FCKeditor1___Frame"))
	    {
	        Fn_GetE("FCKeditor1___Frame").style .width ="750px"
        
        }
	    if(Fn_GetE("FCKeditor1Footer1___Frame"))
	    {
	        Fn_GetE("FCKeditor1Footer1___Frame").style .width ="750px"
	        Fn_GetE("FCKeditor1Footer1___Frame").style .height ="150px"
	    }
	}
			
//-->
</script>

</html>
