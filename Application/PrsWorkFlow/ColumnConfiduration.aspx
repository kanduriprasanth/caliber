<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ColumnConfiduration.aspx.vb"
    Inherits="PrsWorkFlow.ColumnConfiduration" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}
       
    function LoadFields()
    {
        var CategoryDDlVal = $("#CategoryDDl").val();
        var ConfigForDDlVal = $("#ConfigForDDl").val();
        
        if(CategoryDDlVal != "" && ConfigForDDlVal != "")
        {
            var pageURL = "ColumnConfiduration_Ajax.aspx";
            $.post(pageURL, { CategoryDDl: CategoryDDlVal,ConfigForDDl : ConfigForDDlVal }, function (result) {
                $("#FieldTblTr").attr("class","MainTD")
                $("#FieldTblTr").html($($(result).find("#FieldTblTr")).html());
                $("#FldcntTr").html($($(result).find("#FldcntTr")).html());
            }).fail(function() { alert("error"); }).always(function() {});
        }
        else
        {
            $("#ConfigColTr").text('');
        }
            $("#Nextbtnclk").val('');
    }
	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server" autocomplete="off">
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
                        <asp:TableRow ID="CategoryTr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CategoryDDl" runat="server" CssClass="MainTD" onchange="LoadFields()"
                                    AutoPostBack="true">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ConfigTr" runat="server">
                            <asp:TableCell CssClass="MainTD" ID="ConfigForTD" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ConfigForDDl" runat="server" CssClass="MainTD" onchange="LoadFields()"
                                    >
                                </asp:DropDownList>
                                <asp:TextBox ID="Nextbtnclk" CssClass="HideRow" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FieldTblTr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="Subtable" ID="FieldTable" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FormDdlTr" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="FormDdlTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="FormDdl" runat="server" CssClass="MainTD" AutoPostBack="true">
                                </asp:DropDownList>
                                <asp:TextBox ID="StandardCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FieldTbl1Tr" runat="Server">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="Subtable" ID="FieldTable1" EnableViewState="False"
                                    Width="100%" CellPadding="0" CellSpacing="1" HorizontalAlign="center">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ColConfigTR" CssClass="HideRow">
                            <asp:TableCell ID="ColConfigTD" CssClass="MainTD" ColumnSpan="6" Style="font-weight: bold;">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ConfigColTr" CssClass="HideRow">
                            <asp:TableCell ID="TableCell1" CssClass="MainTD" ColumnSpan="6">
                                <asp:Table ID="CofigTbl" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot" ColumnSpan="2">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="btnsubTr">
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="SubmitBtn" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" OnClientClick="Nextclick1()">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="NextBtnTr" CssClass="MainTd">
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:Button ID="BtnNext" OnClientClick="Nextclick()" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' Text="Next" AccessKey="C" onMouseOut="this.className='ButCls'"></asp:Button>
                            </asp:TableCell></asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow CssClass="HideRow" Height="0" ID="FldcntTr">
            <asp:TableCell>
                     <asp:TextBox ID="TotWITFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                     <asp:TextBox ID="TotFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FldIdLstTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WitSelFldCnt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WitFldIdLstTxt" CssClass="HideRow" runat="server"></asp:TextBox>
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

   function Nextclick()
   {
     document.getElementById("Nextbtnclk").value="True";
   }
   
      function Nextclick1()
   {
     document.getElementById("Nextbtnclk").value="Submit";
   }
   
     function MoveDown(RowCnt)
    {
        var RowCnt =RowCnt //GetRowCnt()
        MoveRows(RowCnt,RowCnt+1,1)
    }
    function MoveUp(RowCnt)
    {
        var RowCnt = RowCnt//GetRowCnt()
        MoveRows(RowCnt,RowCnt-1,2)
    }
    
     function MoveRows(Cnt1,Cnt2,type)
    {
        var TextFields = new Array();
        TextFields = "SelFldNameTD,SelFldId".split(",");

        var TotalFldCnt=$("#SelFldCnt").val();
        var TempVal,Obj1,Obj2;
        for(var k=0;k<TextFields.length;k++)
        {
                for(var i=0;i<TotalFldCnt;i++)
                {
                    Obj1 = document.getElementById(TextFields[k]+Cnt1)
                    if(type==1)
                    {
                       Obj2 = document.getElementById(TextFields[k]+(Cnt1+i+1)) 
                    }
                    else
                    {
                       Obj2 = document.getElementById(TextFields[k]+(Cnt1-(i+1))) 
                    }
                    if((Obj1 != null) && (Obj2 != null))
                    {
                      if(k>0)
                       {
                        TempVal = Obj1.value;
                        Obj1.value = Obj2.value;
                        Obj2.value = TempVal;
                        break;
                       }
                       else{
                        TempVal = Obj1.innerHTML;
                        Obj1.innerHTML = Obj2.innerHTML;
                        Obj2.innerHTML = TempVal;
                        break;
                        }
                    }
                } //end for                         
        }        
    }// end function move rows
    
        function MoveDown1(RowCnt)
    {
        var RowCnt =RowCnt //GetRowCnt()
        MoveRows1(RowCnt,RowCnt+1,1)
    }
    function MoveUp1(RowCnt)
    {
        var RowCnt = RowCnt//GetRowCnt()
        MoveRows1(RowCnt,RowCnt-1,2)
    }
    
       function MoveRows1(Cnt1,Cnt2,type)
    {
        var TextFields = new Array();
        TextFields = "WitSelFldNameTD,WitSelFldId".split(",");

        var TotalFldCnt=$("#WitSelFldCnt").val();
        var TempVal,Obj1,Obj2;
        for(var k=0;k<TextFields.length;k++)
        {

                for(var i=0;i<TotalFldCnt;i++)
                {
                    Obj1 = document.getElementById(TextFields[k]+Cnt1)
                    if(type==1)
                    {
                       Obj2 = document.getElementById(TextFields[k]+(Cnt1+i+1)) 
                    }
                    else
                    {
                       Obj2 = document.getElementById(TextFields[k]+(Cnt1-(i+1))) 
                    }
                    if((Obj1 != null) && (Obj2 != null))
                    {
                     if(k>0)
                       {
                        TempVal = Obj1.value;
                        Obj1.value = Obj2.value;
                        Obj2.value = TempVal;
                        break;
                       }
                       else{
                        TempVal = Obj1.innerHTML;
                        Obj1.innerHTML = Obj2.innerHTML;
                        Obj2.innerHTML = TempVal;
                        break;
                        }
                    }
                }                          
        }        
    }

 var FldIdArr =new Array()
 var WitFldIdArr=new  Array()
 
  FldCount =document.getElementById("TotFldCnt").value; //"<%=FldCount %>"
 var WitFldCount = document.getElementById("WitFldIdLstTxt").value;//"<%=WitFldCount %>"
 var ExpMessgae =""
 
 function getCheckFldIds(src,args)
 {
//    var FldCnt=getCheckEdFieldCount()
//    var WitFldCnt=getCheckWitFldCount()
//     
//    if ((WitFldCount != 0) &&  (WitFldCnt == 0)){ ExpMessgae= ExpMessgae + "Select At Least One Standard Work Item Field" + '\n-' }
//    if ((FldCount != 0) &&  (FldCnt == 0)) { ExpMessgae=ExpMessgae+ "Select At Least One Standard Login Fields" + '\n-' }
//  
//   if (ExpMessgae !="")
//   {
//      src.errormessage=ExpMessgae.substring(0,ExpMessgae.length-3)
//      args.IsValid=false;
//      Page_IsValid=false;
//   }
//   else
//   {
//      document.getElementById("FldIdLstTxt").value=FldIdArr.join(",");
//      document.getElementById("WitFldIdLstTxt").value=WitFldIdArr.join(",");
//   }  
 }
 
 function getCheckEdFieldCount()
 {
 
    var FldbaseID 
    var FldCnt=0 
    if (FldCount != 0)
     {
      FldCnt=$("[id='Fldchk_']:checked").length
//           for(var i=0;i<FldCount;i++)
//           {
//             // FldbaseID=document.getElementById("FlDIDTxt_" + i).value;
//              if(document.getElementById("Fldchk_" + i).checked==true ) { FldIdArr.push(FldbaseID); FldCnt= FldCnt+1; } 
//           }
     }
      return FldCnt;
 }

 function getCheckEdFieldCount1()
 {
    var FldbaseID 
    var FldCnt=0 
    FldCnt=$("[id^='Fldchk_']:checked").length;
//    if (FldCount != 0)
//     {
//           for(var i=0;i<FldCount;i++)
//           {
//              //FldbaseID=document.getElementById("FlDIDTxt_" + i).value;
//              if(document.getElementById("Fldchk_" + i).checked==true ) { FldCnt= FldCnt+1; } 
//           }
//     }
      return FldCnt;
 }
 function getCheckWitFldCount()
 {
  
    var WitFldbaseID 
    var WitFldCnt=0 
    if (WitFldCount != 0)
     {
           for(var i=0;i<WitFldCount;i++)
           {
              //WitFldbaseID=document.getElementById("WitFlDIDTxt_" + i).value;
              if(document.getElementById("WitFldchk_" + i).checked==true ) { WitFldIdArr.push(WitFldbaseID); WitFldCnt= WitFldCnt+1; } 
           }
     }
      return WitFldCnt;
 }

function fnCheckColSel(Cnt)
 {
   
   var FldCnt=getCheckEdFieldCount1()
   if (FldCnt > 7 ) 
   { 
     alert("Field Selection Should  Be Less Than or  equal to 7");
     document.getElementById("Fldchk_" + Cnt).checked=false
   }
 }
 
</script>

</html>
