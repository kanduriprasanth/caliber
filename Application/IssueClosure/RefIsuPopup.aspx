<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RefIsuPopup.aspx.vb" Inherits="IssueClosure.RefIsuPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.Text%></title>
			<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<link rel="stylesheet" href="../TRIMS.css">
		<script language="javascript" src="../JScript/Common2.js"></script>
		
		<script language=javascript >
    		
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
	 
	 
	 
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead" style="width: 648px"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD style="width: 648px">
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<Tr>
									<td class="MainTd" colspan="1">
										<asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal>
									</td>
									<td class="MainTd" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" CssClass='TxtCls' Text ="%" MaxLength=25></asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3" onkeydown="return FnAllowNumVal()">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
									 
										<DIV style="overflow : auto; HEIGHT: 256px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
								<tr class ="HideRow" >
                                    <td  id ="RBVal"></td>
                                    <td>
                                   </td>
                                </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
        function fnCrGetCode(RowCnt)
        {
//            var KfLableValArr=new Array()
//            var KdIdValArr=new Array()
//            
//            var PrsTypeArr=new Array()
//            var IsuTypeIdArr=new Array()
//            
            var IsuCode
            var IssueId ,IsuTypeId,PrsType
            
            for(var k=0;k<<%=RecordCnt%>;k++)
            {
                if(document.getElementById("RBID"+k).checked ==true)
                {
                    IssueId=document.all("BaseID"+ k).innerHTML  
                    IsuCode =document.all("IsuTypeUCode"+ k).innerHTML  
                    
                    PrsType=document.all("PrsType"+ k).innerHTML  
                    IsuTypeId=document.all("IsuTypeId"+ k).innerHTML  
                    
//                    KfLableValArr.push(IsuCode)
//                    KdIdValArr.push(IssueId)
//                    
//                    PrsTypeArr.push(PrsType)
//                    IsuTypeIdArr.push(IsuTypeId)
                    

                    document.getElementById("RBVal").value = document.all("BaseID"+ k).innerHTML
                }
            }
            
//            var KfLableVal=KfLableValArr.join("; ")
//            var KfIdVal=KdIdValArr.join(",")
            opener.fnSetRefValue(IsuCode,IssueId,PrsType,IsuTypeId)
        }

	
	
	    function fnCrCancel(){
		    opener.fnSetRefValue('','','','')
		    window.self.close()
	    }
    	
	    document.oncontextmenu=new Function("return false")
	   
	    function fnCrCloseWin(){
    	 
	          if(document.getElementById("RBVal").value == undefined)
	          {
                alert("Select At Least One Value ! ")
                return(false);
              }    
		    window.self.close()
	    }
	    
        </SCRIPT>
	</body>
</HTML>
