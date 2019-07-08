<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportFieldSel.aspx.vb" Inherits="ReportConfig.ReportFieldSel" %>

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
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>

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
        
        function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}
        if(event.shiftLeft == true){return false}
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
    
        
    function FormSelPopUpFn()
    {
        var pageURL ="../EFormIssuance/EFormListPopUp.aspx?WrkType=16"
            var PWidth=600
            var PHeight=460
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            SpWinObj = window.open(pageURL,'SpecCodes',"height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
    }
    
    function fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,ValidationReq,ValFunID,WofId,WofDesc)
    {
        
        document.getElementById("EFormDescLab").innerHTML =KfLableVal
        document.getElementById("EFormIdTxt").value=KdIdVal
        document.getElementById("EFormCodeTxt").value=KdCodeVal
        
          
        if (KfLableVal != "")
        {
         document.getElementById("WrkFlowtr").className="MainTD"
         document.getElementById("WrkFlowPreview").innerHTML="<span class='MainTD' style='color:Blue;cursor:hand' onclick='fnWorkFlowPoup(" + WofId + ")'>" + WofDesc + "</span>"
         document.getElementById("WorkTypeTxt").value=16
        }
        else
        {
         document.getElementById("WrkFlowtr").className="HideRow"
         document.getElementById("WrkFlowPreview").innerHTML=""
         document.getElementById("WorkTypeTxt").value=0
        }
    }
    
    
    </script>

    <script language="javascript">
    
    function MoveDown(RowCnt,RecType)
    {
        var RowCnt =RowCnt //GetRowCnt()
        MoveRows(RowCnt,RowCnt+1,1)
    }
    function MoveUp(RowCnt,RecType)
    {
        var RowCnt = RowCnt//GetRowCnt()
        MoveRows(RowCnt,RowCnt-1,2)
    }


     function MoveRows(Cnt1,Cnt2,type,RecType)
    {
        var TextFields = new Array();
        
        if (RecType==1)
            TextFields = "SelAName, SelWidth, SelSelectQuary, SelParmName, SelAliesTableName, SelFldColName, SelFldCtrlTypeTd, SelFldDBTypeTd, SelFormID, SelFormTabName, SelColNameWithTab, SelAliasNameFrStp, SelTableType, SelFormCtrlId, SelsqlID".split(",");
        else if (RecType==2) //X-series
            TextFields = "SelXsrsAName, SelXsrsDrll, SelXsrsCol, SelXsrsColDataType, SelXsrsColCtrlId, SelXsrsColCaption, SelXsrsColTabType,SelXsrsParmName, SelXsrsAliesTableName".split(",");
        else if (RecType==3) //X-series
            TextFields = "SelysrsFldNameTD, SelYsesAggFUn, SelYsesChartType, SelysrsAName, SelYsrsCol, SelYsrsColDataType, SelYsrsColCtrlId, SelYsrsColCaption, SelYsrsColTabType, SelYsrsParmName, SelYsrsAliesTableName".split(",");

        var TotalFldCnt=<%=TotalFldCnt%>
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
                        TempVal = Obj1.value;
                        Obj1.value = Obj2.value;
                        Obj2.value = TempVal;
                        break;
                    }
                }
                
        }
        
    }
    
    function ShowHide(i)
    {
        var IsMenuAction = document.all('TabelFieldTr' + i).className ;
        if(IsMenuAction == 'hide')
        {
            document.all('TabelFieldTr'+ i).className = 'MainTD';
            document.all('B' + i).className = 'up';

            document.all('TabelNameTr'+ i).className='MainTDOver';
        }
        else
        {
            document.all('TabelFieldTr'+ i).className = 'hide';
            document.all('B' + i).className = 'down';
            document.all('TabelNameTr'+ i).className='MainTDOver';
        }
    }
    
    
    function TrimAliasName(Cnt)
    { 
        //document.getElementById("SelAName" + Cnt ).value = document.getElementById("SelAName" + Cnt ).value.replace(/(?:(?:^|\n)\s+|\s+(?:$|\n))/g,"");
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
			
			
	    function fnOpenUgpPopUp()
	    {
	        var pageURL = "UgpPopup.aspx"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
	    }
	    
	    function fnCrSetUgpCode(BaseId,UgpDesc)
        {
             document.getElementById("UgpLbl").innerHTML=UgpDesc
             document.getElementById("UgpIdTxt").value=BaseId
             document.getElementById("UgpLblTxt").value=UgpDesc
        }
        
      
        
			
    </script>

</head>
<body>
    <form id="Form1" runat="server">
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
                            <asp:TableCell CssClass="MainTd" ColumnSpan="4">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CodeTr" CssClass="HideRow">
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C" ReadOnly="true" CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DescTr" CssClass="HideRow">
                            <asp:TableCell ID="DescTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="DescTxt" runat="server" AccessKey="D" CssClass="TxtCls" MaxLength="250"
                                    onkeypress="taLimit()" onkeyup="taCount()" TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuthorisedUGpTr" CssClass="HideRow">
                            <asp:TableCell ID="AuthorisedUGpTd" CssClass="MainTD" Style="font-weight: bold;"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <input class='RsnPUP' onclick="fnOpenUgpPopUp()" tabindex="3" type="button">
                                <asp:Label ID="UgpLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="UgpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UgpLblTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RptTypeRw" CssClass="HideRow">
                            <asp:TableCell ID="RptTypeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Report Type</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="RptTypRbl" runat="server" RepeatDirection="Horizontal" CssClass="RBList"
                                    onclick="FnShowHide1()">
                                    <asp:ListItem Value="1" Selected="True">General Report</asp:ListItem>
                                    <asp:ListItem Value="2">Schedule Report</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FreqRw" CssClass="HideRow">
                            <asp:TableCell ID="FreqTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Frequency</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="FreqTxt" CssClass="TxtCls" MaxLength="2" Width="50px" runat="server"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList ID="FreqDDL" runat="server" Width="100px">
                                    <asp:ListItem Value="1">Day(s)</asp:ListItem>
                                    <asp:ListItem Value="2">Month(s)</asp:ListItem>
                                    <asp:ListItem Value="3">Year(s)</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="RevReqTr" CssClass="HideRow">
                            <asp:TableCell ID="RevReqTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Review Required</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="RevReqRB" runat="server" RepeatDirection="Horizontal" CssClass="RBList">
                                    <asp:ListItem Value="1" Selected="True">YES</asp:ListItem>
                                    <asp:ListItem Value="2">NO</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="DateRw" CssClass="HideRow">
                            <asp:TableCell ID="DateTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Date</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <uc2:CaliberCalender id="SDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="EFormTr" CssClass="HideRow">
                            <asp:TableCell ID="EFormTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                 <input class='RsnPUP' onclick="FormSelPopUpFn()" type="button" tabindex="8">
                                <asp:Label ID="EFormDescLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="EFormCodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFormIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WorkTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow  ID="WrkFlowtr" CssClass="HideRow">
                         <asp:TableCell CssClass="MainTD" ID="WorkFlowtd" Style="font-weight: bold;" runat="server" Width="220px"></asp:TableCell>
                         <asp:TableCell CssClass="MainTD" ColumnSpan="5" >
                           <asp:Label ID="WrkFlowPreview" runat=server Text=""></asp:Label>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="ResTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                               
                     
                                            
                                             
                        <asp:TableRow ID="OptionRow" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">No. Of Row</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RwTxt" Width="50px" runat="server" CssClass="TxtCls" MaxLength="1"  Text=1></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">No. Of Column</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="ColTxt" Width="50px" runat="server" CssClass="TxtCls" MaxLength="1"  Text=1></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="HideRow" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="SelXseriesTR" >
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="SelXseriesTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="HideRow" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                                               
                        <asp:TableRow ID="NoOfYseriesTr" >
                          <asp:TableCell id="NoOfYseriesTd" runat=server CssClass="MainTD" ColumnSpan="2"> </asp:TableCell>
                          <asp:TableCell  ColumnSpan=4>
                            <asp:TextBox ID="NoOfYserstxt" runat=server MaxLength=2 CssClass="TxtCls"></asp:TextBox>
                          </asp:TableCell>
                        </asp:TableRow>
                        
                        
                          <asp:TableRow ID="SelYseriesTR" >
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="SelyseriesTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="HideRow" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                   
                        <asp:TableRow id="XSeriesTr" CssClass="HideRow">
                            <asp:TableCell ID="XSeriesTd" Style="font-weight: bold;" CssClass="MainTD" Text="Chart Width"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="XSeriesTxt" runat="server" Text="2" Width="50" CssClass="TxtCls"></asp:TextBox>
                                &nbsp;
                                <asp:DropDownList ID="XseriecDDl" runat="server">
                                    <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                    <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                    <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                                    
                        <asp:TableRow id="YSeriesTr" CssClass="HideRow">
                            <asp:TableCell ID="YSeriesTd" CssClass="MainTD" Style="font-weight: bold;" Text="Chart Height"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="YSeriesTxt" runat="server" Text="2" Width="50" CssClass="TxtCls"></asp:TextBox>
                                &nbsp;
                                <asp:DropDownList ID="yseriecDDl" runat="server">
                                    <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                    <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                    <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ChartPosTr" CssClass="HideRow">
                            <asp:TableCell ID="ChartPosTd" CssClass="MainTD" Style="font-weight: bold;" Text="Chart Position"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="ChartPosDDl" runat="server">
                                    <asp:ListItem Value=""><< select >> </asp:ListItem>
                                    <asp:ListItem Text="Above List Table" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Below List Table" Value="2"></asp:ListItem>
                                </asp:DropDownList>
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
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text=""></asp:Button>
                                <input type="button" id="BackButn" value="Back" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" class="ButCls" onclick="chnagecss()" />
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
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
                    <asp:DropDownList ID="ColConfgDDL" runat="server" CssClass="HideRow" Width="200Px">
                    </asp:DropDownList>
                    <asp:TextBox ID="FilReqTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilTxt" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="FromQuaryTXt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="WhereQuaryTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelEFormIdList" runat=server></asp:TextBox>
                    <asp:TextBox ID="SelISuFormIdLst" runat=server></asp:TextBox>
                    
                    <asp:TextBox ID="SelXSeriesChk" runat=server></asp:TextBox>
                    <asp:TextBox ID="SelySeriesChkcnt" runat=server Text="0"></asp:TextBox>
                    <asp:TextBox ID="SelYseriesFldNames" runat=server Text="0"></asp:TextBox>
                                        
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
    function chnagecss()
    {
       window.history.back();
    }
   
    
 
    function ValidateSchuduleRport(src,args)
    {
      args.IsValid=true;
      Page_IsValid=true;
      var  ExpMessage =""
      src.errormessage="" ;
      
      
      if(document.getElementById("RptTypRbl_1").checked==true)
        {
            if(document.getElementById("FreqDDL").value=="" || document.getElementById("FreqTxt").value=="")
            {
                ExpMessage= ExpMessage + 'Select Value For: Frequency' + '\n'
            }
            
            if(document.getElementById("RevReqRB_0").checked==false && document.getElementById("RevReqRB_1").checked==false)
            {
               ExpMessage= ExpMessage + 'Select Value For: Review Required' + '\n'
            }
            
             var Flag=LastStDateChk();
        
            if(Flag==false)
            {
                ExpMessage= ExpMessage + 'Date Must Be Greater Than Or Equal To Current Date' + '\n'
            }
            
            if(document.getElementById("EFormIdTxt").value=="")
            {
               ExpMessage= ExpMessage + '- Select Value For: Activity Details Form' + '\n'
            }
            
            
        }
        
        if (ExpMessage  != "")
        {
          
            src.errormessage=ExpMessage;  
            args.IsValid=false;
            Page_IsValid=false;      
        }
        
      
      
    }
    
   
    var Flag=false
    var flag1=0 
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked
		var Cnt=<%=TotalFldCnt%>;

       for(var i=0;i<Cnt;i++)
       {
            document.getElementById("Chk"+i).checked=isAllChk;
       }
    }

    function fncheck()
    {
        var flag=0
        var Cnt=<%=TotalFldCnt%>;
        for(var i=0;i<Cnt;i++)
	    {
	        
            if (document.getElementById("Chk"+i).checked==false)	
            {
                flag = flag;
            }	 
            else 
            {
                 flag +=1;
            }
            
            if(flag> "<%=MaxSelValCnt %>")
            {
                alert('Maximum ' + <%=MaxSelValCnt %> +' columns can be set for selction')
                document.getElementById("Chk"+i).checked=false;
                break;
            }
            
	    }

     }
    
   function fnFiltercheck(chckcnt)
    {
        var flag=0
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0
        
        for(var i=0;i<Cnt;i++)
	    {
	        var obj=document.getElementById("FilterChk"+i)
	        var GrpObj=document.getElementById("GrpbyChk"+i)
	        var YObj =document.getElementById("YSeriesChk"+i)
	        
	        if(obj != null)
	        {
                if (obj.checked==false)	
                {
                    flag = flag;
                }	 
                else 
                {  
                
                   if (GrpObj !=null)
                     {
                        GrpObj.checked=false
                     }
                
                
                if (YObj !=null)
                     {
                       
                        YObj.checked=false
                     }
                    
                     flag +=1;
                }
            
                if(flag>10)
                {
                    alert('Not More Than 10 columns can be set for filter condition(s)')
                    document.getElementById("FilterChk"+chckcnt).checked=false;
                    break;
                }
              }
            
	    }
    }
    
    
    
    function fnGrpbycheck(chckcnt)
    {
    
        var flag=0
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0  
        
        for(var i=0;i<Cnt;i++)
	    {
	    
	     var obj=document.getElementById("FilterChk"+i)
	        var GrpObj=document.getElementById("GrpbyChk"+i)
	        
	        if(GrpObj != null)
	        {
                if (GrpObj.checked==false)	
                {
                    flag = flag;
                }	 
                else if (obj != null)
                {   
                    obj.checked=false
                    flag +=1;
                }
                
            if(flag>10)
            {
                alert('Not More Than 10 columns can be set for X Series')
                document.getElementById("GrpbyChk"+chckcnt).checked=false;
                break;
            }
         }   
	    }
	    
         document.getElementById("SelXSeriesChk").value=flag
	    
	 }
	    
        function FnYseriesChk(chckcnt)
        {
            var flag=0
            var FldNames=''
            var Cnt=<%=TotalFldCnt%>;   
            var Flag1=0  
            for(var i=0;i<Cnt;i++)
            {
            
                    var obj=document.getElementById("FilterChk"+i)
                    var YObj =document.getElementById("YSeriesChk"+i)
	        
	                if(YObj != null)
	                {
        	        
                        if (YObj.checked==false)	
                        {
                            flag = flag;
                        }	 
                        else  if(obj != null)
                        {    
                          obj.checked=false;
                          FldNames= FldNames + '#*#' + document.getElementById("FldAliesName"+i).value
                          flag +=1;
                        }

                      if(flag>10)
                        {
                        alert('Not More Than 10 columns can be set for X Series')
                        document.getElementById("YSeriesChk"+chckcnt).checked=false;
                        break;
                        }
                   }
            }
            
                document.getElementById("SelySeriesChkcnt").value=flag
                document.getElementById("SelYseriesFldNames").value=FldNames
                  
            
	   } 
	    
    
     function fncheck1()
    {
        var flag=1
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("Chk_1"+i).checked==false)	
            {
                flag=0
            }	 
            else 
            {
                Flag1=1
            }
	    }

    }
    
    function ValidateyseriesSel(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        
        var XSeriesSel =document.getElementById("SelXSeriesChk").value
        var YseiesCnt=document.getElementById("SelySeriesChkcnt").value
        
        if (XSeriesSel >0 && YseiesCnt ==0)
        {
          str="Select At Least One  y-Series Column"
        }
         if(str!='')
        {
            src.errormessage=str;
            args.IsValid=false;
            Page_IsValid=false;
        }
    }
    
    function ValidateTemplatesWorkFlow(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        
        var flag=0
        var Cnt=<%=TotalFldCnt%>;  
        var FldType 
        var FormId
        var FldTyepeArr= new Array();
        var FromIDarr= new Array();

         
        for(var i=0;i<Cnt;i++)
        {
            if (document.getElementById("Chk"+i).checked==true)
            {
                flag=1
            }
            
            
        }
        
        if(flag==0)
        {
            src.errormessage="Select at least one Report column" ;
            args.IsValid=false;
            Page_IsValid=false;
        }
        

        
    }


   
    </script>

    <script language="javascript">
<!--

    try
    {         
        document.getElementById('CodeTxt').focus()
    }
    catch(ex)
    {
    }
    
    function FnShowHide1()
    {
    
        var Cnt=<%=TotalFldCnt%>;
            
        if(document.getElementById("RptTypRbl_1").checked==true)
        {
            document.getElementById("FreqRw").className=""
            document.getElementById("DateRw").className=""
            document.getElementById("RevReqTr").className=""
            document.getElementById("EFormTr").className=""
        }
        else
        {
            document.getElementById("FreqRw").className="HideRow"
            document.getElementById("DateRw").className="HideRow"
            document.getElementById("RevReqTr").className="HideRow"
            document.getElementById("EFormTr").className="HideRow"
            document.getElementById("WrkFlowtr").className="HideRow"
            
            document.getElementById("FreqTxt").value=""
            document.getElementById("EFormDescLab").innerHTML=""
            document.getElementById("EFormCodeTxt").value=""
            document.getElementById("EFormIdTxt").value=""
            document.getElementById("WorkTypeTxt").value=""
            document.getElementById("WrkFlowPreview").innerHTML=""

        }
    }


function Filter_Popup(RowCnt,ControlId, DataType,ObjectType)
{
   var pageURL =""
   
    switch (parseInt(DataType))
    {
      case 1:  // Popup
           pageURL="../ReportConfig/ChkListPopup.aspx"
             break; 
      case 2: // DropDown
          pageURL="../ReportConfig/DepartmentList.aspx?"
             break;
      case 3: //Check bOx
             pageURL="../ReportConfig/ChkListPopup.aspx?"
             break;
      case 4: // Radi Button
            pageURL="../ReportConfig/ChkListPopup.aspx?"
             break;
      case 17: // Multi Object  Reference
            pageURL="../ReportConfig/MultirefObjPopup.aspx?"
             break;
    }
    
    var FilAName = document.getElementById("FilAName" + RowCnt).value
   
    var  Parmstr="RowCnt=" + RowCnt  + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType   + "&FilAName=" + FilAName //+ "DataType=" + DataType
    pageURL= pageURL +  Parmstr
       
    var winHeight =450 
    var winWidth = (screen.availWidth/100)*60;   
    var SpWinObj = window.open(pageURL,'DMSPopUp',"height="+winHeight+",width="+winWidth+",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
    SpWinObj.focus();
                
                
}


function SetDefaultValue(RowCnt,LblValue, TxtValue)
{
   document.getElementById("SpclLbl_" + RowCnt ).innerHTML=LblValue
   document.getElementById("SpclValueTxt_" +  RowCnt).value=LblValue
   document.getElementById("SpclTxt_" + RowCnt).value=TxtValue
}


//-->
    </script>
    

    <script language="vbscript">
    function LastStDateChk 
      
    IDate=document.all("SDate$CalDateVal").value
     
    if IDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	 
	
	IDateAry=split(IDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
     
    DDgap=DateDiff("d",Today,IDateVal)
      
	if DDgap>0 then
		LastStDateChk=false
    end if  
  
 End function 
    </script>

</body>
</html> 

