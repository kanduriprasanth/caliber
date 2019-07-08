<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SumFldCfgForm.aspx.vb" Inherits="DashBoard.SumFldCfgForm" %>
<%@ Register TagPrefix="uc2" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head id="Head1" runat="server">
    <title>Report Configuration</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
        
     function fnOpenPopUp(BaseId,CtrlID)
        {
            //SetPopDimensions()
            var pageURL = "../IssueLogin/PopupPage.aspx?BaseID="+ BaseId + "&CtrlId="+CtrlID + "&Type=1"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
         function fnCrSetToCode(BaseId,CtrlID,FldVAlArr,GenericCode)
        {
            if( FldVAlArr != '')
            {
             document.getElementById("SpclLbl_"+BaseId).innerHTML=FldVAlArr[1]
             document.getElementById("SpclTxt_"+BaseId).value=FldVAlArr[0]
            }
            else
            {
             document.getElementById("SpclLbl_"+BaseId).innerHTML=''
             document.getElementById("SpclTxt_"+BaseId).value=''
            } 
            
        }
        function fnCrformSubmit(){}
        
       
    
    </script>

    

</head>

<body>
    <form id="form1" runat="server">
    
    <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!----------ext-Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="CodeTr" >
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C"  CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="UpdateFreTr" >
                            <asp:TableCell ID="UpdateFreTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Update  frequency</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="UpdateFreTxt" onkeydown="return IsDigit1(event)" runat="server" AccessKey="C"  CssClass="TxtCls" MaxLength="2"
                                    TabIndex="2" Width="100px"></asp:TextBox> &nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="UpdateFreDDl" runat="server" AccessKey="C" CssClass="MainTD" Width="100px">
                                 <asp:ListItem Value =1 Selected=True>Day(s)</asp:ListItem>
                                 <asp:ListItem Value =2>Week(s)</asp:ListItem>
                                 <asp:ListItem Value =3>Month(s)</asp:ListItem>
                                </asp:DropDownList>
                                    
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="ResTabTr" > 
                        <asp:TableCell  ColumnSpan=4>
                           <asp:Table runat=server  ID=ResTab CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ></asp:Table>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
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
                            <asp:TableCell HorizontalAlign="Left">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
                                <input type="button" id="BackButn" value="Back" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" class="ButCls" onclick="chnagecss()" />
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right" >
                                <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='HideRow'
                                    AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                                <input type="button" id="PrevBtn" runat="server" onmouseover="this.className='ButOCls'"
                                    class='HideRow' onclick="FnPreview()" accesskey="C" onmouseout="this.className='ButCls'" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                   
                    <asp:TextBox ID="FilReqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="TotalFldCntTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormIDListTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ChkFlagCntTxt" runat="server" Text="0"></asp:TextBox>
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
     
     
    </form>
    
    
    <script language="javascript">
     function chnagecss()
    {
      window.history.back();
    }
    
    
    var Flag=false
    var flag1=0 
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked//document.Form1.DocChkAll.checked
		var Cnt=<%=TotalFldCnt%>;
		var FormIdList = document.getElementById("FormIDListTxt").value
		
		var FormArr= new Array()
		FormIDArr=FormIdList.split(",")

            for(var j=0; j<FormIDArr.length;j++)
            {
               var FldCount= document.getElementById("FieldCount" + FormIDArr[j])
               
               for(var k=0;k<FldCount;k++)
               {
                document.getElementById("Chk"+ FormIDArr[j] + (i+1) + k).checked=isAllChk;
               }
            }
            
    }

    function fncheck(FormID,FldCount,Totalcount)
    {
    
        var isAllChk=document.getElementById("chk" + FormID + FldCount).checked
        document.getElementById("chk" + FormID + FldCount).checked=isAllChk
    
        var flagcount =0
        if (isAllChk == true)
        {
         flagcount=document.getElementById("ChkFlagCntTxt").value
         flagcount++
         document.getElementById("ChkFlagCntTxt").value=flagcount++
        }
        else
        {
         flagcount=document.getElementById("ChkFlagCntTxt").value
         flagcount=(flagcount-1)
         document.getElementById("ChkFlagCntTxt").value=flagcount
        }
    
        var MaxSelValCnt=6
        if(MaxSelValCnt <flagcount )
            {
                alert('Maximum ' + 5 +' columns can be set for selction')
                document.getElementById("Chk"+FormID + FldCount).checked=false;
                
            }
     }
     
    
    function ValidateTemplatesWorkFlow(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        var flag=0
        var FormIdList = document.getElementById("FormIDListTxt").value
		var FormArr= new Array()
		FormIDArr=FormIdList.split(",")
		
            for(var j=0; j<FormIDArr.length;j++)
            {
               var FldCount= document.getElementById("FieldCount" + FormIDArr[j]).value
               for(var k=0;k<FldCount;k++)
               {
                    if (document.getElementById("Chk"+FormIDArr[j] +  k).checked==true)
                    {
                    flag=1
                      return;
                    }
               }
            
       }
       
        if(flag==0)
        {
            src.errormessage="Select at least one Summary column" ;
            args.IsValid=false;
            Page_IsValid=false;
        }
    }


    </script>

    

    

</body>
</html>
