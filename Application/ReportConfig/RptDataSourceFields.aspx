<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RptDataSourceFields.aspx.vb"
    Inherits="ReportConfig.RptDataSourceFields" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
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
                if (rowIndex <2) {
                    targetTableColCount = targetTable.rows.item(rowIndex).cells.length;
                     continue; //do not execute further code for header row.
                    
                }
                targetTableColCount=2
              
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
                    <asp:Literal ID="MainTitleLtrl" runat="server"> Field(s) Selection</asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" style="height: 20px" id="Div1">
                           Quick Local Search  <input type="text" id="searchTerm" onkeyup="doSearch()" class="UCTxtCls" style="width:200px" />
                       
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
                            <tr class="HideRow">
                            </tr>
                            <tr>
                                <td class="MainTd" colspan="4">
                                    <div style="overflow: auto; height: 200px; background-color: gray">
                                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                            CellPadding="0" CssClass="SubTable">
                                        </asp:Table>
                                    </div>
                                </td>
                            </tr>
                            <tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                    <asp:TextBox ID="TotalFldCntTxt" CssClass="hideRow" runat="server"></asp:TextBox>
                                    <asp:TextBox ID="FormCntTxt" CssClass="hideRow" runat="server"></asp:TextBox>
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
                        onclick="fnTransferSelData()" onmouseout="this.className='ButCls'" type="button"
                        value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
            
           
        </table>
    </form>

    <script language="javascript">
 

    function fncheck(FormCnt){
   var TotalCnt = document.getElementById("TotalFldCntTxt").value
       //    alert(TotalCnt  + ' ' +  FormCnt)
           
        
    
    }
    
   function fnTransferSelData(){
     var TotalCnt = parseInt(document.getElementById("TotalFldCntTxt").value)
     var FormCnt = document.getElementById("FormCntTxt").value 
     
    var FromClause
    var JoinClause

    var FldList 
    var SelectClause
    var XOptionList
    var YOptionList
    var FilterOptionList
    var ArgregateFunList
    var DataTypeList
    var ParamNameList
    var PopUpSelSeqNos
    var FldCtrlIdList
    var AliasTableNameList
    var FldColNameList

    var FldListAry =new Array()
    var SelectClauseAry=new Array()
    var XOptionListAry=new Array()
    var YOptionListAry=new Array()
    var FilterOptionListAry=new Array()
    var ArgregateFunListAry=new Array()
    var DataTypeListAry=new Array() 
    var ParamNameListAry=new Array() 
    var FldCtrlIdAry=new Array()
    var PopUpSelSeqNosAry=new Array()

    var AliasTableNameListAry =new Array()
    var FldColNameListAry=new Array()

    var FldListAry =new Array()
    var fldCnt =0
    
    for(i=1;i<TotalCnt+1;i++){
      if (document.getElementById("Chk" + i).checked==true)
         { 
           FldListAry[fldCnt]=document.getElementById("FldAliesName" + i).value
           SelectClauseAry[fldCnt]=document.getElementById("SelectField" + i).value
          
           XOptionListAry[fldCnt]=document.getElementById("XSeriesOption" + i).value
           YOptionListAry[fldCnt]=document.getElementById("YSeriesOption" + i).value
           FilterOptionListAry[fldCnt]=document.getElementById("FilterOption" + i).value
           DataTypeListAry[fldCnt]=document.getElementById("DataType" + i).value
           ArgregateFunListAry[fldCnt]=document.getElementById("AgregateFun" + i).value
           ParamNameListAry[fldCnt]=document.getElementById("ParamName" + i).value
           FldCtrlIdAry[fldCnt]=document.getElementById("FldCtrlId" + i).value
            
            AliasTableNameListAry[fldCnt]=document.getElementById("AliasTableName" + i).value
            FldColNameListAry[fldCnt]=document.getElementById("FldColName" + i).value
         
           PopUpSelSeqNosAry[fldCnt]=i
           fldCnt=fldCnt+1
           
           document.getElementById("RBVal").value =fldCnt
          }
 

    }
    
     document.getElementById("RBVal").value =fldCnt
     if (fldCnt >0) {
         
    
        FldList=FldListAry.join('#*#')
        SelectClause=SelectClauseAry.join('#*#')
        XOptionList=XOptionListAry.join('#*#')
        YOptionList=YOptionListAry.join('#*#')
        FilterOptionList=FilterOptionListAry.join('#*#')
        ArgregateFunList=ArgregateFunListAry.join('#*#')
        DataTypeList=DataTypeListAry.join('#*#')
        ParamNameList=ParamNameListAry.join('#*#')
        PopUpSelSeqNos=PopUpSelSeqNosAry.join('#*#')
        FldCtrlIdList=FldCtrlIdAry.join('#*#')

        AliasTableNameList=AliasTableNameListAry.join('#*#')
        FldColNameList=FldColNameListAry.join('#*#')

  
        FromClause=document.getElementById("FromClause" + FormCnt).value
        JoinClause=document.getElementById("JoinClause" + FormCnt).value

        opener.UpdateSelFormFldData(PopUpSelSeqNos,FormCnt,FromClause,JoinClause,SelectClause,FldList,DataTypeList,XOptionList,YOptionList,FilterOptionList,ArgregateFunList,DataTypeList,ParamNameList,FldCtrlIdList,AliasTableNameList,FldColNameList)
          window.self.close()
       }
       else 
       {
         alert("Select At Least One Field")
       } 
   }
   
   
   	function fnCrCancel(){
		window.self.close()
	}
	
   
   function getPopUpSelSeqNos(){
    var FormCnt = document.getElementById("FormCntTxt").value 
    var PopUpSelSeqNos=opener.getPopUpSelSeqNos(FormCnt)
    var PopUpSelSeqNosAry=new Array()
         if(PopUpSelSeqNos!=''){
           PopUpSelSeqNosAry=PopUpSelSeqNos.split('#*#')
         
           for(i=0;i<PopUpSelSeqNosAry.length;i++){
             document.getElementById("Chk" + PopUpSelSeqNosAry[i]).checked=true
             }//for
         }//if
     
   }//function
     getPopUpSelSeqNos()
     
     
   function  TempAllCheck(){
      var TotalCnt = parseInt(document.getElementById("TotalFldCntTxt").value)
      for(i=1;i<TotalCnt+1;i++){
       document.getElementById("Chk" + i).checked=true
         }
   }
  // TempAllCheck()
   
    </script>

</body>
</html>
