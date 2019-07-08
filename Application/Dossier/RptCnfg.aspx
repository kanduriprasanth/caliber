<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptCnfg.aspx.vb" Inherits="Dossier.RptCnfg" %>

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
             document.getElementById("SpclTxt_"+BaseId).value=FldVAlArr[1]
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
        MoveRows(RowCnt,RowCnt+1)
    }
    function MoveUp(RowCnt)
    {
        var RowCnt = RowCnt//GetRowCnt()
        MoveRows(RowCnt,RowCnt-1)
    }


    function MoveRows(Cnt1,Cnt2)
    {
        var TextFields = new Array();
        TextFields = "SelFldCode,SelAName,SeqNumTxt,SelCntrlType,SelIsuFromCode,SelFormType,SelFormTabName".split(",");
        var LblFields  = new Array();
        LblFields = "SelFormTypeTd,SelIsuFromCodeTd,SelFldCtrlTypeTd".split(",");
        var TempVal,Obj1,Obj2;
        for(var k=0;k<TextFields.length;k++)
        {
            Obj1 = document.getElementById(TextFields[k]+Cnt1)
            Obj2 = document.getElementById(TextFields[k]+Cnt2)
            if((Obj1 != null) && (Obj2 != null))
            {
                TempVal = Obj1.value;
                Obj1.value = Obj2.value;
                Obj2.value = TempVal;
            }
        }
         for(var k=0;k<LblFields.length;k++)
        {
            Obj1 = document.getElementById(LblFields[k]+Cnt1)
            Obj2 = document.getElementById(LblFields[k]+Cnt2)
            if((Obj1 != null) && (Obj2 != null))
            {
                TempVal = Obj1.innerText;
                Obj1.innerText = Obj2.innerText;
                Obj2.innerText = TempVal;
            }
        }
        
    }
    
    function ShowHide(i)
    {
        var IsMenuAction = document.getElementById('TabelFieldTr' + i).className ;
        if(IsMenuAction == 'hide')
        {
            document.getElementById('TabelFieldTr' + i).className = 'MainTD';
            document.getElementById('B' + i).className = 'up';

            document.getElementById('TabelNameTr' + i).className = 'MainTDOver';
        }
        else
        {
            document.getElementById('TabelFieldTr' + i).className = 'hide';
            document.getElementById('B' + i).className = 'down';
            document.getElementById('TabelNameTr' + i).className = 'MainTDOver';
        }
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
                document.getElementById("ChartTr").className=""
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
                        <asp:TableRow >
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2"  >
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CodeTr" CssClass="HideRow">
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C" CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="DescTr" CssClass="HideRow">
                            <asp:TableCell ID="DescTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt"  runat="server" AccessKey="D" CssClass="TxtCls" MaxLength="250"
                                    onkeypress="taLimit()" onkeyup="taCount()" TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow id=AuthorisedUGpTr CssClass="HideRow">
                          <asp:TableCell ID="AuthorisedUGpTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                          <asp:TableCell CssClass="MainTD">
                               <input class='RsnPUP' onclick="fnOpenUgpPopUp()" tabindex="3" type="button">
                               <asp:Label ID="UgpLbl" runat="server" Text=""></asp:Label>
                               <asp:TextBox ID="UgpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                               <asp:TextBox ID="UgpLblTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                                                
                        <asp:TableRow>
                          <asp:TableCell ColumnSpan="2">
                          
                            <asp:Table ID="Table3" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                CssClass="SubTable" Width="100%">
                                <asp:TableRow ID="SplFilTr" CssClass="HideRow">
                                    <asp:TableCell ID="TableCell2" CssClass="MainTD" Width="30%">
                                         <asp:Label ID="FilReqLbl" CssClass="LblCls" runat="server" Text="Fixed Filter Required"></asp:Label>
                                     </asp:TableCell> 
                                    <asp:TableCell CssClass="MainTD">
                                        <asp:RadioButtonList ID="SplFilRBL" onclick="FnShowHide()" runat="server" CssClass="RBList" RepeatDirection=Horizontal >
                                        <asp:ListItem Value=1>Yes</asp:ListItem>
                                        <asp:ListItem Value=2>No</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </asp:TableCell>
                                 </asp:TableRow>
                                 <asp:TableRow ID="SplTr" CssClass="HideRow">
                                     <asp:TableCell ID="TableCell3" CssClass="MainTD">Select Filter Option</asp:TableCell>
                                     <asp:TableCell CssClass="MainTD">
                                        <asp:CheckBoxList ID="FilChk" CssClass="RBList" RepeatDirection="Horizontal" runat=server>
                                        <asp:ListItem Value=1>Filter By Date</asp:ListItem>
                                        <asp:ListItem Value=2>Filter By Status</asp:ListItem>
                                        </asp:CheckBoxList>
                                     </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>

                                <asp:Table ID="ResTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                CssClass="SubTable" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                         <asp:TableCell ColumnSpan="2">
                            <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                CssClass="HideRow" Width="100%">
                                </asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                        
                         <asp:TableRow ID="ColConfigTR" CssClass="HideRow">
                            <asp:TableCell ID="ColConfigTD" CssClass="MainTD" ColumnSpan="6" Style="font-weight: bold;" >
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="ConfigColTr" CssClass="HideRow">
                            <asp:TableCell ID="TableCell1" CssClass="MainTD" ColumnSpan="6">
                            <asp:Table ID="CofigTbl" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="SubTable" Width="100%"></asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ChrtCnfgReq" CssClass="HideRow">
                        <asp:TableCell CssClass="MainTD">Chart Configuration Required</asp:TableCell>
                        <asp:TableCell  CssClass="MainTD" ID="ChartReqTd">
                            <asp:RadioButtonList ID="ChrtReqRB" onclick="HideShowChrtTab()" CssClass="RBLCls" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value=1>Yes</asp:ListItem>
                            <asp:ListItem Value=2>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="ChartTr" CssClass="HideRow" >
                          <asp:TableCell ColumnSpan="2" >
                            <asp:Table ID="ChartCfgtab" runat=server CssClass="HideRow" Width="100%" CellPadding="0" CellSpacing="1"
                            HorizontalAlign="center"> 
                            
                                <asp:TableRow >
                                <asp:TableCell ColumnSpan=2 ID="ChartCfg" CssClass="SubHeadTD" Style="font-weight: bold;" Text="Chart Configuration"></asp:TableCell>
                                </asp:TableRow>
                                                     
                                <asp:TableRow CssClass="HideRow">
                                  <asp:TableCell ID="NoOfChartsTd" Style="font-weight: bold;" CssClass="MainTD"></asp:TableCell>
                                  <asp:TableCell CssClass="HideRow">
                                    <asp:TextBox ID="NoOfChartsTxt" runat=server Text=1 AutoPostBack=true></asp:TextBox>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                                <asp:TableRow>
                                  <asp:TableCell ID="ChartTypeTD" Style="font-weight: bold;" CssClass="MainTD" Text="Chart Type"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                   <asp:DropDownList ID="ChartTypeDDl" runat=server>
                                     <asp:ListItem Value="0"><< Select >></asp:ListItem>
                                     <asp:ListItem Value="7">Bar 3D</asp:ListItem>
                                     <asp:ListItem Value="8">Bar Clustered</asp:ListItem>
                                     <asp:ListItem Value="27">Pie</asp:ListItem>
                                   </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                                
                                 <asp:TableRow >
                                  <asp:TableCell ID="TableCell4" Style="font-weight: bold;" CssClass="MainTD" Text="X-Series"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                   <asp:DropDownList ID="xseriesDDl" runat=server >
                                   <asp:ListItem Value=""><< select >> </asp:ListItem>
                                   </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                                 <asp:TableRow >
                                  <asp:TableCell ID="TableCell5" CssClass="MainTD" Style="font-weight: bold;" Text="Y-Series"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                    <asp:DropDownList ID="yseriesDDl" runat=server >
                                     <asp:ListItem Value=""><< select >> </asp:ListItem>
                                    </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                                
                                 <asp:TableRow >
                                  <asp:TableCell ID="XSeriesTd" Style="font-weight: bold;" CssClass="MainTD" Text="Chart Width"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                    <asp:TextBox ID="XSeriesTxt" runat=server Text=2  Width="50" CssClass="TxtCls"></asp:TextBox> &nbsp;
                                    <asp:DropDownList ID="XseriecDDl" runat=server >
                                     <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                     <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                     <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                    </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                                 <asp:TableRow >
                                  <asp:TableCell ID="YSeriesTd" CssClass="MainTD" Style="font-weight: bold;" Text="Chart Height"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                    <asp:TextBox ID="YSeriesTxt" runat=server Text=2 Width="50" CssClass="TxtCls"></asp:TextBox> &nbsp;
                                      <asp:DropDownList ID="yseriecDDl" runat=server >
                                     <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                     <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                     <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                    </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                 
                                 <asp:TableRow>
                                  <asp:TableCell ID="ChartPosTd" CssClass="MainTD" Style="font-weight: bold;" Text="Chart Position"></asp:TableCell>
                                  <asp:TableCell CssClass="MainTD">
                                   <asp:DropDownList ID="ChartPosDDl" runat=server>
                                   <asp:ListItem Value=""><< select >> </asp:ListItem>
                                   <asp:ListItem  Text="Above List Table" Value="1"></asp:ListItem>
                                   <asp:ListItem  Text="Below List Table" Value="2"></asp:ListItem>
                                  </asp:DropDownList>
                                  </asp:TableCell>
                                </asp:TableRow>
                                
                         </asp:Table>
                         </asp:TableCell>
                        </asp:TableRow>
                        
                      
                        
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell HorizontalAlign=Left>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='HideRow' AccessKey="C" onMouseOut="this.className='ButCls'" Text="">
                                </asp:Button>
                                
                                <input type=button id="BackButn" value="Back" onMouseOver="this.className='ButOCls'"
                                onMouseOut="this.className='ButCls'" class="ButCls" onclick="chnagecss()" />
                                
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
                                    AccessKey="C" onMouseOut="this.className='ButCls'" ></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                               <asp:DropDownList ID="ColConfgDDL" runat="server" CssClass="HideRow" Width="200Px"></asp:DropDownList>
                               <asp:TextBox ID="FilReqTxt" runat="server" ></asp:TextBox>
                               <asp:TextBox ID="FilTxt" runat="server" ></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>        
    </form>

    <script language="javascript">
    
    function chnagecss()
    {
    
        document.getElementById("BtnNext").className = "ButCls" 
        document.getElementById("ResTab").className = "SubTable" 
        
        document.getElementById("CodeTr").className = "HideRow"
        document.getElementById("DescTr").className = "HideRow"
        document.getElementById("AuthorisedUGpTr").className = "HideRow"
        document.getElementById("ChartCfgtab").className = "HideRow"

        document.getElementById("btnConfirm").className = "HideRow"
        document.getElementById("SelFieldTab").className = "HideRow"
        document.getElementById("SelFieldTr").className = "HideRow"
    }
    
    
    function FnShowHide()
    {
        if(document.getElementById("SplFilRBL_0").checked==true)
        {
            document.getElementById("SplTr").className="";
            document.getElementById("SplFilRBL_1").checked=false;
            document.getElementById("FilReqTxt").value=1;
        }
        else
        {
            document.getElementById("SplTr").className="HideRow";
            document.getElementById("SplFilRBL_0").checked=false;
            document.getElementById("FilReqTxt").value=2;
        }
    }
    
    function FnFilterValid(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
        if(document.getElementById("SplFilRBL_0").checked==true)
        {
            if(document.getElementById("FilChk_0").checked==false && document.getElementById("FilChk_1").checked==false)
            {
                 args.IsValid=false;
                 Page_IsValid=false;
            } 
            else
            {
                var value=document.getElementById("FilChk").value;
                document.getElementById("FilTxt").value=value;
            }
        }
    }
    
    var Flag=false
    var flag1=0 
    function fnCheckAll()
    {
    	var isAllChk=document.getElementById("DocChkAll").checked//document.getElementById("DocChkAll").checked
		var Cnt=<%=TotalFldCnt%>;

       for(var i=0;i<Cnt;i++)
       {
            //document.getElementById("Chk"+i).checked=isAllChk;
            document.getElementById("Chk"+i).checked=isAllChk;
       }
    }

    function fncheck()
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
                document.getElementById("Chk"+i).checked=false;
                break;
            }
	    }
         if(flag==0)
        {
             alert("Select At Least One Column")
        }
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
            
            if(flag>5)
            {
                alert('Maximum 5 columns can be set for filter condition')
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

    </script>

    <script language="javascript">
<!--

    try
    {
        document.getElementById("CodeTxt").focus()
    }
    catch(ex)
    {
    }


//-->
    </script>

</body>
</html>

