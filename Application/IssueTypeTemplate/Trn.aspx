<%@ Page Language="vb" AutoEventWireup="false" ValidateRequest="false" Codebehind="Trn.aspx.vb"
    Inherits="IssueTypeTemplate.Trn" %>

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
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
    
    function Fn_GetE(EleId,ParentObject)
	{
	    ParentObject = ParentObject? ParentObject : document;
	    return ParentObject.getElementById(EleId);
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
        {}
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
        //SetValues('<%=instanceName%>' + "Header1")
        //SetValues('<%=instanceName%>' + "Footer1")
        //SetValues('<%=instanceName%>')
        
        var Count='<%=Count%>'
        if(Count==2)
        {     
         readfldvalue("FCKeditor1" )
         readfldvalue("FCKeditor2")
        }
        else
        {
          readfldvalue("FCKeditor2")
        }

     //--------------------------------------
        args.IsValid=true;
        Page_IsValid=true;
    }
    
    function AddValidation(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;

        if (document.getElementById("TemTypeRDL_1").checked==true)
        {
          if ( (document.getElementById("ActPlanRdl_0").checked==false) && (document.getElementById("ActPlanRdl_1").checked==false) )
          {
            src.errormessage="Select Action Plan Table Required"
            args.IsValid=false;
            Page_IsValid=false;
          }
        }
    } 

function readfldvalue(instanceName)
{
     var FldIdList  =""
     var DataSheetIdList=""
     var FldId =""
     var DataSheetFld =""
     
     FldId=SetValues(instanceName + "Header1")
     DataSheetld =SetDatasheetValues(instanceName + "Header1")
     
     if (FldId!="")
     { FldIdList=FldId }
     
     if (DataSheetld!="")
     { DataSheetIdList=DataSheetld }
     
     
     if (FldIdList=="")
     {
         FldId=SetValues(instanceName + "Footer1")
         if (FldId!="")
         { FldIdList=FldId }
     }
     else 
     {
       FldId=SetValues(instanceName + "Footer1")
       if (FldId!="")
       {  FldIdList += "#*#"+ FldId  }
     }
     
     
     if (DataSheetIdList=="")
     {
         DataSheetld =SetDatasheetValues(instanceName + "Footer1")
         if (DataSheetld!="")
         { DataSheetIdList=DataSheetld }
     }
     else 
     {
       DataSheetld =SetDatasheetValues(instanceName + "Footer1")
       if (DataSheetld!="")
       {  DataSheetIdList += "#*#"+ DataSheetld  }
     }
     
     
    if (FldIdList=="")
     {
         FldId=SetValues(instanceName)
         if (FldId!="")
         { FldIdList=FldId }
     }
     else
     {
         FldId=SetValues(instanceName )
         if (FldId!="")
         {  FldIdList += "#*#"+ FldId }
     }
     
     if (DataSheetIdList=="")
     {
         DataSheetld =SetDatasheetValues(instanceName)
         if (DataSheetld!="")
         { DataSheetIdList=DataSheetld }
     }
     else 
     {
       DataSheetld =SetDatasheetValues(instanceName)
       if (DataSheetld!="")
       {  DataSheetIdList += "#*#"+ DataSheetld  }
     }
     
     
    if(instanceName=="FCKeditor1")
    {document.getElementById("PlanNameListTxt").value=FldIdList}
    else
    {document.getElementById("FieldNameListTxt").value=FldIdList}
    
    document.getElementById("DataSheetTypeLstTxt").value=DataSheetIdList
}


function SetValues(EditerId)
{
    var FieldNameTxtId
   
    if(EditerId=="FCKeditor1")
    { FieldNameTxtId="PlanNameListTxt" }
    else
    { FieldNameTxtId="FieldNameListTxt" }
    
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
                    {  FieldNameList +=  FieldNodes(i).id + "#*#" }

                    //For Reading WorkFlow Fields
                     if(FieldNodes(i).getAttribute("WorkFlowFld"))
                     { FieldNameList +=  FieldNodes(i).id + "#*#" }
                }
            }
        }
    }
      
   if(FieldNameList !="")
    {
        FieldNameList = FieldNameList.substr(0,FieldNameList.lastIndexOf("#*#"))
        FieldTypeValLst=FieldTypeValLst.substr(0,FieldTypeValLst.lastIndexOf(","))
     }
     return FieldNameList
}

function SetDatasheetValues(EditerId)
{
    var FieldNameTxtId
   
    if(EditerId=="FCKeditor1")
    { FieldNameTxtId="PlanNameListTxt" }
    else
    { FieldNameTxtId="FieldNameListTxt" }
    
    var FieldNameList =""
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
                    //For Reading data Sheet Fields Names Entry as well as binding
                    if(FieldNodes(i).getAttribute("DataSheetType"))
                    {  FieldNameList +=  FieldNodes(i).getAttribute("DataSheetType")+ "#*#" }
                   
                }
            }
        }
    }
      
   if(FieldNameList !="")
    {
        FieldNameList = FieldNameList.substr(0,FieldNameList.lastIndexOf("#*#"))
        
     }
     return FieldNameList
}




    </script>

    <script language="javascript">
<!--
RequestPrefix='<%=me.ClientID%>'
//-->

function ValidateTableSelection(src,args)
{
    var str="" 
    args.IsValid=true;
    Page_IsValid=true;
    var SelFlag =0
    for(var i=0;i<2;i++)
    {
        if(Fn_GetE("EFormTableReqRBtn_"+i).checked == true)
        {
            SelFlag=1
        }
    }
    if(SelFlag ==1)
    {
        if(Fn_GetE("EFormTableReqRBtn_1").checked == true)
        {
             if(Fn_GetE("EFormTableDesLab").innerHTML  =="")
             {
                str=str+ "<%=SelValForCaption%> " + Fn_GetE("EFormTableTd").innerHTML + "\n -"
             }
        }
    }
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

    SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
	}
    function GetENoteBookVals(ENBId,ENBAulId,ENBDesc,Secid,SecDesc)
    {
        Fn_GetE("ENBUCodeTxt").value = ((ENBDesc=="") || (SecDesc=="")) ? "" : ENBDesc + " / " + SecDesc
        Fn_GetE("ENBUCodeLab").innerHTML =  Fn_GetE("ENBUCodeTxt").value
        Fn_GetE("ENBIDTxt").value =ENBId
        Fn_GetE("ENBCodeTxt").value =ENBAulId
        Fn_GetE("SectionIdTxt").value =Secid
        Fn_GetE("SectionDescTxt").value =SecDesc
    }
    </script>
    
    <script  language="javascript">
    function ReadIdsOfAddedFields(EditerId)
    {
    var FieldNameTxtId ="FieldNameListTxt"
    var FieldNameList =""
    var returnvalue=""
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
                    if(FieldNodes(i).getAttribute("calfld"))
                    {
                        FieldNameList +=  FieldNodes(i).id + "#*#"
                    }
                    
                    if(FieldNodes(i).getAttribute("WorkFlowFld"))
                    {
                        FieldNameList +=  FieldNodes(i).id + "#*#"
                    }
                }
            }
           document.getElementById("FieldNameListTxt").value = (FieldNameList == "" ? "" : FieldNameList.substr(0,FieldNameList.lastIndexOf("#*#")))
           
          
           
           //returnvalue= (FieldNameList == "" ? "" : FieldNameList.substr(0,FieldNameList.lastIndexOf("#*#")))
        }
    }
    return returnvalue
}


    function CheckFldValidation_1(src,args)
    {
      args.IsValid=false;
  	  Page_IsValid=false;
  	  
  	  ReadIdsOfAddedFields('<%=instanceName%>' + "Header1")
      ReadIdsOfAddedFields('<%=instanceName%>' + "Footer1")
      ReadIdsOfAddedFields('<%=instanceName%>')
  	  
  	  
  	  args.IsValid=true;
      Page_IsValid=true;
     

     /* var HeaderIdList=ReadIdsOfAddedFields('<%=instanceName%>' + "Header1")
      var FooterIdList=ReadIdsOfAddedFields('<%=instanceName%>' + "Footer1")
      var BodyIdList=ReadIdsOfAddedFields('<%=instanceName%>')
      var FldList=""
      
       
      if(HeaderIdList!="")
      {FldList=HeaderIdList +"#*#" }
      if(FooterIdList!="")
      {FldList +=FooterIdList + "#*#"}
      if(BodyIdList!="")
      {FldList +=BodyIdList}
      
      document.getElementById("FieldNameListTxt").value=FldList
       
     var str="" 
      var ManFldList="<%=ManditoryFldID%>"
      var ManFldName="<%=ManFldNameList%>"
      var ManFldArr =new Array()
      var ManFldNameArr=new Array()
      ManFldArr=ManFldList.split("#*#")
      ManFldNameArr=ManFldName.split("#*#")
      var FldIDList="#*#" + HeaderIdList + "#*#"
      
      for(var i=0;i<ManFldArr.length;i++)
      {
          if(FldIDList.indexOf("#*#"+ ManFldArr[i] + "#*#")== -1)
          {
           str=str+ "Select " + ManFldNameArr[i] + " Field In Header" + "\n -"
          }
      }
      if(str!="")
	        {	
	            src.errormessage=str.substring(0,str.length-3)
	            args.IsValid=false;
  	            Page_IsValid=false;  	
	        }
	 else
	   {
	    args.IsValid=true;
  	    page_IsValid=true;  
	   }*/
    }

    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow ID="TableRow1" Height="20px" runat="server">
                <asp:TableCell ID="TableCell1" CssClass="MainHead" runat="server">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
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
                            <asp:TableCell ID="TableCell5" CssClass="SubHead" ColumnSpan="2" runat="server" Width="220px">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                         <asp:TableCell CssClass="MainTD" ID="IssTypeTd"  Style="font-weight: bold;" Width="31%"></asp:TableCell>
                         <asp:TableCell CssClass="MainTD" >
                         <asp:Label ID="IssTypelbl" runat="server"></asp:Label>
                         <asp:Label ID="IssuTypeTxt" runat="server"></asp:Label>
                         </asp:TableCell>
                         
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="DescTd" Width="31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    onkeypress="taLimit()" onkeyup="taCount()" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="CodeTd" Width="31%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2"></asp:TextBox>
                                    <asp:TextBox ID="EFormTableIdTxt" runat="server" Text="0" CssClass="HideRow"></asp:TextBox>
                                    <asp:TextBox ID="IsuCodeTxt" runat="server" Text="0" CssClass="HideRow"></asp:TextBox>
                                    <asp:TextBox ID="ManditoryFldIDs" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow >
                        
                        
                          <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" ID="OrientationTd" Width="220px"
                                Text="Orientation"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="OrientationRBn" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                    TabIndex="4">
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow >
                          <asp:TableCell CssClass="MainTD" ID="TemTypeTD" Style="font-weight: bold;" Width="31%"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                          
                             <asp:RadioButtonList CssClass="MainTD" RepeatDirection=Horizontal ID="TemTypeRDL" onClick="FnClearPreFlds()" runat=server AutoPostBack="True">
                                                           </asp:RadioButtonList>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow CssClass="HideRoW" ID="ActPlanTR" >
                          <asp:TableCell CssClass="MainTD" ID="ActPlanTd" Style="font-weight: bold;" Width="31%"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                               <asp:RadioButtonList CssClass="MainTD" RepeatDirection=Horizontal ID="ActPlanRdl" runat=server AutoPostBack=true >
                               <asp:ListItem Value="1">Yes</asp:ListItem>
                               <asp:ListItem Value="2">No</asp:ListItem>
                             </asp:RadioButtonList>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="HFTypeRow" runat="server"  CssClass="HideRow">
                            <asp:TableCell ID="HFTypeTd" Style="font-weight: bold;" CssClass="MainTD" runat="server"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell ID="TableCell6" CssClass="MainTD" runat="server">
                                <asp:DropDownList ID="TemplateTypeDDL" CssClass="DDlCls" runat="server" onchange="SetEFromTblVisible()"
                                    Width="120px" TabIndex="3">
                                    <asp:ListItem Value="">&lt;Select&gt;</asp:ListItem>
                                    <asp:ListItem Value="0">&lt;Header&gt;</asp:ListItem>
                                    <asp:ListItem Value="1">&lt;Footer&gt;</asp:ListItem>
                                    <asp:ListItem Value="2" Selected="True">&lt;eForm&gt;</asp:ListItem>
                                    <asp:ListItem Value="3">&lt;Body&gt;</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="PlanEditorTr1" runat="server" CssClass="HideRow">
                            <asp:TableCell ID="PlanEditorTd" Style="font-weight: bold;" runat="server" ColumnSpan="2"
                            CssClass="SubHead"></asp:TableCell>
                        </asp:TableRow>          
                        
                        <asp:TableRow ID="PlanEditorTr" runat="server" CssClass="HideRow">
                            <asp:TableCell ID="PlanEditor" runat="server" CssClass="MainTD" ColumnSpan="2">
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
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;" Width="220px">
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
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButexCls"  onMouseOver="this.className='ButexOCls'"
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
                    <asp:TextBox ID="PlanNameListTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DataSheetTypeLstTxt" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="BndFldIdLstTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TpltUniqueIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TempTypeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WofTxt" runat="server"></asp:TextBox>
                  </asp:TableCell>
                  <%--//added for back button issue--%>
                  <asp:TableCell>
            <input id="reloadValue" type="hidden" name="reloadValue" value="" />
</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--


//function ShowEditor()
//{
//  if(document.getElementById("ActPlanRdl_0").checked==true)
//  {
//     document.getElementById("PlanEditorTr").className="MainTD"
//     document.getElementById("PlanEditorTr1").className="MainTD"
//  }
//  else if(document.getElementById("ActPlanRdl_1").checked==true)
//  {
//     document.getElementById("PlanEditorTr").className="HideRow"
//     document.getElementById("PlanEditorTr1").className="HideRow"
//  }
//}
function fnSetToReasons(argValue)
{
    //document.getElementById("RemarksTxt").value = argValue
	Fn_GetE("RemarksTxt").value=argValue
}

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

<script language="javascript">
function SetLableValues()
{
    Fn_GetE("ENBUCodeLab").innerHTML =  Fn_GetE("ENBUCodeTxt").value
}
//setTimeout("SetLableValues()",100)


//To disable already executed templates at Issue Template Registration Initiation
function disableTemplate()
{
    
     switch (<%=Request.QueryString("IsuType")%>) //(<%=Isutype%>)
    {
    
      case 1: 
                document.getElementById("TemTypeRDL_1").setAttribute ("disabled",true,1);
                break; 
      case 2:
                document.getElementById("TemTypeRDL_0").setAttribute ("disabled",true,1);
                break;
      case 3:
                document.getElementById("TemTypeRDL_0").setAttribute ("disabled",true,1);
                document.getElementById("TemTypeRDL_1").setAttribute ("disabled",true,1);
               break;
      case 4:
                document.getElementById("TemTypeRDL_2").setAttribute ("disabled",true,1);
                break;
      case 5:
                document.getElementById("TemTypeRDL_0").setAttribute ("disabled",true,1);
                document.getElementById("TemTypeRDL_2").setAttribute ("disabled",true,1);
                break;
      case 6:
                document.getElementById("TemTypeRDL_1").setAttribute ("disabled",true,1);
                document.getElementById("TemTypeRDL_2").setAttribute ("disabled",true,1);
                break;
    }
    var TempType="<%=TempType%>"; //During Approvals
    var TempTypeArr=new Array();
     TempTypeArr=TempType.split(",");
     var TransType='<%=TransType%>';
     
     if(TransType<3){
     for(i=0;i<=TempTypeArr.length-1;i++)
     {
        switch (TempTypeArr[i]) //(<%=Isutype%>)
        {
        
          case "1": 
                    document.getElementById("TemTypeRDL_0").setAttribute ("disabled",true,1);
                    document.getElementById("TemTypeRDL_0").checked=false;
                    break; 
          case "2":
                    document.getElementById("TemTypeRDL_1").setAttribute ("disabled",true,1);
                    document.getElementById("TemTypeRDL_1").checked=false;
                    break;
          case "3":
                    document.getElementById("TemTypeRDL_2").setAttribute ("disabled",true,1);
                       document.getElementById("TemTypeRDL_2").checked=false;
                       break;
        }
     }
    }
}

disableTemplate();

function FnClearPreFlds(){

  var oEditor = FCKeditorAPI.GetInstance('FCKeditor2') ;
   if(oEditor)
     {
        var FieldNodes = oEditor.EditorDocument.documentElement.getElementsByTagName("span");
        if (FieldNodes.length >0)
        {
            for(var i=0;i<FieldNodes.length;i++)
            {
                if(FieldNodes[i])
                {
                     var Id= FieldNodes[i].getAttribute("id");
                    if(Id.indexOf("CapHolderId")==0 || Id.indexOf("M_")==0 || FieldNodes[i].calfld == 7 || FieldNodes[i].WorkFlowFld == 1 ||FieldNodes[i].calfld == 5  ||FieldNodes[i].calfld ==9)
                    {
                        FieldNodes[i].parentNode.removeChild(FieldNodes[i])
                        i--;
                    }
                }
            }
         }
       } 
  var oEditor1 = FCKeditorAPI.GetInstance('FCKeditor2Header1') ;
  
  if(oEditor1)
     {
        var FieldNodes = oEditor1.EditorDocument.documentElement.getElementsByTagName("span");
        if (FieldNodes.length >0)
        {
            for(var i=0;i<FieldNodes.length;i++)
            {
                if(FieldNodes[i])
                {
                     var Id= FieldNodes[i].getAttribute("id");
                    if(Id.indexOf("CapHolderId")==0 || Id.indexOf("M_")==0 || FieldNodes[i].calfld == 7 || FieldNodes[i].WorkFlowFld == 1 ||FieldNodes[i].calfld == 5  ||FieldNodes[i].calfld ==9)
                    {
                        FieldNodes[i].parentNode.removeChild(FieldNodes[i])
                        i--;
                    }
                }
            }
         }
       }  
      var oEditor2 = FCKeditorAPI.GetInstance('FCKeditor2Footer1') ;
  
  if(oEditor2)
     {
        var FieldNodes = oEditor2.EditorDocument.documentElement.getElementsByTagName("span");
        if (FieldNodes.length >0)
        {
            for(var i=0;i<FieldNodes.length;i++)
            {
                if(FieldNodes[i])
                {
                     var Id= FieldNodes[i].getAttribute("id");
                    if(Id.indexOf("CapHolderId")==0 || Id.indexOf("M_")==0 || FieldNodes[i].calfld == 7 || FieldNodes[i].WorkFlowFld == 1 ||FieldNodes[i].calfld == 5  ||FieldNodes[i].calfld ==9)
                    {
                        FieldNodes[i].parentNode.removeChild(FieldNodes[i])
                        i--;
                    }
                }
            }
         }
       }   
}

//back button issue
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

</html>
