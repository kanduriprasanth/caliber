<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DBoARDSRCSEL.aspx.vb" Inherits="DashBoard.DBoARDSRCSEL" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>


<script language=javascript >
   function fnOpenDataSourcePopUp()
        {
            
            var DDObj=document.all("DataSourceTypeDD")
               var SrcType = DDObj.options(DDObj.selectedIndex).value
               
               if(SrcType!="")
               {
                var pageURL = "DataSourcePopup.aspx?SrcType=" + SrcType
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                SpWinObj=null;
                SpWinObj = window.open(pageURL,'DataSourcePopUp',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
                }
                
                else
                {
                  alert("select Data Source Type")
                }
        }
        
         function fnAddGroupColms(DataSourceId,DataSourceName,ClsfNo)
        {
          
          document.getElementById("DataSourceIdTxt").value=DataSourceId
          document.getElementById("DataSourceNameTxt").value=DataSourceName
          document.getElementById("DataSourceLbl").innerHTML=DataSourceName
          document.getElementById("ClacificationTypeTxt").value=ClsfNo
          
          
          document.getElementById("RefButton").click()
        }
        
        
        
</script>
</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead" ColumnSpan=4>
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                    <asp:Literal ID="Literal1" runat="server"> <a href="MyDashboardPage.aspx"> Preview</a></asp:Literal>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan=4>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                       
                       <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="CodeTr" CssClass="HideRow">
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" ColumnSpan="1" Style="font-weight: bold;" Width="220px">Dash Board Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C"  CssClass="UCTxtCls" MaxLength="30"
                                    TabIndex="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                          <asp:TableRow  ID="DataSourceTypeTr">
                            <asp:TableCell CssClass="MainTD" ID="DataSourceTypeTd" Width=250px ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                            <asp:DropDownList CssClass="MainTD" ID="DataSourceTypeDD" runat="server" >
                            <asp:ListItem Value="" Selected=true> << Select >> </asp:ListItem>
                            <asp:ListItem Value=1  > Standard </asp:ListItem>
                            <asp:ListItem Value=2 >User Defined </asp:ListItem>
                            </asp:DropDownList>
                            </asp:TableCell>
						  </asp:TableRow>
						  
						  
                       
                        <asp:TableRow ID="DataSourceTR">
                            <asp:TableCell CssClass="MainTD" ID="DataSourceTd" ColumnSpan="1"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <input class='RsnPUP' onclick="fnOpenDataSourcePopUp()" tabindex="3" type="button">
                                <asp:Label ID="DataSourceLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSourceNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DataSourceIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ClacificationTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                                           
                        
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="SelFieldTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="SelFieldTab" runat="server" BorderWidth="0" CellPadding="0" CellSpacing="1"
                                    CssClass="HideRow" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        <asp:TableRow ID="ChartTr" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="6">
                            
                                <asp:Table ID="ChartCfgtab" runat="server" CssClass="HideRow" Width="100%" CellPadding="0"
                                    CellSpacing="1" HorizontalAlign="center">
                                    
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="6" ID="ChartCfg" CssClass="SubHeadTD" Style="font-weight: bold;"
                                            Text="Chart Configuration"></asp:TableCell>
                                    </asp:TableRow>
                                    
                                    <asp:TableRow CssClass="HideRow">
                                        <asp:TableCell ID="NoOfChartsTd" Style="font-weight: bold;" CssClass="MainTD" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="HideRow" ColumnSpan="3">
                                            <asp:TextBox ID="NoOfChartsTxt" runat="server" Text="1" AutoPostBack="true"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    
                                    <asp:TableRow>
                                        <asp:TableCell ID="ChartTypeTD" Style="font-weight: bold;" CssClass="MainTD" Text="Chart Type" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:DropDownList ID="ChartTypeDDl" runat="server">
                                                <asp:ListItem Value="0"><< Select >></asp:ListItem>
                                                <asp:ListItem Value="7">Bar 3D</asp:ListItem>
                                                <asp:ListItem Value="8">Bar Clustered</asp:ListItem>
                                                <asp:ListItem Value="27">Pie</asp:ListItem>
                                                <asp:ListItem Value="6">Line</asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                   
                                    <asp:TableRow CssClass="HideRow">
                                        <asp:TableCell ID="TableCell4" Style="font-weight: bold;" CssClass="MainTD" Text="X-Series" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:DropDownList ID="xseriesDDl" runat="server">
                                                <asp:ListItem Value=""><< select >> </asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ID="TableCell5" CssClass="MainTD" Style="font-weight: bold;" Text="Y-Series Name" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:TextBox ID="YseriesNameTxt" runat=server CssClass="TxtCls" ></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    
                                    <asp:TableRow>
                                        <asp:TableCell ID="XSeriesTd" Style="font-weight: bold;" CssClass="MainTD" Text="Chart Width" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="XSeriesTxt" runat="server" Text="2" Width="50" CssClass="TxtCls" ColumnSpan="3" ></asp:TextBox>
                                            &nbsp;
                                            <asp:DropDownList ID="XseriecDDl" runat="server">
                                                <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                                <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                                <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell ID="YSeriesTd" CssClass="MainTD" Style="font-weight: bold;" Text="Chart Height" ColumnSpan="3"></asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                            <asp:TextBox ID="YSeriesTxt" runat="server" Text="2" Width="50" CssClass="TxtCls" ></asp:TextBox>
                                            &nbsp;
                                            <asp:DropDownList ID="yseriecDDl" runat="server">
                                                <asp:ListItem Value="in" Text="in"></asp:ListItem>
                                                <asp:ListItem Value="Px" Text="Pixels"></asp:ListItem>
                                                <asp:ListItem Value="per" Text="Percentage"></asp:ListItem>
                                            </asp:DropDownList>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    
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
                        
                            <asp:TableCell HorizontalAlign="Left">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    CssClass="HideRow"  AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"></asp:Button>
                                     
                                <input type="button" id="BackButn" value="Back" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" class="HideRow" onclick="chnagecss()" />
                            </asp:TableCell>
                            
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:Button ID="RefButton" runat="server"  Class='HideRow'></asp:Button>
                                    
                                     <asp:Button ID="BtnNext" runat="server" onMouseOver="this.className='ButOCls'" Class='ButCls'
                                    onMouseOut="this.className='ButCls'" Text="Next"></asp:Button>
                                    
                             
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                        <asp:Button ID="Button1" runat="server" CausesValidation=false ></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                    <%--<asp:TextBox ID="EFormTableIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="EFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="eFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>--%>
                    <asp:TextBox ID="FormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormCodeTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelGrpByColCnttxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelFilterColCntTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelFldCounttxt" runat="server"></asp:TextBox>
                    
                    
                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>

    <script language="javascript">
    
    
//    function ShoweFormList()
//    {
//         if (document.getElementById("CategoryDDl").value =="")
//       {  alert ("Select Category")  }
//     else
//       { document.getElementById("Button1").click() }
//    }
      
    var Flag=false
    var flag1=0 
    var FormIDList =''
    var FormCodelist=''
    
    
    function fnCheckAll()
    {
    
    	//var isAllChk=document.getElementById("DocChkAll").checked//document.Form1.DocChkAll.checked
		var Cnt="<%=TotalFldCnt %>";
		
	       for(var i=0;i<Cnt;i++)
	       {  
	          document.getElementById("Chk"+i).checked=isAllChk;
	          if(isAllChk==true) 
	            {
	               FormIDList+=","+ document.getElementById ("FormId"+i).innerHTML
	               FormCodelist+="#*#"+ document.getElementById ("FormCode_"+i).innerText
	            }
	       }
	       
	        if (FormIDList!= '') 
	        {
	          FormIDList=FormIDList.substring(1,FormIDList.length)
	          FormCodelist=FormCodelist.substring(3,FormCodelist.length)
	          
	          document.getElementById ("FormIdTxt").value =FormIDList
	          document.getElementById ("FormCodeTxt").value =FormCodelist
	          
	        } 
	        else
	        {
	              document.getElementById ("FormIdTxt").value =""
	              document.getElementById ("FormCodeTxt").value =""
	        }
	        
	        	      	       
	      FormIDList =''
	      FormCodelist=''
	     
    }

    function fncheck(chckcnt)
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
                document.getElementById("Chk"+chckcnt).checked=false;
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
                alert('Maximum 10 Columns Can Be Set For Filter Condition')
                document.getElementById("FilterChk"+chckcnt).checked=false;
                break;
            }
            
	    }
    }
    
    
    
    function fnGroupByChk(chckcnt)
    {
        var flag=0
        var Cnt=<%=TotalFldCnt%>;   
        var Flag1=0  
        for(var i=0;i<Cnt;i++)
	    {
            if (document.getElementById("GroupByChk"+i).checked==false)	
            {
                flag = flag;
            }	 
            else 
            {
                 flag +=1;
            }
            
            if(flag>9)
            {
                alert('Maximun !0 Columns Can Be Set For Group By Condition')
                document.getElementById("GroupByChk"+chckcnt).checked=false;
                break;
            }
            
	    }
    }
    
    
    function ValidateChkbox(src,args)
    {
        args.IsValid=true;
        Page_IsValid=true;
        
        fncheck()
        
        if(document.getElementById ("FormIdTxt").value=="")
        {
            src.errormessage="Select at least one form" ;
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
        var Cnt=0;   
        for(var i=0;i<Cnt;i++)
        {
            if (document.getElementById("Chk_"+i).checked==true)
            {
                flag=1
            }
        }
        
        if(flag==0)
        {
            src.errormessage="" ;
            args.IsValid=false;
            Page_IsValid=false;  	
        }
    }
    
      
            
       

    </script>

</body>
</html>
