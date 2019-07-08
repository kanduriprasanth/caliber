<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RptXSeriesOptions.aspx.vb" Inherits="ReportConfig.RptXSeriesOptions" %>

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
                                   <asp:TextBox ID="GrpNoTxt" CssClass="hideRow" runat=server></asp:TextBox>
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


		    function fncheck(FormCnt) {
		        var TotalCnt = document.getElementById("TotalFldCntTxt").value
		        //    alert(TotalCnt  + ' ' +  FormCnt)



		    }

		    function fnTransferSelData() {
		        var TotalCnt = parseInt(document.getElementById("TotalFldCntTxt").value)
		        var GrpNo = document.getElementById("GrpNoTxt").value



		        var FldList
		        var SelectClause
		        var DataTypeList
		        var ParamNameList
		        var PopUpSelSeqNos
		        var FldCtrlIdList
		        var AliasTableNameList
		        var FldColNameList

		        var FldListAry = new Array()
		        var SelectClauseAry = new Array()
		        var DataTypeListAry = new Array()
		        var ParamNameListAry = new Array()
		        var FldCtrlIdAry = new Array()
		        var PopUpSelSeqNosAry = new Array()
		        var AliasTableNameListAry = new Array()
		        var FldColNameListAry = new Array()
		        var FldObjectTypeListAry = new Array()

		        var FldListAry = new Array()
		        var fldCnt = 0
		        for (i = 1; i < TotalCnt + 1; i++) {
		            if (document.getElementById("Chk" + i).checked == true) {
		                FldListAry[fldCnt] = document.getElementById("FldAliesName" + i).value
		                SelectClauseAry[fldCnt] = document.getElementById("SelectField" + i).value

		                DataTypeListAry[fldCnt] = document.getElementById("DataType" + i).value
		                ParamNameListAry[fldCnt] = document.getElementById("ParamName" + i).value
		                FldCtrlIdAry[fldCnt] = document.getElementById("FldCtrlId" + i).value

		                AliasTableNameListAry[fldCnt] = document.getElementById("AliasTableName" + i).value
		                FldColNameListAry[fldCnt] = document.getElementById("FldColName" + i).value

		                FldObjectTypeListAry[fldCnt] = document.getElementById("ObjectType" + i).value

		                PopUpSelSeqNosAry[fldCnt] = i
		                fldCnt = fldCnt + 1
		            }


		        }

		        document.getElementById("RBVal").value = fldCnt
		        if (fldCnt > 0) {
		            FldList = FldListAry.join('#*#')
		            SelectClause = SelectClauseAry.join('#*#')
		            DataTypeList = DataTypeListAry.join('#*#')
		            ParamNameList = ParamNameListAry.join('#*#')
		            PopUpSelSeqNos = PopUpSelSeqNosAry.join('#*#')
		            FldCtrlIdList = FldCtrlIdAry.join('#*#')
		            FldObjectTypeList = FldObjectTypeListAry.join('#*#')

		            AliasTableNameList = AliasTableNameListAry.join('#*#')
		            FldColNameList = FldColNameListAry.join('#*#')

		            opener.SetGrpValValue(GrpNo, PopUpSelSeqNos, SelectClause, FldList, DataTypeList, ParamNameList, FldCtrlIdList, AliasTableNameList, FldColNameList, FldObjectTypeList)

		            window.self.close()

		        }
		        else {
		            alert("Select At Least One Field")
		        }


		    }

		    function fnCrCancel() {


		        var GrpNo = document.getElementById("GrpNoTxt").value
		        opener.SetGrpValValue(GrpNo, '', '', '', '', '', '', '', '', '')
		        window.self.close()
		    }



		    function getPopUpSelSeqNos() {
		        var GrpNo = document.getElementById("GrpNoTxt").value
		        //    var PopUpSelSeqNos=opener.getPopUpSelSeqNos(GrpNo)
		        //    var PopUpSelSeqNosAry=new Array()
		        //         if(PopUpSelSeqNos!=''){
		        //           PopUpSelSeqNosAry=PopUpSelSeqNos.split('#*#')
		        //         
		        //           for(i=0;i<PopUpSelSeqNosAry.length;i++){
		        //             document.getElementById("Chk" + PopUpSelSeqNosAry[i]).checked=true
		        //             }//for
		        //         }//if
		        // this below code is added for modification requirement in reports//
		        var TotalCount = parseInt(document.getElementById("TotalFldCntTxt").value)
		        var SelectedGroups = opener.getPopUpSelSeqNos(GrpNo)
		        var SelecteGroupsAry = new Array()
		        if (SelectedGroups != '') {
		            SelecteGroupsAry = SelectedGroups.split('#*#')
		            for (i = 1; i <= TotalCount; i++) {
		                var Group = document.getElementById("FldColName" + i).value
		                var Contains = contains(SelecteGroupsAry, Group)
		                if (Contains == 1) {
		                    document.getElementById("Chk" + i).checked = true
		                }

		            } //for
		        } //if

		    } //function

		    getPopUpSelSeqNos()

		    function getOtherPopUpSelSeqNos() {

		        var GrpNo = document.getElementById("GrpNoTxt").value
		        //    var PopUpSelSeqNos=opener.getOtherPopUpSelSeqNos(GrpNo)
		        //    var PopUpSelSeqNosAry=new Array()
		        //         if(PopUpSelSeqNos!=''){
		        //           PopUpSelSeqNosAry=PopUpSelSeqNos.split('#*#')
		        //         
		        //           for(i=0;i<PopUpSelSeqNosAry.length;i++){
		        //            if(PopUpSelSeqNosAry[i]!=''){
		        //             document.getElementById("Chk" + PopUpSelSeqNosAry[i]).disabled=true
		        //             }
		        //             }//for
		        //         }//if
		        // this below code is added for modification requirement in reports
		        var TotalCount = parseInt(document.getElementById("TotalFldCntTxt").value)
		        var OtherGroups = opener.getOtherPopUpSelSeqNos(GrpNo)
		        var OtherGroupsAry = new Array()
		        if (OtherGroups != '') {
		            OtherGroupsAry = OtherGroups.split('#*#')
		            for (i = 1; i <= TotalCount; i++) {
		                var Group = document.getElementById("FldColName" + i).value
		                var Contains = contains(OtherGroupsAry, Group)
		                if (Contains == 1) {
		                    document.getElementById("Chk" + i).disabled = true
		                } //if
		            } //for
		        } //if
		    } //function

		    getOtherPopUpSelSeqNos()


		    function contains(a, obj) {
		        var i = a.length;
		        while (i--) {
		            if (a[i] === obj) {
		                return 1;
		            }
		        }
		        return 0;
		    }
		</SCRIPT>
	</body>
</HTML>
