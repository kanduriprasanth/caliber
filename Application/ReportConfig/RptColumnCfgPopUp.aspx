<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptColumnCfgPopUp.aspx.vb" Inherits="ReportConfig.RptColumnCfgPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
       Column Config. Report Selection
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
    <script language="javascript">

        function doSearch() {
            var searchText = document.getElementById('searchTerm').value;
            var targetTable = document.getElementById('ResTab');
            var targetTableColCount;

            //Loop through table rows
            for (var rowIndex = 0; rowIndex < targetTable.rows.length; rowIndex++) {
                var rowData = '';

                //Get column count from header row
                if (rowIndex <1) {
                    targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
                     continue; //do not execute further code for header row.
                    
                }
                //targetTableColCount=2
              
                //Process data rows. (rowIndex >= 1)
                for (var colIndex = 0; colIndex < targetTableColCount; colIndex++) {
                    rowData += targetTable.rows.item(rowIndex).cells.item(colIndex).innerText.replace(/ /g, '');
                }

                //If search term is not found in row data
                //then hide the row, else show
                rowData = rowData.toLowerCase();
                searchText = searchText.replace(/ /g, '');

                if (rowData.indexOf(searchText.toLowerCase()) == -1) {
                    targetTable.rows(rowIndex).className = 'HideRow';
                }
                else {
                    targetTable.rows(rowIndex).className = 'MainTD';
                }
            }
        }

       
    </script>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="3">
            <!-- MAIN HEADER -->
            <tr class="SubHead">
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"> Column Config. Report Selection </asp:Literal></td>
            </tr>
            <tr>
               <TD style="width: 800px">
                   	<DIV class="MainTd" style="HEIGHT: 250px" ID="Div1">
                           Quick Local Search  <input type="text" id="searchTerm" onkeyup="doSearch()" class="UCTxtCls" style="width:200px" />
                       
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
                           <tr class="HideRow">
									<td></td>
								</tr>
                            <tr>
                                <td class="MainTd" colspan="4">
                                 <DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
                                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                            CellPadding="0" CssClass="SubTable">
                                        </asp:Table>
                                    </div>
                                </td>
                            </tr>
                            
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnMainReportSet()" onmouseout="this.className='ButCls'" type="button"
                        value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                        <asp:TextBox id="SrcCntTxt" runat=server CssClass="HideRow"></asp:TextBox>
                </td>
            </tr>
            
           
        </table>
    </form>

  <script language=javascript>
    var SelReportID=''
  var SelReportName=''
   var SelReportCode=''
   var SrcCnt
 
  function fnCrGetCode(Cnt){
     SelReportID=document.getElementById("ReportID"+Cnt).innerText
    SelReportName=document.getElementById("ReportName"+Cnt).innerText
     SelReportCode=document.getElementById("ReportUniqueCode"+Cnt).innerText
     SrcCnt=document.getElementById("SrcCntTxt").value
  }
  function fnMainReportSet(){
      if(SelReportID==''){
      alert("Select  At Least One Report")
      return(false)
      }
  opener.LoadSubReportIntegration(SelReportID,SelReportName,SelReportCode,SrcCnt)
   window.self.close()
  }
 
  function fnCrCancel(){
  window.self.close()
  }
  </script>
</body>
</html>
