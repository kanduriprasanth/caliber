<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptReportConfigurationReg.aspx.vb" Inherits="ReportConfig.RptReportConfigurationReg" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html  >
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    
    <script language=javascript >


        function noCopyMouse(e) {
            var isRight = (e.button) ? (e.button == 2) : (e.which == 3);

            if (isRight) {
                return false;
            }
        }

        function IsDigit2(e, Value)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
        {
            var AvailableVal = window.event.srcElement.value;
            if (isNaN(AvailableVal) == true || AvailableVal == '')
                window.event.srcElement.value = Value;
        }



        function noCopyKey(e) {
            var forbiddenKeys = new Array('c', 'x', 'v');
            var keyCode = (e.keyCode) ? e.keyCode : e.which;
            var isCtrl;


            if (window.event)
                isCtrl = e.ctrlKey
            else
                isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;


            if (isCtrl) {
                for (i = 0; i < forbiddenKeys.length; i++) {
                    if (forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
                        return false;
                    }
                }
            }

        }


        function IsDigit1(e)  ///Function To check Numeric values
        {
            if (e.shiftKey == true)
                return false;
            var KeyIdentifierMap =
        {
            End: 35,
            Home: 36,
            Left: 37,
            Right: 39,
            'U+00007F': 46		// Delete
        }
            if (!e)
                e = event;

            var AvailableVal = window.event.srcElement.value.indexOf(".")
            var iCode = (e.keyCode || e.charCode);

            if ((iCode == 46) && (AvailableVal != -1))
                return false;
            if ((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

            if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
                iCode = KeyIdentifierMap[e.keyIdentifier];
            if (iCode == 39) return false;
            return (
            (iCode >= 48 && iCode <= 57)		// Numbers
            || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
            || iCode == 8						// Backspace
            || iCode == 46						// Delete
            || iCode == 9	                    // Tab
            )



        }


        function IsDigit2(e)  ///Function To check Numeric values
        {
            if (e.shiftKey == true)
                return false;
            var KeyIdentifierMap =
        {
            End: 35,
            Home: 36,
            Left: 37,
            Right: 39,
            'U+00007F': 46		// Delete
        }
            if (!e)
                e = event;

            var AvailableVal = window.event.srcElement.value.indexOf(".")
            var iCode = (e.keyCode || e.charCode);

            if ((iCode == 46) && (AvailableVal != -1))
                return false;
            if ((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

            if (!iCode && e.keyIdentifier && (e.keyIdentifier in KeyIdentifierMap))
                iCode = KeyIdentifierMap[e.keyIdentifier];
            if (iCode == 39 || iCode == 46) return false;
            return (
            (iCode >= 48 && iCode <= 57)		// Numbers
            || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
            || iCode == 8						// Backspace
            || iCode == 46						// Delete
            || iCode == 9	                    // Tab
            )



        }
    
    
    </script>

</head>
<body>
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="tt" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                       
                       <asp:TableRow>
                            <asp:TableCell ColumnSpan="6" CssClass="MainTD">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="CategoryTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD" ColumnSpan="5">
                              <asp:Label ID="Categorylbl" runat=server  ></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
						  <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="ReportTypeTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD" ColumnSpan="5">
                              <asp:Label ID="ReporTypeLbl" runat=server  ></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
                        <asp:TableRow ID="CodeTr" CssClass="MainTd">
                            <asp:TableCell ID="CodeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="CodeTxt" runat="server" AccessKey="C"  CssClass="UCTxtCls" MaxLength="25"
                                    TabIndex="1" Width="200px" Text="<< System Generated >>" ReadOnly="true" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DescTr" CssClass="MainTd">
                            <asp:TableCell ID="DescTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="DescTxt" runat="server" AccessKey="D" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()"
                                     TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuthorisedUGpTr" CssClass="MainTd">
                            <asp:TableCell ID="AuthorisedUGpTd" CssClass="MainTD" Style="font-weight: bold;"
                                Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <input class='RsnPUP' onclick="fnOpenUgpPopUp()" tabindex="3" type="button">
                                <asp:Label ID="UgpLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="AuthorizedGrpIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UgpLblTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RptTypeRw" CssClass="MainTd">
                            <asp:TableCell ID="RptTypeTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Config. Type</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="RptTypRbl" runat="server" RepeatDirection="Horizontal" CssClass="RBList"
                                    onclick="FnShowHide1()"  AutoPostBack=true >
                                    <asp:ListItem Value="1" Selected="True">General Report</asp:ListItem>
                                    <asp:ListItem Value="2">Scheduled Report</asp:ListItem>
                                    <asp:ListItem Value="3">Column List</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DateRw" CssClass="HideRow">
                            <asp:TableCell ID="DateTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Scheduled Start Date</asp:TableCell>
                            <asp:TableCell Id="SchedStartDateTd" CssClass="MainTD" ColumnSpan="5">
                                <uc2:CaliberCalender id="SchedStartDateCal" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                            <asp:TableCell Id="SchedStartDateTd1" CssClass="HideRow" ColumnSpan="5"><%--added for modification--%>
                            <asp:Label ID="SchedStartDateTxt" CssClass="MainTd" runat="server" Text=""></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FreqRw" CssClass="HideRow">
                            <asp:TableCell ID="FreqTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Frequency</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:TextBox ID="SchedFrequancyTxt" CssClass="TxtCls" MaxLength="2" Width="50px" 
                                onkeypress='return IsDigit2(event);'  onblur='IsDigit2(event,1);' onmousedown='return noCopyMouse(event);' onkeydown='return noCopyKey(event);'
                                runat="server" Text="1"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList ID="SchedFrequancyUnitDDL" runat="server" Width="100px">
                                    <asp:ListItem Value="1">Day(s)</asp:ListItem>
                                    <asp:ListItem Value="2">Month(s)</asp:ListItem>
                                    <asp:ListItem Value="3">Year(s)</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="RevReqTr" CssClass="HideRow">
                            <asp:TableCell ID="RevReqTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px">Review Required</asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:RadioButtonList ID="SchedReviewReqRB" runat="server" RepeatDirection="Horizontal" 
                                CssClass="RBList" onclick="FnShowHide2()">
                                    <asp:ListItem Value="1" Selected="True">YES</asp:ListItem>
                                    <asp:ListItem Value="2">NO</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                        
                         <asp:TableRow ID="EFormTr" CssClass="HideRow">
                            <asp:TableCell ID="EFormTd" CssClass="MainTD" Style="font-weight: bold;" Width="220px"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                 <input class='RsnPUP' onclick="FormSelPopUpFn()" type="button" tabindex="8">
                                <asp:Label ID="EFormDescLab" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="SchedReviewEformIdTxt" runat="server" CssClass="HideRow">1</asp:TextBox>
                                <asp:TextBox ID="EFormDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="WorkTypeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          
                        
                        <asp:TableRow ID="FilterTr" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="FilterTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="TableRow1" >
                            <asp:TableCell ColumnSpan="6" CssClass="MainTD" BackColor="lightyellow" HorizontalAlign="center" >
                               <b> Special Filter -01  : </b> Initiation Department (Login User)  <asp:CheckBox ID="IsLoginDepartmentChk"  runat="server"/>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow ID="TableRow2" >
                            <asp:TableCell ColumnSpan="6" CssClass="MainTD" BackColor="lightyellow" HorizontalAlign="center" >
                               <b> Special Filter -02: </b> <asp:DropDownList runat="server" ID="SpecialFilterTypeDD" > 
                               </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="SelectTr" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="SelectTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="GroupNoTr" >
                            <asp:TableCell  CssClass="MainTD" ColumnSpan="6"  >
                            No.Of Grouping Set(s) /Drilldown Levels (DDL) <asp:TextBox ID="GroupNoTxt" runat="server" AccessKey="C" CssClass="TxtCls" MaxLength="1"
                            onkeypress='return IsDigit2(event);'  onblur='IsDigit2(event,0);' onmousedown='return noCopyMouse(event);' onkeydown='return noCopyKey(event);'  Width="75px" AutoPostBack=true >0</asp:TextBox>
                              </asp:TableCell>
                        </asp:TableRow>
                                    
                         <asp:TableRow ID="GroupTr" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="GroupTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                    <asp:TableCell CssClass="SubHeadTD" Width="80px">S. No.</asp:TableCell>
                                    <asp:TableCell CssClass="SubHeadTD"  > Selected Group(s)</asp:TableCell>
                                     <asp:TableCell CssClass="SubHeadTD" Width="450px">Title</asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         
                        <asp:TableRow ID="TrendNoTr" >
                            <asp:TableCell  CssClass="MainTD" ColumnSpan="6"  >
                            No.Of Trend Chart(s)  <asp:TextBox ID="TrendNoTxt" onkeypress='return IsDigit2(event)' onblur='IsDigit2(event,0);'  onmousedown='return noCopyMouse(event);' onkeydown='return noCopyKey(event);' onfocusout='maxlimit()' runat="server" AccessKey="C" CssClass="TxtCls" MaxLength="2"
                              Width="75px" AutoPostBack=true >0</asp:TextBox>
                             <span class=HideRow No.Of Chart Area(s)  <asp:TextBox ID="ChartNoTxt" runat="server" AccessKey="C" CssClass="TxtCls" MaxLength="1"
                              Width="75px" AutoPostBack=true  >1</asp:TextBox>></span> 
                              </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="TrendTr" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="TrendTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                    <asp:TableCell CssClass="SubHeadTD" Width="70px">S. No.</asp:TableCell>
                                     <asp:TableCell CssClass="SubHeadTD"  ColumnSpan="1" Width="200px" > Field </asp:TableCell>
                                  
                                    <asp:TableCell CssClass="SubHeadTD" Width="400px" > Alias Name </asp:TableCell>
                                     <asp:TableCell CssClass="SubHeadTD" Width="10px" > Function </asp:TableCell>
                                             <asp:TableCell CssClass="HideRow" Width="0px" >Chart Area</asp:TableCell>
                                      <asp:TableCell CssClass="SubHeadTD" Width="120px" >Chart Type </asp:TableCell>
                                        <asp:TableCell CssClass="SubHeadTD"  Width="70px" HorizontalAlign=Center>Display <br /> Value Label </asp:TableCell>
                                        <asp:TableCell CssClass="SubHeadTD"  Width="70px" HorizontalAlign=Center>Display <br /> Value % </asp:TableCell>
                                    
                                    </asp:TableRow>
                                    
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        
                         <asp:TableRow ID="ChartTR" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="ChartTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                 
                                    
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow ID="AllCatCheckTD" CssClass="MainTD">
                           <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="Table1" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                  <asp:TableCell ColumnSpan="3" CssClass="MainTD" HorizontalAlign=center > 
                                Integration With Other Reports Required Based on Issue Category   </asp:TableCell>
                                 <asp:TableCell ColumnSpan="3" CssClass="MainTD">  <asp:RadioButtonList ID="InegrationChkRbt" runat="server" RepeatDirection="Horizontal" CssClass="RBList"   onclick="FnCheckCategoryGroupCls()" ><asp:ListItem Value="1" >Yes</asp:ListItem>
                                    <asp:ListItem Value="2" Selected="True">No</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                           
                        </asp:TableRow>
                        
                        
                               <asp:TableRow ID="ParetoTR" CssClass="HideRow">
                           <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="Table3" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                  <asp:TableCell ColumnSpan="3" CssClass="MainTD" HorizontalAlign=center > 
                                Add Pareto Line To Chart Series 1  </asp:TableCell>
                                 <asp:TableCell ColumnSpan="3" CssClass="MainTD">  <asp:Checkbox runat="server" ID="ParetoChk" CssClass="TxtCls"  ></asp:Checkbox>
                            </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                           
                        </asp:TableRow>
                        
                        <asp:TableRow ID="RemarksTr" CssClass="HideRow">
                           <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="Table4" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
                                    <asp:TableRow>
                                  <asp:TableCell ColumnSpan="2" CssClass="MainTD" id="RemarksTd" HorizontalAlign=center > Remark(s)/Reason(s)  </asp:TableCell>
                                 <asp:TableCell ColumnSpan="2" CssClass="MainTD">  
                                 <asp:TextBox ID="RemarksTxt" runat="server" AccessKey="D" CssClass="TxtCls" onkeypress="taLimit()"
                                    onkeyup="taCount()"
                                     TabIndex="2" TextMode="MultiLine"
                                    Width="200px"></asp:TextBox>
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
                            <asp:TableCell ColumnSpan="2" HorizontalAlign =Left >
                                
                             <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'"    ></asp:Button>
                              
                            </asp:TableCell>
                            
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        <asp:TextBox ID="GrpByIDTxt" runat=server CssClass="HideRow"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CausesValidation=false ></asp:Button>
                        
                </asp:TableCell>
            </asp:TableRow>
            
             <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                    padding-bottom: 0px">
                    <uc1:EsignObj id="EsignObj1" runat="server" visible="true">
                    </uc1:EsignObj>
                </asp:TableCell>
               </asp:TableRow>
                
                
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2" >
                
                     <asp:TextBox ID="EFormIdListTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdListTxt" runat="server"></asp:TextBox>
                   
                            
                    <asp:TextBox ID="FormCtrlIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormSeqIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormTypeIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox runat="server" ID="Counttxt"></asp:TextBox>
                    <asp:TextBox runat="server" ID="WorktemIdList"></asp:TextBox>
                     <asp:TextBox runat="server" ID="CatIDTxt"></asp:TextBox>
                   
                    <asp:TextBox runat="server" ID="FilterCnt"></asp:TextBox>
                   <asp:TextBox runat="server" ID="SelectCnt"></asp:TextBox>
                    <asp:TextBox runat="server" ID="XSeriesCnt"></asp:TextBox>
                   <asp:TextBox runat="server" ID="YSeriesCnt"></asp:TextBox>
                   
                    <asp:TextBox runat="server" ID="xCoordHolder"></asp:TextBox>
                    <asp:TextBox runat="server" ID="yCoordHolder"></asp:TextBox>
                   
                       
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
  <script language="javascript">
<!--


      function CheckChartView(rowCnt, j) {
          if (document.getElementById("ChartView" + rowCnt + "_0").checked == true) {
              document.getElementById("Tr_" + rowCnt + (j + 1)).className = "HideRow"
              document.getElementById("AngleofInclination" + rowCnt).value = "5"
          }
          else {
              document.getElementById("Tr_" + rowCnt + (j + 1)).className = ""
          }

      }

      var taMaxLength = 250
      function taLimit() {
          var taObj = window.event.srcElement;
          if (taObj.value.length == taObj.maxLength * 1) return false;
      }

      function taCount() {
          var taObj = window.event.srcElement;
          if (taObj.value.length > taMaxLength * 1) {
              taObj.value = taObj.value.substring(0, taMaxLength * 1);
              alert("Characters exceeding limit\nMaximum Length: " + taMaxLength + " Characters")
          }
      }

      function maxlimit() {
          var limit = (document.getElementById("TrendNoTxt").value);
          if ((limit) > 15) {
              alert("Maximum No of trends is 15")
              document.getElementById("TrendNoTxt").value = 15
              return false;
          }
      }

      function Filter_Popup(RowCnt, ControlId, DataType, ObjectType) {
          var pageURL = ""

          switch (parseInt(DataType)) {
              case 1:  // Popup
                  pageURL = "../ReportConfig/ChkListPopup.aspx"
                  break;
              case 2: // DropDown
                  pageURL = "../ReportConfig/DepartmentList.aspx?"
                  break;
              case 3: //Check bOx
                  pageURL = "../ReportConfig/ChkListPopup.aspx?"
                  break;
              case 4: // Radi Button
                  pageURL = "../ReportConfig/ChkListPopup.aspx?"
                  break;
              case 17: // Multi Object  Reference
                  pageURL = "../ReportConfig/MultirefObjPopup.aspx?"
                  break;
          }

          var FilAName = document.getElementById("FiltAliasCap" + RowCnt).value

          var Parmstr = "RowCnt=" + RowCnt + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType + "&FilAName=" + FilAName //+ "DataType=" + DataType
          pageURL = pageURL + Parmstr

          var winHeight = 450
          var winWidth = (screen.availWidth / 100) * 60;
          var SpWinObj = window.open(pageURL, 'FilterPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();


      }


      function SetDefaultValue(RowCnt, LblValue, TxtValue) {
          document.getElementById("FiltDefualtLbl" + RowCnt).innerHTML = LblValue
          document.getElementById("FiltDefualtTxt" + RowCnt).value = LblValue
          document.getElementById("FiltDefualtDataIDs" + RowCnt).value = TxtValue
      }



      function System_Fld_Popup(RowCnt, ControlId, DataType, ObjectType) {
          var pageURL = "Sys_ChkListPopup.aspx?"

          var FilAName = document.getElementById("FiltAliasCap" + RowCnt).value
          var Parmstr = "RowCnt=" + RowCnt + "&ControlId=" + ControlId + "&ObjectType=" + ObjectType + "&FilAName=" + FilAName + "&DataType=" + DataType
          pageURL = pageURL + Parmstr

          var winHeight = 450
          var winWidth = (screen.availWidth / 100) * 60;
          var SpWinObj = window.open(pageURL, 'FilterPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();


      }



      function fnCheckSortSeqNo(SortSeqNoID) {
          var SortSeqNo = document.getElementById(SortSeqNoID).value
          var SelectCntVal = document.getElementById("SelectCnt").value
          if (isNaN(SortSeqNo) == true) {
              alert("Enter Integer Value From 1 To " + SelectCntVal)
              document.getElementById(SortSeqNoID).focus()
          }
      }

//-->
  </script>
   
 <script language="javascript"> 
<!--
     function sstchur_SmartScroller_GetCoords() {
         var scrollX, scrollY;

         if (document.all) {
             if (!document.documentElement.scrollLeft)
                 scrollX = document.body.scrollLeft;
             else
                 scrollX = document.documentElement.scrollLeft;

             if (!document.documentElement.scrollTop)
                 scrollY = document.body.scrollTop;
             else
                 scrollY = document.documentElement.scrollTop;
         }
         else {
             scrollX = window.pageXOffset;
             scrollY = window.pageYOffset;
         }

         document.getElementById('xCoordHolder').value = scrollX;
         document.getElementById('yCoordHolder').value = scrollY;
     }

     function sstchur_SmartScroller_Scroll() {
         var x = document.getElementById('xCoordHolder').value;
         var y = document.getElementById('yCoordHolder').value;
         window.scrollTo(x, y);
     }

     window.onload = sstchur_SmartScroller_Scroll;
     window.onscroll = sstchur_SmartScroller_GetCoords;
     window.onkeypress = sstchur_SmartScroller_GetCoords;
     window.onclick = sstchur_SmartScroller_GetCoords;
   
//-->
    </script>
  
  <script language="javascript">
<!--

      function Groupby_Popup(GrpNo) {
          var pageURL = "RptXSeriesOptions.aspx?GrpNo=" + GrpNo





          var winHeight = 450
          var winWidth = (screen.availWidth / 100) * 60;
          var SpWinObj = window.open(pageURL, 'XOptionPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();


      }


      function SetGrpValValue(GrpNo, PopUpSelSeqNos, SelectClause, FldList, DataTypeList, ParamNameList, FldCtrlIdList, AliasTableNameList, FldColNameList, FldObjectTypeList) {
          var FldListAry = new Array()
          var SelectClauseAry = new Array()
          var DataTypeListAry = new Array()
          var ParamNameListAry = new Array()
          var FldCtrlIdAry = new Array()
          var AliasTableNameListAry = new Array()
          var FldColNameListAry = new Array()
          var FldObjectTypeListAry = new Array()

          FldListAry = FldList.split('#*#')
          SelectClauseAry = SelectClause.split('#*#')

          AliasTableNameListAry = AliasTableNameList.split('#*#')
          FldColNameListAry = FldColNameList.split('#*#')
          FldObjectTypeListAry = FldObjectTypeList.split('#*#')


          //GroupByNamesLbl,GroupByAliasNameTxt,GroupBy,GroupBySelectClause,GroupByParamNames,GroupByCtrlIds,GroupByDataTypes,GroupByPopUpSeqNos
          document.getElementById("GroupPopUpSeqNos" + GrpNo).value = PopUpSelSeqNos
          document.getElementById("GroupControlID" + GrpNo).value = FldCtrlIdList
          document.getElementById("GroupDataType" + GrpNo).value = DataTypeList
          document.getElementById("GroupParam" + GrpNo).value = ParamNameList



          for (i = 0; i < FldListAry.length; i++) {
              if (i == 0) {
                  document.getElementById("GroupOrigCapLbl" + GrpNo).innerText = FldListAry[i]
                  document.getElementById("GroupOrigCap" + GrpNo).value = FldListAry[i]
                  document.getElementById("GroupAliasCap" + GrpNo).value = FldListAry[i]
                  document.getElementById("GroupTabColumn" + GrpNo).value = AliasTableNameListAry[i] + '.' + FldColNameListAry[i]
                  document.getElementById("GroupClause" + GrpNo).value = SelectClauseAry[i]
                  document.getElementById("GroupObjectType" + GrpNo).value = FldObjectTypeListAry[i]



              } else {
                  document.getElementById("GroupOrigCapLbl" + GrpNo).innerText += ';; ' + FldListAry[i]
                  document.getElementById("GroupOrigCap" + GrpNo).value += '#*#' + FldListAry[i]
                  document.getElementById("GroupAliasCap" + GrpNo).value += ';; ' + FldListAry[i]
                  document.getElementById("GroupTabColumn" + GrpNo).value += ',' + AliasTableNameListAry[i] + '.' + FldColNameListAry[i]
                  document.getElementById("GroupClause" + GrpNo).value += ',' + SelectClauseAry[i]
                  document.getElementById("GroupObjectType" + GrpNo).value += ',' + FldObjectTypeListAry[i]

              }

          }

          /*     */


      }

      function MultiObjGroupByClauseIDs(DataType, CtrlID) {

      }

      function MultiObjGroupByClauseSelects(DataType, CtrlID) {

      }

      function getPopUpSelSeqNos(GrpNo) {
          var PopSeqNos = document.getElementById("GroupPopUpSeqNos" + GrpNo).value
          // this below code is added for modification requirement in reports
          //for making check box checked if it is pre selected and disabling the remaining selected groups
          var SelectedGroups = new Array()
          var SelectedGroupsColNameAry = new Array()
          var cnt = 0
          var SelectedGroups = (document.getElementById("GroupTabColumn" + GrpNo).value).split(",")
          for (i = 0; i < SelectedGroups.length; i++) {
              var TempAry = new Array()
              TempAry = SelectedGroups[i].split(".")
              SelectedGroupsColNameAry[cnt] = TempAry[1]
              cnt = cnt + 1
          } //for

          return SelectedGroupsColNameAry.join('#*#')

      }

      function getOtherPopUpSelSeqNos(GrpNo) {
          GrpNo = parseInt(GrpNo)
          var TotalGroupCnt = document.getElementById("GroupNoTxt").value
          TotalGroupCnt = parseInt(TotalGroupCnt)
          var OtherPopUpSelSeqNosAry = new Array()
          var OtherSelectedGroupsAry = new Array()
          var cnt = 0
          for (i = 1; i < TotalGroupCnt + 1; i++) {
              if (i != GrpNo) {
                  OtherPopUpSelSeqNosAry[cnt] = document.getElementById("GroupPopUpSeqNos" + i).value
                  // this below code is added for modification requirement in reports
                  //for making check box checked if it is pre selected and disabling the remaining selected groups
                  var SelectedGroups = new Array()
                  var SelectedGroups = (document.getElementById("GroupTabColumn" + i).value).split(",")
                  for (j = 0; j < SelectedGroups.length; j++) {
                      var TempAry = new Array()
                      TempAry = SelectedGroups[j].split(".")
                      OtherSelectedGroupsAry[cnt] = TempAry[1]
                      cnt = cnt + 1
                  } //for
              } //if
          } //for

          return OtherSelectedGroupsAry.join('#*#')

      } //function

//-->
  </script>
  
  
  
  <script language="javascript">
<!--

      function Trend_Popup(TrendNo) {
          var pageURL = "RptYSeriesOptions.aspx?TrendNo=" + TrendNo





          var winHeight = 450
          var winWidth = (screen.availWidth / 100) * 60;
          var SpWinObj = window.open(pageURL, 'YOptionPopUp', "height=" + winHeight + ",width=" + winWidth + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();


      }


      function SetTrendValue(TrendNo, PopUpSelSeqNos, AgregateFunList, FldList, DataTypeList, ParamNameList, FldCtrlIdList, AliasTableNameList, FldColNameList, FldObjectTypeList) {

          var AgregateFunListAry = new Array()


          //TrendFieldAliasName,TrendSelFun,ChartArea,ChartType,TrendParamNames,TrendCtrlIds,TrendDataTypes,TrendPopUpSeqNos
          document.getElementById("TrendOrigCapLbl" + TrendNo).innerText = FldList
          document.getElementById("TrendOrigCap" + TrendNo).value = FldList

          document.getElementById("TrendAliasCap" + TrendNo).value = FldList

          var TrendFunDDL = document.getElementById("TrendFunction" + TrendNo);
          TrendFunDDL.innerHTML = '';
          if (AgregateFunList != '') {
              var OptionHTML = ''
              AgregateFunListAry = AgregateFunList.split(',')
              for (i = 0; i < AgregateFunListAry.length; i++) {
                  var optn = document.createElement("OPTION");
                  optn.text = AgregateFunListAry[i];
                  optn.value = AgregateFunListAry[i];
                  TrendFunDDL.add(optn, 0);
              } //for

          } //if

          document.getElementById("TrendDataType" + TrendNo).value = DataTypeList
          document.getElementById("TrendParam" + TrendNo).value = ParamNameList
          document.getElementById("TrendControlID" + TrendNo).value = FldCtrlIdList

          document.getElementById("TrendTabColumn" + TrendNo).value = AliasTableNameList + '.' + FldColNameList
          document.getElementById("TrendClause" + TrendNo).value = FldColNameList

          document.getElementById("TrendPopUpSeqNos" + TrendNo).value = PopUpSelSeqNos
          document.getElementById("TrendObjectType" + TrendNo).value = FldObjectTypeList


      }

      function getPopUpTrendSelSeqNo(TrendNo) {
          return document.getElementById("Trend" + TrendNo).value

      }

 

//-->
    </script>

<script language="javascript">
    function FnCheckCategoryGroupCls() {

        var GroupCnt = parseInt(document.getElementById("GroupNoTxt").value)
        var IsYes = 0
        var SelGroupTabColumn = ""
        if (document.getElementById("InegrationChkRbt_0").checked == true) { IsYes = 1 }
        if (GroupCnt > 0) {
            SelGroupTabColumn = document.getElementById("GroupTabColumn" + GroupCnt).value
        }

        if ((IsYes == 1) && (SelGroupTabColumn != "ILA.LMS_BAL_ISU_CAT_ID")) {
            alert("Select Only 'Issue - Category' In Last Level of Drilldown Settings")

        }
    }

    function FnShowHide2() {
        if (document.getElementById("SchedReviewReqRB_0").checked == true) {
            document.getElementById("EFormTr").className = ""
        }
        else {
            document.getElementById("EFormTr").className = "HideRow"
            document.getElementById("EFormDescLab").innerHTML = ""
            document.getElementById("EFormDescTxt").value = ""
            document.getElementById("SchedReviewEformIdTxt").value = ""
        }
    }

    function FnShowHide1() {


        if (document.getElementById("RptTypRbl_1").checked == true) {
            document.getElementById("FreqRw").className = ""
            document.getElementById("DateRw").className = ""
            document.getElementById("RevReqTr").className = ""
            document.getElementById("SchedFrequancyTxt").value = "1"

            if (document.getElementById("SchedReviewReqRB_0").checked == true) {
                document.getElementById("EFormTr").className = ""
            }
            else {
                document.getElementById("EFormTr").className = "HideRow"
                document.getElementById("EFormDescLab").innerHTML = ""
                document.getElementById("EFormDescTxt").value = ""
                document.getElementById("SchedReviewEformIdTxt").value = ""
            }
        }
        else {
            document.getElementById("FreqRw").className = "HideRow"
            document.getElementById("DateRw").className = "HideRow"
            document.getElementById("RevReqTr").className = "HideRow"
            document.getElementById("EFormTr").className = "HideRow"

            document.getElementById("SchedFrequancyTxt").value = ""
            document.getElementById("EFormDescLab").innerHTML = ""
            document.getElementById("EFormDescTxt").value = ""

            document.getElementById("SchedReviewEformIdTxt").value = ""


        }
    }
    // call this function on page load
    FnShowHide1()

    function FormSelPopUpFn() {
        var pageURL = "../EFormIssuance/EFormListPopUp.aspx?WrkType=259"
        var PWidth = 600
        var PHeight = 460
        var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
        var ScreenTop = parseInt(window.screen.height - PHeight) / 2;
        SpWinObj = window.open(pageURL, 'SpecCodes', "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft);
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }

    function fnGetFormVal(KdIdVal, KdCodeVal, KfLableVal, WofID, ValidationReq, ValFunID, WofId, WofDesc) {
        if (KdIdVal != '') {
            document.getElementById("EFormDescLab").innerHTML = KfLableVal
            document.getElementById("EFormDescTxt").value = KfLableVal
            document.getElementById("SchedReviewEformIdTxt").value = KdIdVal
        }
        else {
            document.getElementById("EFormDescLab").innerHTML = ''
            document.getElementById("EFormDescTxt").value = ''
            document.getElementById("SchedReviewEformIdTxt").value = 0
        }


    }
    
   

</script>

<script language="javascript">

    function validateListSel(src, args) {
        var ExpMessage = ""
        if (ExpMessage != "") {

            src.errormessage = ExpMessage;
            args.IsValid = false;
            Page_IsValid = false;
        }

    }
    function ValidateFilters(src, args) {
        var ExpMessage = ''

        args.IsValid = true;
        Page_IsValid = true;

        if ((document.getElementById("FilterCnt").value > "0") && (document.getElementById("RptTypRbl_1").checked == true)) {
            var FldCnt = document.getElementById("FilterCnt").value
            var DateFldExist = 0

            for (var i = 1; i <= FldCnt; i++) {
                var FilTerDtatype = document.getElementById("FiltDataType" + i).value
                var FiltEditType = document.getElementById("FiltEditTypet" + i).value

                if (FiltEditType == 1) {
                    ExpMessage = ExpMessage + document.getElementById("FiltAliasCap" + i).value + " Search Type Sholud be Non Editable" + '\n'
                }

                if (FilTerDtatype == "102" || FilTerDtatype == "113") {
                    if (document.getElementById("UCodeValStr" + i).value == "")
                        ExpMessage = ExpMessage + "Enter Value For Filter Field :" + document.getElementById("FiltAliasCap" + i).value + '\n'
                }
                else if (FilTerDtatype != "8") {
                    if (document.getElementById("FiltDefualtTxt" + i).value == "")
                        ExpMessage = ExpMessage + "Enter Value For Filter Field :" + document.getElementById("FiltAliasCap" + i).value + '\n'
                }
                else if (FilTerDtatype == 8) {
                    DateFldExist = 1
                }
            } // end of  For 

            if (DateFldExist == 0) {
                ExpMessage = ExpMessage + "For Scheduled Report At Least One Date Filter Must be Selected" + '\n'
            }
            if (document.getElementById("GroupNoTxt").value > 1) {
                ExpMessage = ExpMessage + "For Scheduled Report Only One Drilldown Level Is Allowed" + '\n'
            }

        }
        else if ((document.getElementById("FilterCnt").value == "0") && (document.getElementById("RptTypRbl_1").checked == true)) {
            ExpMessage = ExpMessage + "For Scheduled Report At Least One Date Filter Must be Selected" + '\n'
        }

        if (ExpMessage != '') {
            src.errormessage = ExpMessage;
            args.IsValid = false;
            Page_IsValid = false;
        }
    }
    function ValidateGroupAndTrends(src, args) {
        var ExpMessage = ''

        args.IsValid = true;
        Page_IsValid = true;

        if (document.getElementById("GroupNoTxt").value > 0) {
            if (document.getElementById("TrendNoTxt").value <= 0) {
                ExpMessage = ExpMessage + "No.Of Trend Chart(s) Must Be Greater  Than 0" + '\n'
            }
        }
        else if (document.getElementById("TrendNoTxt").value > 0) {
            if (document.getElementById("GroupNoTxt").value <= 0) {
                ExpMessage = ExpMessage + "No.Of Grouping Set(s) /Drilldown Levels (DDL) Must Be Greater  Than 0" + '\n'
            }
        }

        if (document.getElementById("GroupNoTxt").value > 0) {

            var DataTypeArr = new Array()

            var GrpDbTypeCnt = 0

            var NoOdDdl = document.getElementById("GroupNoTxt").value

            for (var GrpNo = 1; GrpNo <= NoOdDdl; GrpNo++) {
                DataTypeList = ''
                var DataTypeArr1 = new Array()

                var DataTypeList = document.getElementById("GroupDataType" + GrpNo).value
                if (DataTypeList != '') {
                    DataTypeArr1 = DataTypeList.split('#*#')
                    for (var arrcnt = 0; arrcnt < DataTypeArr1.length; arrcnt++) {
                        DataTypeArr.push(DataTypeArr1[arrcnt])
                    }

                }
            }

            for (var DataatypeCnt = 0; DataatypeCnt < DataTypeArr.length; DataatypeCnt++) {
                if (DataTypeArr[DataatypeCnt] == '17') {
                    GrpDbTypeCnt++;
                }
            }

            if (GrpDbTypeCnt > 1) {
                ExpMessage = ExpMessage + "More Than One Mutlti Object Reference Type Objects Grouping Is Not possible " + '\n'
            }
        }


        //// --- Treand Chart  Selection ---------------

        if (document.getElementById("TrendNoTxt").value > 0) {

            var ChartTypeArr = new Array()
            var ChartTypeCnt = 0
            var NoOFTrands = document.getElementById("TrendNoTxt").value
            var PieChartCnt = 0
            var OtherChartCnt = 0
            var SchChartcheck = 0

            for (var TrandNo = 1; TrandNo <= NoOFTrands; TrandNo++) {
                if (document.getElementById("RptTypRbl_1").checked == true) {
                    if (document.getElementById("TrendChartType" + TrandNo).value != "Column") {
                        SchChartcheck = 1
                    }
                }
                else {
                    if (document.getElementById("TrendChartType" + TrandNo).value == "Pie") {
                        PieChartCnt += 1
                    }
                    else {
                        OtherChartCnt += 1
                    }
                }
            }
            if (PieChartCnt > 0 && OtherChartCnt > 0) {
                ExpMessage = ExpMessage + "Pie chart cannot be combined with any other chart type in a single chart area " + '\n'
            }
            if (SchChartcheck > 0) {
                ExpMessage = ExpMessage + "For Scheduled Report Only Column Chart Is Allowed" + '\n'
            }
        }


        ///////-------------Integration Check-----------------
        var GroupCnt = parseInt(document.getElementById("GroupNoTxt").value)
        var IsYes = 0
        var SelGroupTabColumn = ""
        if (document.getElementById("InegrationChkRbt_0").checked == true) { IsYes = 1 }
        if (GroupCnt > 0) {
            SelGroupTabColumn = document.getElementById("GroupTabColumn" + GroupCnt).value
        }

        if ((IsYes == 1) && (SelGroupTabColumn != "ILA.LMS_BAL_ISU_CAT_ID")) {
            ExpMessage = ExpMessage + "Select Only 'Issue - Category' In Last Level of Drilldown Settings"

        }

        /////////////////////////////////////////////////



        if (ExpMessage != "") {

            src.errormessage = ExpMessage;
            args.IsValid = false;
            Page_IsValid = false;
        }


    }

    function ValidateSchuduleRport(src, args) {
        var ExpMessage = ''


        if (document.getElementById("RptTypRbl_1").checked == true) {
            if (document.getElementById("SchedFrequancyUnitDDL").value == "" || document.getElementById("SchedFrequancyTxt").value == "") {
                ExpMessage = ExpMessage + 'Select Value For: Frequency' + '\n'
            }
            else if (parseInt(document.getElementById("SchedFrequancyTxt").value) == "0") {
                ExpMessage = ExpMessage + 'Frequency Value Must Be Greater Than 0' + '\n'
            }
            if (document.getElementById("SchedReviewReqRB_0").checked == false && document.getElementById("SchedReviewReqRB_1").checked == false) {
                ExpMessage = ExpMessage + 'Select Value For: Review Required' + '\n'
            }

            else if (document.getElementById("SchedReviewReqRB_0").checked == true && document.getElementById("SchedReviewEformIdTxt").value == "") {
                ExpMessage = ExpMessage + 'Select Value For: Activity Details Form' + '\n'
            }

            if (document.getElementById("IsLoginDepartmentChk").checked == true) {
                ExpMessage = ExpMessage + '- For Scheduled Special Filter -01 Is Not Allowed ' + '\n'
            }

            var NotSelSpecialFils = '1,2,3,4,5,6,8,9,10,11,12,13,23,26,28,30,32'
            if (document.getElementById("SpecialFilterTypeDD").value != "") {
                var NotSelSpecialFilsArry = new Array();
                NotSelSpecialFilsArry = NotSelSpecialFils.split(",")
                var Specialfil2 = 0
                var SpeFIl2val = document.getElementById("SpecialFilterTypeDD").value
                for (var k = 0; k < NotSelSpecialFilsArry.length; k++) {
                    if (NotSelSpecialFilsArry[k] == SpeFIl2val)
                        Specialfil2 = 1
                }

                if (Specialfil2 == 1) {
                    ExpMessage = ExpMessage + '- Selected  Special Filter -02 Is Not Allowed  In Scheduled Report' + '\n'
                }

            }

            var Flag = VbStartDateValid();
            if (Flag == false) {
                ExpMessage = ExpMessage + '- Scheduled Start Date Must be Greater Than or Equal to Current Date' + '\n'
            }

        }


        // Validation For Column Configuration

        if (document.getElementById("RptTypRbl_2").checked == true) {
            if (document.getElementById("IsLoginDepartmentChk").checked == true)
            { ExpMessage = ExpMessage + '- For Column List Special Filter -01 Is Not Allowed ' + '\n' }
            if (document.getElementById("SpecialFilterTypeDD").value == "")
            { ExpMessage = ExpMessage + '- For Column List Must Selet Value For Special Filter -02  ' + '\n' }
            if (document.getElementById("GroupNoTxt").value > 0)
            { ExpMessage = ExpMessage + '- For Column List Groupings are Not Allowed ' + '\n' }
            if (document.getElementById("TrendNoTxt").value > 0)
            { ExpMessage = ExpMessage + '- For Column List Trend Chart(s) are Not Allowed ' + '\n' }
        }


        if (ExpMessage != "") {
            src.errormessage = ExpMessage;
            args.IsValid = false;
            Page_IsValid = false;
        }

    }


    function fnOpenUgpPopUp() {
        var pageURL = "UgpPopup.aspx"
        var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
        SpWinObj = window.open(pageURL, 'SpecCodes', features)
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }

    function fnCrSetUgpCode(BaseId, UgpDesc) {
        document.getElementById("UgpLbl").innerHTML = UgpDesc
        document.getElementById("AuthorizedGrpIDTxt").value = BaseId
        document.getElementById("UgpLblTxt").value = UgpDesc
    }

    function fnCrformSubmit() {

    }
   
</script>


<script language =vbscript>

function VbStartDateValid 
      
    SDate=document.all("SchedStartDateCal_CalDateVal").value
    if SDate="" then exit function

	ThisMonth = DatePart("m",Now())
	ThisYear = DatePart("yyyy",Now())
	ThisDay =DatePart("d",Now())
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	
	IDateAry=split(SDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
  
    DDgap=DateDiff("d",Today,IDateVal)
    
	if DDgap<0 then
		VbStartDateValid=false
    end if  

 End function 



  function DateDiffFun(CompareCtrlVal,CtrlToCompareVal)
         DateDiffFun= DateDiff("d",CompareCtrlVal,CtrlToCompareVal)
  End function
  
   function DateSerialValue(Year,Month,Day)
     DateSerialValue= dateSerial(Year,Month,Day)
    End function 
 
 
 
</script>

    <script language="javascript">

        function MoveDown(RowCnt, RecType) {
            var RowCnt = RowCnt //GetRowCnt()
            MoveRows(RowCnt, RowCnt + 1, 1)
        }
        function MoveUp(RowCnt, RecType) {
            var RowCnt = RowCnt//GetRowCnt()
            MoveRows(RowCnt, RowCnt - 1, 2)
        }


        function MoveRows(Cnt1, Cnt2, type) {
            var TextFieldsAry = new Array();


            var TextFieldStr = "SeleOrigCap"

            TextFieldStr += ",SeleAliasCap"
            TextFieldStr += ",SeleTabColumn"
            TextFieldStr += ",SeleParam"
            TextFieldStr += ",SeleDataType"
            TextFieldStr += ",SeleControlID"
            TextFieldStr += ",SeleClause"
            TextFieldStr += ",SeleSort"
            TextFieldStr += ",SeleObjectType"
            TextFieldStr += ",SeleWidth"

            TextFieldsAry = TextFieldStr.split(",")

            var TotalFldCnt = parseInt(document.getElementById("SelectCnt").value)
            var TempVal, Obj1, Obj2;
            var SeleOrigCapTempVal, SeleOrigCapTDObj1, SeleOrigCapTDObj2

            for (var k = 0; k < TextFieldsAry.length; k++) {

                for (var i = 0; i < TotalFldCnt; i++) {
                    Obj1 = document.getElementById(TextFieldsAry[k] + (Cnt1))
                    SeleOrigCapTDObj1 = document.getElementById("SeleOrigCapTD" + (Cnt1))
                    if (type == 1) {
                        Obj2 = document.getElementById(TextFieldsAry[k] + (Cnt1 + i + 1))
                        SeleOrigCapTDObj2 = document.getElementById("SeleOrigCapTD" + (Cnt1 + i + 1))
                    }
                    else {
                        Obj2 = document.getElementById(TextFieldsAry[k] + (Cnt1 - (i + 1)))
                        SeleOrigCapTDObj2 = document.getElementById("SeleOrigCapTD" + (Cnt1 - (i + 1)))

                    }
                    if ((Obj1 != null) && (Obj2 != null)) {
                        TempVal = Obj1.value;
                        Obj1.value = Obj2.value;
                        Obj2.value = TempVal;

                        SeleOrigCapTempVal = SeleOrigCapTDObj1.innerText
                        SeleOrigCapTDObj1.innerText = SeleOrigCapTDObj2.innerText;
                        SeleOrigCapTDObj2.innerText = SeleOrigCapTempVal;
                        break;
                    }
                }

            }

        }
  			
    </script>
</body>
</html>
