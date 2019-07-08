<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptFieldSelection.aspx.vb" EnableViewState="false"  Inherits="ReportConfig.RptFieldSelection" %>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title><%=MainTitleLtrl.text %></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
 
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
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="CategoryTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                              <asp:Label ID="Categorylbl" runat=server  ></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
						  <asp:TableRow>
							<asp:TableCell CssClass="MainTD" ID="ReportTypeTd" style="font-weight:bold" Width="33%"></asp:TableCell>
							<asp:TableCell CssClass="MainTD">
                              <asp:Label ID="ReporTypeLbl" runat=server  ></asp:Label>
                            </asp:TableCell>
						  </asp:TableRow>
						  
                        
                        <asp:TableRow ID="ResTabTr" >
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                    CellPadding="0" CssClass="SubTable">
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
                            <asp:TableCell ColumnSpan="1" HorizontalAlign =Left >
                                <input type=button id="BackButton" value='Back' Class='ButCls' onclick="window.history.back();" 
                                onMouseOver="this.className='ButOCls'" onMouseOut="this.className='ButCls'"  />
                            </asp:TableCell>
                            
                             <asp:TableCell ColumnSpan="1" HorizontalAlign=Right  >
                             <asp:Button ID="BtnConferm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" CausesValidation=false  ></asp:Button>
                              
                            </asp:TableCell>
                            
                            
                        </asp:TableRow>
                        
                        
                         <asp:TableRow ID="ErrorMsgTr" CssClass="HideRow" runat=server >
                            <asp:TableCell ColumnSpan="2" HorizontalAlign =Left ID="ErrorMsgTd"  runat=server CssClass="MainTd" >
                                
                            </asp:TableCell>
                            
                            
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                        
                        <asp:Button ID="btn_Load" runat="server" CausesValidation=false ></asp:Button>
                        
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                
                           <asp:TextBox ID="EFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormCtrlIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormSeqIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="FormTypeIDTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="IsuFormIdTxt" runat="server"></asp:TextBox>
                    
                    <asp:TextBox ID="ACPEFormIdTxt" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ReportIdTxt" runat="server"></asp:TextBox><%---added for modification req--%>
                    <asp:TextBox runat="server" ID="Counttxt"></asp:TextBox>
                    <asp:TextBox runat="server" ID="WorktemIdList"></asp:TextBox>
                     <asp:TextBox runat="server" ID="CatIDTxt"></asp:TextBox>
                    <asp:TextBox runat="server" ID="GlbCntTxt"></asp:TextBox>
                       <asp:TextBox runat="server" ID="isCallRoutines"></asp:TextBox>
                
                    
                    
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
  <script language="javascript">
<!--
  

var DataPopUpObj
    function FieldSel_Popup(Cnt){
            var FormId =document.getElementById("FormId" + Cnt).value 
            var FormType=document.getElementById("FormType" + Cnt).value  
            var CatID=document.getElementById("CatIDTxt").value
            var ReportID=document.getElementById("ReportIdTxt").value
            var  CtrlID =document.getElementById("CtrlID" + Cnt).value  
            var  SeqID=document.getElementById("Seqid" + Cnt).value  
            var RptId="<%=Request.QueryString("RptId")  %>"
            
             var pageURL = "RptDataSourceFields.aspx?FormId=" + FormId + "&FormType=" + FormType  + "&FormCnt=" + Cnt + "&CatID=" + CatID + "&CtrlID="+ CtrlID + "&SeqID=" +SeqID + "&RptId=" + RptId + "&ReportId=" + ReportID
            var features = "height=420,width=650,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            DataPopUpObj = window.open(pageURL,'Rpt',features)
            if(DataPopUpObj.opener == null) DataPopUpObj.opener=self;
            DataPopUpObj.focus();
    
    }
    
    
    function getPopUpSelSeqNos(FormCnt)
    {
     return document.getElementById("PopUpSelSeqNos" + FormCnt).value
    }
    
     function UpdateSelFormFldData(PopUpSelSeqNos,FormCnt,FromClause,JoinClause,SelectClause,FldList,DataTypeList,XOptionList,YOptionList,FilterOptionList,ArgregateFunList,DataTypeList,ParamNameList,FldCtrlIdList,AliasTableNameList,FldColNameList)
           {
             
                  document.getElementById("FromClause" + FormCnt).value=FromClause 
            document.getElementById("JoinClause" + FormCnt).value=JoinClause 
            document.getElementById("PopUpSelSeqNos" + FormCnt).value=PopUpSelSeqNos 
          
            var TableObj= document.getElementById("FldTable" +  FormCnt)
        
            document.getElementById("SelectClause" + FormCnt).value=SelectClause
            document.getElementById("FldList" + FormCnt).value=FldList
            document.getElementById("XOptionList" + FormCnt).value=XOptionList
            document.getElementById("YOptionList" + FormCnt).value=YOptionList
            document.getElementById("FilterOptionList" + FormCnt).value=FilterOptionList
            document.getElementById("PopUpSelSeqNos" + FormCnt).value=PopUpSelSeqNos
            document.getElementById("DataTypeList" + FormCnt).value=DataTypeList
            document.getElementById("AgregateFun" + FormCnt).value=ArgregateFunList
            document.getElementById("ParamName" + FormCnt).value=ParamNameList
            document.getElementById("FldCtrl" + FormCnt).value=FldCtrlIdList
             document.getElementById("AliasTableNameList" + FormCnt).value=AliasTableNameList
            document.getElementById("FldColNameList" + FormCnt).value=FldColNameList
            document.getElementById("isCallRoutines").value=1
         //    document.forms(0).submit();
         if(DataPopUpObj!= null) DataPopUpObj.close();
         document.getElementById("btn_Load").click()
             
   }

    </script>
    
</body>
</html>
