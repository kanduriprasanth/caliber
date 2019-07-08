<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DBComponetConfig.aspx.vb"
    Inherits="DashBoard.DBComponetConfig" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Configurations</title>
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery-1.6.3.min.js"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'
	function fnSetToReasons(argValue){
		document.getElementById("RemarksTxt").value = argValue
	}


  function fnOpenDataSourcePopUp()
        {
            //SetPopDimensions()
            var DDObj=document.all("DataSourceTypeDD")
               var SrcType = DDObj.options(DDObj.selectedIndex).value
            var pageURL = "DataSourcePopup.aspx?SrcType=" + SrcType
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
           SpWinObj=null;
            SpWinObj = window.open(pageURL,'DataSourcePopUp',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function fnShowCategoryPopUp()
     {
            //SetPopDimensions()
            
            
             
               var SelVal=$('input[name="IsCategoryRB"]:checked').val()
              
             if(SelVal==1){
              document.all("CategoryTr").className="MainTd"
             }else{
                 document.all("CategoryTr").className="HideRow"
                //  document.all("CategoryLbl").innerText=""
                //   document.all("CategoryTxt").value=""
             }
              
             
        }
        
        
        
         function fnOpenCategoryPopUp()
        {
            var SelVal=$('input[name="IsCategoryRB"]:checked').val()
              
             if(SelVal==1){
                var pageURL = "DBIssueCategoryPopup.aspx"  
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                SpWinObj=null;
                SpWinObj = window.open(pageURL,'IssueCategoryPopup',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
             }
           
           
        }
        
         function fnAddGroupColms()
        {
              
//            var SelGrpCol=document.all("GroupColumnsTxt").value; //  GroupColumnListTxt
//            var DDLObj= document.all("GroupNameDDl") 
//            DDLObj.value=DptionList(SelGrpCol)
        }
        function fnOpenGrpColumnPopUp()
        {
             //SetPopDimensions()'
            var groupCols=document.all("GroupColumnsTxt").value
            var pageURL = "DBGroupColumnPopup.aspx?GCol=" + groupCols
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
             SpWinObj=null;
            SpWinObj = window.open(pageURL,'DBPGrpColPopUpUp',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
          function fnOpenFilterColumnPopUp()
        {
            //SetPopDimensions()
        var FilterCols=document.all("FilterColumnsTxt").value
            
            var pageURL = "DBFilterColumnPopUp.aspx?FCol="  + FilterCols
            var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
             SpWinObj=null;
            SpWinObj = window.open(pageURL,'DBPFilterColPopUpUp',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
          function fnOpenXSeriesPopUp()
        {
           var DataSourceId=$("#DataSourceIdTxt").val();
           if(DataSourceId!='')
                {
                 var Datasrctype=document.getElementById("DataSourceTypeDD").value;
                 var DatasrcId=document.getElementById("DataSourceIdTxt").value;
                 var pageURL = "DBXseriesPopUp.aspx?Datasrctype="+Datasrctype+"&DatasrcId="+DatasrcId;
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                 SpWinObj=null;
                SpWinObj = window.open(pageURL,'DBPXSeriesPopUpUp',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();           
                }
            else
              alert("select Data Source");
            
        }
        
         function fnSetXseries(XseriesName,XseriesColID,TotColmnsCnt){
            document.getElementById("XSeriesLbl").innerHTML=XseriesName;
            document.getElementById("XSeriesColNameTxt").value=XseriesName;
            document.getElementById("XSeriesColIdsTxt").value=XseriesColID;        
            document.getElementById("XSeriesColsCntTxt").value=TotColmnsCnt;        
        }
        
        function OptionList(OptTxt){
        var OptionListParams=''
        if(OptTxt!=''){
          var OptAry=new Array()
          OptAry=OptTxt.split(',')
          for(i=0;i<OptAry.length;i++)
          {
          OptionListParams= OptionListParams + '<option>' + OptAry[i] + '</option>'
          }
          return OptionListParams
          
        }
        
        }
        function fnOpenYSeriesPopUp()
        {
            var DataSourceId=$("#DataSourceIdTxt").val();
             if(DataSourceId!='')
                  {
                    var Datasrctype=document.getElementById("DataSourceTypeDD").value;
                    var DatasrcId=document.getElementById("DataSourceIdTxt").value;
                    var pageURL = "DBYseriesPopUp.aspx?Datasrctype="+Datasrctype+"&DatasrcId="+DatasrcId;
                    var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                    SpWinObj=null;
                    SpWinObj = window.open(pageURL,'DBPXSeriesPopUpUp',features)
                    if(SpWinObj.opener == null) SpWinObj.opener=self;
                    SpWinObj.focus();
                }
            else
              alert("select Data Source");
        }
        
         function fnSetYseries(YseriesName,YseriesColID){
            document.getElementById("YSeriesLbl").innerHTML=YseriesName;
            document.getElementById("YSeriesNamesTxt").value=YseriesName;
            document.getElementById("YSeriesColIdsTxt").value=YseriesColID; 
            document.Form1.submit();       
          
        }
        
        
         function fnOpenReportTempPopUp()
        {
            //SetPopDimensions()
            var SelcatIndex=document.getElementById("CategoryDDl").value;
                if(SelcatIndex!=='')
                {
                var pageURL = "DBReportTemp.aspx?SelcatIndex=" + SelcatIndex
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                 SpWinObj=null;
                SpWinObj = window.open(pageURL,'DBPRepTempPopUpUp',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
                }
             else
              alert("Select Category");
                 
        }
        
        function fnRemSelXCol(RowCnt)
        {        
		   var Drilldwnlvls=$("#DrillDownTxt").val();         
            var select=document.getElementById('DrillDownDDl'+RowCnt).value;

            for (i=0;i<Drilldwnlvls;i++) {
            var selected=document.getElementById('DrillDownDDl'+i).value;
		        if(i!=RowCnt&&select!=''&&select==selected)
		         {
		           alert("Already selected");
		           document.getElementById('DrillDownDDl'+RowCnt).value="";
		         }	
               }
         }


        function fnReportTmpSetToCode(RepTmpBaseId,RepTmpDesc){
            document.getElementById("ReportTempLbl").innerHTML=RepTmpDesc;
            document.getElementById("ReportTempIDTxt").value=RepTmpBaseId;   
            document.getElementById("ReportTempNmTxt").value=RepTmpDesc;   
                 
        }

          function IsDigit1(e)
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
           
            if(e.shiftLeft==true)
                return false

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


	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server">Chart  & List  Configuration</asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="250px">Dashboard Unique ID</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" Text="<System Generated>" runat="server" CssClass="UCTxtCls" MaxLength="50" Width="200px"
                                    AccessKey="C" TabIndex="1" ReadOnly="True"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd">Description</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="2"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CategoryTr" CssClass="MainTd">
                            <asp:TableCell CssClass="MainTD" ID="CategoryTd">Issue Category</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CategoryDDl" runat="server" onchange="fnShowReportTemp()" CssClass="MainTD">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ReportTempTr">
                            <asp:TableCell CssClass="MainTD" ID="TableCell4">Report Template</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="fnOpenReportTempPopUp()" tabindex="3" type="button">
                                <asp:Label ID="ReportTempLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="ReportTempIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ReportTempNmTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DataSourceTypeTd" Width="250px">Data Source Type</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList CssClass="MainTD" ID="DataSourceTypeDD" runat="server">
                                    <asp:ListItem Value="1" Text="Standard" Selected="true"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="User Defined"></asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DataSourceTd">Data Source</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="fnOpenDataSourcePopUp()" tabindex="3" type="button">
                                <asp:Label ID="DataSourceLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="DataSourceNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="DataSourceIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TableCell1" Width="250px">X-Series</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="fnOpenXSeriesPopUp()" tabindex="3" type="button">
                                <asp:Label ID="XSeriesLbl" runat="server"></asp:Label>
                                <asp:TextBox ID="XSeriesColIdsTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="XSeriesColsCntTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="XSeriesColNameTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="XseriesNameTd" Width="250px">X-Series Name</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="XseriesNameTxt" runat="server" CssClass="TxtCls" MaxLength="50"
                                    Width="200px" AccessKey="C" TabIndex="8"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="GroupByTd" Width="250px">Group By Required</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="GroupByRBL" runat="server" CssClass="RBList" RepeatDirection="Horizontal"
                                    onclick="fnShowDrillDown()">
                                    <asp:ListItem Value="1" Text="Yes" Selected="true"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="No"></asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ChrtTypTd" Width="250px">Chart Type</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList CssClass="MainTD" ID="ChrtTypeDDl" runat="server">
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="HeightTd" Width="250px">Height</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="HeightTxt" onkeypress="return fnOnlyNumericals()" runat="server" CssClass="TxtCls" MaxLength="3"
                                    Width="50px" AccessKey="C" TabIndex="8"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="WidthTd" Width="250px">Width</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="WidthTxt" onkeypress="return fnOnlyNumericals()" runat="server" CssClass="TxtCls" MaxLength="3"
                                    Width="50px" AccessKey="C" TabIndex="8"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TableCell2" Width="250px">Y-Series</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input class='RsnPUP' onclick="fnOpenYSeriesPopUp()" tabindex="3" type="button">
                                <asp:Label ID="YSeriesLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="YSeriesNamesTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="YSeriesColIdsTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="YserCapTr" CssClass="SubHead">
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                <asp:Literal ID="Literal3" runat="server">Y-Series Settings</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="YserTabTr">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="YseriesTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="FilterColumnTd">Number of Filters</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="FilterColumnListTxt" onkeypress="return IsDigit1(event);" runat="server"
                                    AutoPostBack="true" CssClass="Txtcls" MaxLength="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="SubHead" ID="FilterCapTr">
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="Center">
                                <asp:Literal ID="Literal1" runat="server">Filter</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="SubHead" ID="FilterTr">
                            <asp:TableCell ColumnSpan="2" >
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="FilterTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DrillDownTr">
                            <asp:TableCell CssClass="MainTD" ID="TableCell3" Width="250px">Number of Drilldown Levels</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DrillDownTxt" onkeypress="return IsDigit1(event);" runat="server"
                                    AutoPostBack="true" CssClass="TxtCls" MaxLength="1" Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="SubHead" ID="DrillCapTr">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2" HorizontalAlign="Center">
                                <asp:Literal ID="Literal2" runat="server">Drilldown</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DrillTabTr">
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DrillDownTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="Table4">
                                    <asp:TableRow CssClass="HideRow" Height="0">
                                        <asp:TableCell></asp:TableCell>
                                        <asp:TableCell></asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="TableCell5" Width="250px">Chart Main Title</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="ChartMainTxt" MaxLength="50" runat="server" CssClass="TxtCls" Width="200px"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="TableCell7" Width="250px">Chart X-Axis Title</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="ChartXaxisTxt" MaxLength="50" runat="server" CssClass="TxtCls" Width="200px"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="TableCell8" Width="250px">Chart Y-Axis Title</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <asp:TextBox ID="ChartYaxisTxt" MaxLength="50" runat="server" CssClass="TxtCls" Width="200px"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" ID="TableCell6">Chart Preview</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
                                            <input class='RsnPUP' onclick="fnOpenPreview()" tabindex="3" type="button">
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
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" Text="Submit" onMouseOut="this.className='ButCls'">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="GroupColumnsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FilterColumnsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelectColumnsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CountColumnsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="CountIDColumnsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DataSourceViewTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="DataSourceQryTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="SelectColumnsIDSTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                    <asp:TextBox ID="GroupColumnsIDsTxt" CssClass="HideRow" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById('CodeTxt').focus()

var taMaxLength = 500
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
			
	function fnShowDrillDown()
     {
       var SelVal=$('input[name="GroupByRBL"]:checked').val()
       if(SelVal==1){
          document.all("DrillDownTr").className="MainTd"
          
         }else{
             document.all("DrillDownTr").className="HideRow"
         }
        }	
     function fnShowReportTemp(){
       var SelVal=document.getElementById("CategoryDDl").value;
          if(SelVal!=0){
              document.all("ReportTempTr").className="MainTd";
             }else{
                 document.all("ReportTempTr").className="HideRow";
        }	
     
     }   
        
//-->
</script>

</html>
