<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptYSeriesOptions.aspx.vb" Inherits="ReportConfig.RptYSeriesOptions" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.text %></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead"> <asp:Literal ID="MainTitleLtrl" runat="server"> Field(s) Selection</asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
								
								 
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									
									</td>
								</tr>
								 <tr class="HideRow">
                                <td id="RBVal">
                                </td>
                                <td>
                                   <asp:TextBox ID="TrendNoTxt" CssClass="hideRow" runat=server></asp:TextBox>
                                  <asp:TextBox ID="TotalFldCntTxt" CssClass="hideRow" runat=server></asp:TextBox>
                                 
                                  
                                </td>
                            </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnTransferSelData()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		 
		 
		<script language="javascript">
 

    function fncheck(FormCnt){
   var TotalCnt = document.getElementById("TotalFldCntTxt").value
       //    alert(TotalCnt  + ' ' +  FormCnt)
           
        
    
    }
    
   function fnTransferSelData(){
     var TotalCnt = parseInt(document.getElementById("TotalFldCntTxt").value)
     var TrendNo = document.getElementById("TrendNoTxt").value 
  





var FldList 
var AgregateFunList
var DataTypeList
var ParamNameList
var PopUpSelSeqNos
var FldCtrlIdList
var AliasTableNameList
var FldColNameList
var FldObjectTypeList

    for(i=1;i<TotalCnt+1;i++){
      if (document.getElementById("Yoption" + i).checked==true)
         { 
                FldList=document.getElementById("FldAliesName" + i).value
                AgregateFunList=document.getElementById("AgregateFun" + i).value

                DataTypeList=document.getElementById("DataType" + i).value
                ParamNameList=document.getElementById("ParamName" + i).value
                FldCtrlIdList=document.getElementById("FldCtrlId" + i).value

                AliasTableNameList=document.getElementById("AliasTableName" + i).value
                FldColNameList=document.getElementById("FldColName" + i).value
                FldObjectTypeList=document.getElementById("ObjectType" + i).value  
         
           PopUpSelSeqNos=i
          break;
         }
     }
 
    
        document.getElementById("RBVal").value =PopUpSelSeqNos
        if ( PopUpSelSeqNos>0)
        {
            opener.SetTrendValue(TrendNo,PopUpSelSeqNos,AgregateFunList,FldList,DataTypeList,ParamNameList,FldCtrlIdList,AliasTableNameList,FldColNameList,FldObjectTypeList)
            window.self.close()
        }
        else
        {
            alert("Select At Least One Field")
        }

   }
   
    function fnCrCancel(){
    var TrendNo = document.getElementById("TrendNoTxt").value 
        opener.SetTrendValue(TrendNo,'','','','','','','','','')
		window.self.close()
	}
	
 
      
        </SCRIPT>
	</body>
</HTML>
