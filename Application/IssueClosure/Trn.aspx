<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="IssueClosure.Trn" %>

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
    <script language ="javascript" src ="../JScript/CustomValidationFuns.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}

     function IsDigit(e)  ///Function To check Numeric values and Float
        {//debugger
                var KeyIdentifierMap =
            {
            End            : 35,
            Home           : 36,
            Left           : 37,
            Right          : 39,
            'U+00007F'     : 46        // Delete
            
            }
            if ( !e ) e = event ;
            if(e.shiftLeft==true)return false
             var AvailableVal = window.event.srcElement.value.indexOf(".")
            var iCode = ( e.keyCode || e.charCode );

            if((iCode == 46) && (AvailableVal != -1))
            return false;
            if((iCode == 46) && (window.event.srcElement.value == ""))
            return false;
        
        
            var iCode = ( e.keyCode || e.charCode );
            if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

            return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 46                        // Delete
            || iCode == 9                        // Tab.
            )
        }
        
   function IsDigit1(e)  ///Function To check Numeric values
    {
       var KeyIdentifierMap =
      {
        End            : 35,
        Home        : 36,
        Left        : 37,
        Right        : 39,
        'U+00007F'    : 46        // Delete
      }
        if ( !e )
            e = event ;
       
        if(e.shiftKey==true)
            return false

      var iCode = ( e.keyCode || e.charCode );

      if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

             if(iCode == 39 ) return false;
         return (
            ( iCode >= 48 && iCode <= 57 )        // Numbers
            || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
            || iCode == 8                        // Backspace
            || iCode == 9                        // Tab.
            )
    }
    
    function fnOpenPopUp(BaseId,CtrlID)
    { 
        //SetPopDimensions()
        var pageURL = "../../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
        var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();

    }

    function fnCrSetToCode(BaseId,CtrlID,FldVAlArr)
    {
     if(FldVAlArr != '')
            {
         document.getElementById("<%=Fldprefix %>"+BaseId+"_"+CtrlID).value=FldVAlArr[0] //FldVAlArr[0]+ "/" + FldVAlArr[1];
         document.getElementById("Value_"+"<%=Fldprefix %>"+BaseId+"_"+CtrlID).innerHTML=FldVAlArr[1] //FldVAlArr[2]+ "/" + FldVAlArr[3];
         }
         else
         {
         document.getElementById("<%=Fldprefix %>"+BaseId+"_"+CtrlID).value=''; //FldVAlArr[0]+ "/" + FldVAlArr[1];
         document.getElementById("Value_"+"<%=Fldprefix %>"+BaseId+"_"+CtrlID).innerHTML=''; //FldVAlArr[2]+ "/" + FldVAlArr[3];
         }
         
    }

    function fnCrformSubmit(){
    //document.forms(0).submit()
    }

    
	//-->
    </script>
    
    
    <script language=javascript >
        
        //Back button Disable
         window.history.forward();
        function noBack() { window.history.forward(); }
        
        
           function fnFileupload(BaseId,CtrlID)
            {
            //SetPopDimensions()
                var pageURL = "../../IssueLogin,DocumentPopup.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID
                var features = "height=550,width=700,toolbar=no,menubar=no,status=no,scrollbars=no,top=250,left=300"
                SpWinObj = window.open(pageURL,'SpecCodes',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();

            }

            function fnCrSetToCode1(BaseId,CtrlID,DocIdLst,DocNameLst)
            {
                 document.getElementById("<%=Fldprefix %>"+BaseId+"_"+CtrlID).value=DocIdLst + '#*#' + DocNameLst;
                 document.getElementById("File_"+"<%=Fldprefix %>"+BaseId+"_"+CtrlID).innerHTML=DocNameLst;
            }
            


    
        </script>
                        
    <script language=javascript>

        function fnBatchpopup(BaseId,CtrlId)
        {
        
            var pageURL
            if(CtrlId==23)
             pageURL = "../IssueLogin/MultiBatchList.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1&prsType=<%=Request.QueryString("PrsType") %>" 
            else 
            pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=1&BatchType=1&prsType=<%=Request.QueryString("PrsType") %>" 
            
            var features = "height=450,width=700,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

        function SetBatchValue(BaseId,CtrlId,XmlString)
        {
        if(XmlString!= '')
        { 
            document.getElementById( "<%=Fldprefix%>"+ BaseId + "_" + CtrlId).value=XmlString
            document.getElementById( "Lbl_" + "<%=Fldprefix%>" + BaseId + "_" + CtrlId).className="MainTD"
        }
        else
        {
            document.getElementById( "<%=Fldprefix%>"+ BaseId + "_" + CtrlId).value=""
            document.getElementById( "Lbl_" + "<%=Fldprefix%>" + BaseId + "_" + CtrlId).className="HideRow"
        }
        }

        function fnBatchPreview(BaseId,CtrlId)
        {
             var pageURL 
             if(CtrlId==23)
              pageURL= "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId + "&StatusFlag=2&BatchType=1"
             else 
              pageURL = "../IssueLogin/MultiBatchList_DI.aspx?BaseId="+ BaseId + "&CtrlId=" + CtrlId   + "&StatusFlag=2&BatchType=1"
            
            var features = "height=450,width=600,toolbar=no,menubar=no,status=no,scrollbars=yes,top=250,left=350"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }

        </script>

</head>

<body ms_positioning="GridLayout" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="noBack">
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit1()"
                                    onkeyup="taCount1()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="HeaderTAb">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                                  
                                  
                            <asp:TableRow CssClass="HideRow">
                        
                           <asp:TableCell ID="EditableFileListtd"  Style="font-weight: bold;" CssClass="MainTD" ></asp:TableCell>
                           <asp:TableCell CssClass="MainTD" Width="200px">
                                <input type="button" onclick="FnEdiatbelFileAttach1()" class='RsnPUP' tabindex="5" >
                           </asp:TableCell>
                        </asp:TableRow>
                        
                                       
                       <asp:TableRow >
                         <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                           <asp:Table ID="ActPlnTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>  
                         </asp:TableCell>
                       </asp:TableRow>
                       
                        
                       <%--<asp:TableRow  id="ActonReqTr">
                          <asp:TableCell CssClass="MainTD"  ColumnSpan="1" ID="ActonReqTd" Style="font-weight: bold" Width="30%"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                           <asp:RadioButtonList CssClass="MainTD" runat=server ID="ActionReqRDL" onclick="CssChange()" RepeatDirection=Horizontal>
                            <asp:ListItem Value='Yes'>Yes</asp:ListItem>
                            <asp:ListItem Value='No'>No</asp:ListItem>
                           </asp:RadioButtonList>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="CActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1" ID="CActTd" Style="font-weight: bold"
                                Width="30%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CActTxt" runat="server" CssClass="TxtCls" MaxLength="2" Width="50px"
                                    AutoPostBack="true" TabIndex="3" onkeypress="return IsDigit1(event);"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="CrvActTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="CrvActTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>--%>
                        
                        
                        <asp:TableRow >
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table ID="ClsrFldTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>    
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow   ID="ChidIsuTr" runat =server  CssClass="HideRow" >
                          <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                            <asp:Table ID="ChidIsuTab" runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center"></asp:Table>    
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
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <input  id ="SubmitBtn" type ="button" onMouseOver="this.className='ButOCls'" Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"
                                    Width="70px" value ="Submit" onclick="Fnsubmit1(<%=TransType%>,'2')" />
                                    
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    CssClass="HideRow" AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70" Enabled=false>
                                </asp:Button>
                            </asp:TableCell>
                            
                             <asp:TableCell CssClass="MainFoot" >
                                <asp:Button ID="ActPlnBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="180" CausesValidation=false>
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign=Center>
                              <input type=button  class ="<%=ActDisable %>" onMouseOut="this.className='ButexCls'" onMouseOver="this.className='ButexOCls'"
                                   value="Confirm Action Plans"  onclick="FldValidation()"  />
                            </asp:TableCell>
                            
                            
                            <asp:TableCell CssClass="Hiderow" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                            
                             <asp:TableCell CssClass="MainFoot" HorizontalAlign=Right>
                              <input type =button  id="Button1" onMouseOver="this.className='ButexOCls'"
                                    Class='ButexCls' AccessKey="C" onMouseOut="this.className='ButexCls'"   value="Status report" style="width:130px" onclick="OpenIsueReport()"/>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="IssLogId" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="IssTypeId" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="ValdString" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="ChkBoxIdTXtx" CssClass="HideRow" runat=server></asp:TextBox>
                        <asp:TextBox ID="LodeTXT" CssClass="HideRow" runat=server Text="0"></asp:TextBox>
                         <asp:TextBox ID="EditabledocIDTxt" runat="server"> </asp:TextBox>
                        
                           <asp:TextBox ID="CustomValidFunTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="CunstomValIdsTxt" runat="server"> </asp:TextBox>
                    <asp:TextBox ID="ExpMsgTxt" runat="server"> </asp:TextBox>
                        
                        
                 </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
//document.getElementById("CodeTxt").focus()


//var taMaxLength1 = 500

//    function taLimit1() 
//	{
//		var taObj=window.event.srcElement;
//		if (taObj.value.length==taMaxLength1*1) return false;
//	}

//	function taCount1()
//	{
//		var taObj=window.event.srcElement;			
//		if (taObj.value.length>taMaxLength1*1){
//			taObj.value=taObj.value.substring(0,taMaxLength1*1);
//			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
//		}
//	}	


 function FnEdiatbelFileAttach1()
	   {
	     FnEdiatbelFileAttach("<%=IsuTransCode %>")
	   }

 function ValidateCheckBox(src,args) 
        {

            args.IsValid=true;
            Page_IsValid=true;

            if(document.getElementById("ChkBoxIdTXtx").value !="")
            {
                    var ErrerStr=""
                    var counter = 0;
                    var checkCnt=0;

                    var CtrlIdStr=document.getElementById("ChkBoxIdTXtx").value.substring(3)
                    var CtrlIdarr =new Array()
                    var CtrlvalArr =new Array()

                    CtrlIdarr=CtrlIdStr.split("$*$")

                    for(var i=0;i<CtrlIdarr.length;i++)
                    {
                        CtrlvalArr=CtrlIdarr[i].substring("#*#")
                        checkCnt=0
                        
                        counter=0
                        while(document.getElementById(CtrlvalArr[0]+"_"+counter)!=null)
                        {
                            if(document.getElementById(CtrlvalArr[0]+"_"+counter).checked==true) checkCnt++
                            counter++
                        }
                        break;
                        
                        if (checkCnt==0)
                          {
                            ErrerStr = ErrerStr + CtrlvalArr[1]  + "\n -"
                          }
                     }     
                        
                    if (ErrerStr != "") 
                    {
                        src.errormessage=ErrerStr.substring(0,ErrerStr.length-3)
                        args.IsValid=false;
                        Page_IsValid=false;
                    }
            }   
        }
        
   
    
    function CssChange()
    {
      if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
      { 
        document.getElementById("CrvActTr").className="MainTD";
        document.getElementById("CActTr").className="MainTD";
        
      }
      else if(document.getElementById("ActionReqRDL"+ "_1").checked == true)
      { 
       document.getElementById("CrvActTr").className="HideRow";
       document.getElementById("CActTr").className="HideRow";
      }
    }


    

//    var taMaxLength = 250
//	function taLimit() {
//		var taObj=window.event.srcElement;
//		if (taObj.value.length==taObj.maxLength*1) return false;
//	}

//	function taCount() {
//		var taObj=window.event.srcElement;			
//		if (taObj.value.length>taMaxLength*1){
//			taObj.value=taObj.value.substring(0,taMaxLength*1);
//			alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
//		}
//	}		
			
    function OpenIsueReport()
    {
        var pageURL = "../CAPAWORKS/WordFormatReport.aspx?Type=1&IsuLogID=" + document.getElementById("IssLogId").value  + "&IsuTypeId=" + document.getElementById("IssTypeId").value + "&PrsType=<%=Request.QueryString("PrsType") %> "  //<%=Request.QueryString("IssTypeId")%>  //<%=Request.QueryString("IsuLogID")%>
        var features = "height=600,width=800,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
     
//-->
</script>

<script language="javascript">

function FldValidation()
{

  var ErrMsg=""
  var ActPlnCnt="<%=ActPlnCnt%>"
  var ActplnIDs="<%=ActplnIDs%>"

  var ActplnIDArr=new Array()
  
  ActplnIDs=ActplnIDs.substring(1)
   ActplnIDArr=ActplnIDs.split(",")
   
//  if (ActplnIDs=="")
//  {
        for(var AcPlCnt=0;AcPlCnt<ActplnIDArr.length;AcPlCnt++)
        {
          if(ActplnIDArr[AcPlCnt]!="")
          {
                if (document.getElementById("ActPlanType_" + ActplnIDArr[AcPlCnt]).value=="")
                {  ErrMsg=ErrMsg+ "Select Action Plan Type Of " + ActplnIDArr[AcPlCnt] +  " Action Plan \n"  }
                
                if (document.getElementById("ActPlnDesc_" + ActplnIDArr[AcPlCnt]).value=="")
                {  ErrMsg=ErrMsg+ "Enter Description In Brief of " + ActplnIDArr[AcPlCnt] +  " Action Plan \n"  }
                
                
                if((document.getElementById("ActPlnSel_" + ActplnIDArr[AcPlCnt] + "_0").checked==false) && (document.getElementById("ActPlnSel_" + ActplnIDArr[AcPlCnt] + "_1").checked==false))
                { ErrMsg=ErrMsg+ "Select Status of " + ActplnIDArr[AcPlCnt] + "  Action Plan \n" }
          } 
            
        }    
    
            if ( (document.getElementById("ActionReqRDL"+ "_0").checked==false) && (document.getElementById("ActionReqRDL"+ "_1").checked==false))
            { ErrMsg=ErrMsg+ "Select Raise Any Action Plans" + "\n" }
            else
            {
              if(document.getElementById("ActionReqRDL"+ "_0").checked == true)
              { 
                if ( document.getElementById ("CActTxt").value=="")
                { ErrMsg=ErrMsg+"Enter value in: No.of Action Plans" }
              }
            }
//  }  
//  
//  else
//  {
//    var ActplnIDArr=new Array()
//    for(var AcPlCnt=0;AcPlCnt<ActplnIDArr.length;AcPlCnt++)
//      {
//       
//         if (document.getElementById("ActPlanType_" + ActplnIDArr[AcPlCnt]).value=="")
//            {  ErrMsg=ErrMsg+ "Select Action Plan Type Of " + ActplnIDArr[AcPlCnt] +  "Action Plan \n"  }
//            
//         if (document.getElementById("ActPlnDesc_" + AcPlCnt).value=="")
//            {  ErrMsg=ErrMsg+ "Select Description In Brief of " + AcPlCnt +  "Action Plan \n"  }
//      }
//  }
  
  if(ErrMsg !="")
  {  alert(ErrMsg.substring(0,ErrMsg.length-2)) }
  else
  { 
  document.getElementById("LodeTXT").value=1
  document.getElementById("ActPlnBtn").click() 
  }
  
}

    function fnWorkFlowPoup(WorkFlowId)
      {
            var pageURL = "../TestDynamicEForm/WorkFlowDetails.aspx?WorkFlowId=" + WorkFlowId + "&AT=G" 
            var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=250,left=150"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
      }
      
      
       var ErrerString =""
        function DateCtrlValidation(src,args)
        {
            ErrerString=""
            args.IsValid=true;
            Page_IsValid=true;

            var FnValues = document.getElementById("ValdString").value
            if(FnValues != "")
            {
                var ValidationStr=FnValues.substring(3)
                var ValidationStrArr =new Array()
                ValidationStrArr=ValidationStr.split("#*#")

                for(var i=0;i<=ValidationStrArr.length-1;i++)
                { 
                 eval(ValidationStrArr[i]+ ";")
                }
            }
            if(ErrerString!="")
            {
                src.errormessage=ErrerString.substring(0,ErrerString.length-3)
                args.IsValid=false;
                Page_IsValid=false;
            }
        }


        function DateValidation(CtrlID,CtrlType,CompareCtrlID,CtrlToCompareId,ChckOper,ErrerMessage)
        {

            var CompareCtrl
            var CtrlToCompare
            var CompareCtrlVal
            var CtrlToCompareVal 
            var DDgap=0
            var CompareCtrlAyy  = new Array()
            var CtrlToCompareAyy =new Array()
            
            if(CtrlType==1)
            {
                ThisMonth = <%=ThisMonth%>
                ThisYear = <%=ThisYear%>
                ThisDay = <%=ThisDay%>

                CtrlToCompareVal=DateSerialValue(ThisYear,ThisMonth,ThisDay)
                    if(document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + ":CalDateVal"))
                    {
                        CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + ":CalDateVal").value
                     }
                     else{
                     CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + "$CalDateVal").value
                     }
                if(CompareCtrl =="")   return;

                CompareCtrlAyy=CompareCtrl.split("/")
                CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
            }
            else
            {
               if(document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + ":CalDateVal"))
                {
                    CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + ":CalDateVal").value
                 }
                 else{
                 CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + "$CalDateVal").value
                 }
                //CtrlToCompare=document.getElementById("<%=Fldprefix%>" + CtrlToCompareId + "_" + CtrlID + ":CalDateVal").value
                if(CtrlToCompare =="")return;
                if(document.getElementById("<%=Fldprefix%>" + CompareCtrlID + "_" + CtrlID + ":CalDateVal"))
                {
                    CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + ":CalDateVal").value
                 }
                 else{
                    CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + "$CalDateVal").value
                 }
                // CompareCtrl=document.getElementById("<%=Fldprefix%>" + CompareCtrlID  + "_" + CtrlID + ":CalDateVal").value
                if(CompareCtrl =="") return;

                CompareCtrlAyy=CompareCtrl.split("/")
                CtrlToCompareAyy=CtrlToCompare.split("/")

                CompareCtrlVal=DateSerialValue(CompareCtrlAyy[2],CompareCtrlAyy[0],CompareCtrlAyy[1])
                CtrlToCompareVal=DateSerialValue(CtrlToCompareAyy[2],CtrlToCompareAyy[0],CtrlToCompareAyy[1])
            }

            DDgap=DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
            var ValidationSts = true
                     
            switch(parseInt(ChckOper))
            {
                case 1 :
                    if(DDgap<=0)  ValidationSts =false;
                    break;

                case 2:
                    if(DDgap>=0) ValidationSts =false;
                    break;
                    
                case 3:
                    if(DDgap<0) ValidationSts =false;
                    break;
                    
                case 4:
                    if(DDgap>0) ValidationSts =false;
                    break;
                case 5:
                    if(DDgap!=0) ValidationSts =false;
                    break;
            }
            if(ValidationSts == false) ErrerString = ErrerString + ErrerMessage  + "\n -"
        }



 if ("<%=Page.IsPostBack %>" == "False")
  {
    setTimeout("SetPropertiedToControlsAtPageLoad(2)",50)
  }
  
</script>

    <script language="vbscript">

        function DateSerialValue(Year,Month,Day)

        DateSerialValue= dateSerial(Year,Month,Day)

        End function

        function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)

        DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)

        End function

    </script>

<script language ="javascript" >
            
            
    function SetGlobalIssueID()
	{
	 GlobalIssueID= document.getElementById("IssLogId").value
	}
	
	setTimeout("SetGlobalIssueID()",20);
	
          
          
          TransType=<%=TransType %>;
          
            
    AjaxCheckDuration(document.getElementById("IssLogId").value,"SubmitBtn")

</script>

</html>
