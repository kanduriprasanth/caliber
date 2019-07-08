<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SumFldCfg_new.aspx.vb" Inherits="DashBoard.SumFldCfg_new" %>

<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head id="Head1" runat="server">
    <title>Summary Field Configuration</title>
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
    
        
    
    
    
    </script>

    <script language="javascript">
    
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
//        TextFields = "SelWidth,SelFldColName,SelFormTabName,SelAName,SelFormType,SelColNameWithTab,SelFldCtrlTypeTd,SelFldDBTypeTd,SelFormType,SelWofType,SelTableType,".split(",");
        TextFields = "SelFldColName,SelWidth,SelFormTabName,SelAName,SelFormType,SelColNameWithTab,SelFldCtrlTypeTd,SelFldDBTypeTd,SelWofType,SelTableType".split(",");
//        var LblFields  = new Array();
//        LblFields = "SelFormTypeTd,SelIsuFromCodeTd".split(",");
        var TotalFldCnt=<%=TotalFldCnt%>
        var TempVal,Obj1,Obj2;
        for(var k=0;k<TextFields.length;k++)
        {
//            if(k==1)
//            {
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
                
//            }
            
        }
//         for(var k=0;k<LblFields.length;k++)
//        {
//            if(k==1)
//            {
//                for(var i=0;i<TotalFldCnt;i++)
//                {
//                    Obj1 = document.getElementById(TextFields[k]+Cnt1)
//                    Obj2 = document.getElementById(TextFields[k]+(Cnt1+1))
//                    if((Obj1 != null) && (Obj2 != null))
//                    {
//                        TempVal = Obj1.value;
//                        Obj1.value = Obj2.value;
//                        Obj2.value = TempVal;
//                        break;
//                    }
//                }
//                
//            }
//            Obj1 = document.getElementById(LblFields[k]+Cnt1)
//            Obj2 = document.getElementById(LblFields[k]+Cnt2)
//            if((Obj1 != null) && (Obj2 != null))
//            {
//                TempVal = Obj1.innerText;
//                Obj1.innerText = Obj2.innerText;
//                Obj2.innerText = TempVal;
//            }
//        }
        
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
    
    function AliasNamesUniqueNess(src,args)
    {
//        var str="" 
//        args.IsValid=true;
//        Page_IsValid=true;
//		var Cnt1=<%=TotalFldCnt%>;

//        //Compares each and every record with the other leaving alrady compared record 
//        for(var i=0;i<Cnt1;i++)
//        {
//            for(var j=i+1;j<Cnt1;j++)
//            {
//                if((document.getElementById ("SelAName" + i).value.toLowerCase() == document.getElementById ("SelAName" + j).value.toLowerCase()) && (document.getElementById ("SelAName" + j).value != ""))
//                {
//                    str=str + " Alias Name \"" + document.getElementById ("SelAName" + j).value + " \"  Is Repeated " +  "\n-"
//                }
//            }
//        }

//        if(str!="")
//        {	
//            src.errormessage=str.substring(0,str.length-3)
//            args.IsValid=false;
//            Page_IsValid=false;
//        }
    }

    function TrimAliasName(Cnt)
    { 
        document.getElementById("SelAName" + Cnt ).value = document.getElementById("SelAName" + Cnt ).value.replace(/(?:(?:^|\n)\s+|\s+(?:$|\n))/g,"");
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
        
        function HideShowChrtTab()
        {
             if(document.getElementById("ChrtReqRB_" + 0).checked==true)
             {
                if(document.getElementById("yseriesDDl").length>1)
                {
                    document.getElementById("ChartTr").className=""
                }
                else
                {
                    alert('There is no integer column for displaying Y-axis data in chart');
                    document.getElementById("ChrtReqRB_" + 1).checked=true;
                    return false;                   
                }
             }
             else
             {
                document.getElementById("ChartTr").className="HideRow"
             }
             
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
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C"  CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DescTr" CssClass="HideRow">
                            <asp:TableCell ID="DescTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:TextBox ID="DescTxt" runat="server" AccessKey="D" CssClass="TxtCls" MaxLength="250"
                                    onkeypress="taLimit()" onkeyup="taCount()" TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                                                                     
                        
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="ResTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                       
                        
                        
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="4">
                                <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="HideRow" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="XSeriesChartTR" CssClass="HideRow">
                            <asp:TableCell ID="XSeriesChartTd" CssClass="MainTD" Style="font-weight: bold;"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <input class='RsnPUP' onclick="fnOpenSelFldPopUp()" tabindex="3" type="button">
                                <asp:Label ID="XSeriesChrtNamelbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="XSeriesChrtNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="XSeriesChrtcolTxt" runat="server" CssClass="HideRow"></asp:TextBox>
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
                    
                    <asp:TextBox ID="SelSumColNamesTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelSumColIdsTxt" runat="server"></asp:TextBox>
                    
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

       for(var i=0;i<Cnt;i++)
       {
            //document.all("Chk"+i).checked=isAllChk;
            document.getElementById("Chk"+i).checked=isAllChk;
       }
    }

    function fncheck(RowCnt)
    {
        var flag=0
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0  
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
                document.getElementById("Chk"+RowCnt).checked=false;
                break;
            }
	    }
//         if(flag==0)
//        {
//             alert("Select At Least One Column")
//        }
     }
    
    function fnFiltercheck(chckcnt)
    {
        var flag=0
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("FilterChk"+i).checked==false)	
            {
                flag = flag;
            }	 
            else 
            {
                 flag +=1;
            }
            
            if(flag>10)
            {
                alert('Maximum 10 columns can be set for filter condition')
                document.getElementById("FilterChk"+chckcnt).checked=false;
                break;
            }
            
	    }
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
    
    
    function ValidateTemplatesWorkFlow(src,args)
    {
        var str="" 
        args.IsValid=true;
        Page_IsValid=true;
        var flag=0
         var Cnt=<%=TotalFldCnt%>;   
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

    
    
     function fnOpenSelFldPopUp()
	    {
	        var pageURL = "DBXseriesPopUp.aspx?DatasrcId=0"
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
	    }
	    
	    function fnSetXseries(XseriesName,XseriesColID,TotalRecCnt)
        {
             document.getElementById("XSeriesChrtNamelbl").innerHTML=XseriesName
             document.getElementById("XSeriesChrtNameTxt").value=XseriesName
             document.getElementById("XSeriesChrtcolTxt").value=XseriesColID
        }

//-->
    </script>

    

</body>
</html>
