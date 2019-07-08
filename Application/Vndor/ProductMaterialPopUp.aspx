<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ProductMaterialPopUp.aspx.vb" Inherits="Vndor.ProductMaterialPopUp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Item(s) List</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="0">
				<!-- MAIN HEADER -->
				<TR>
					<TD class="MainHead">Item(s) List</TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
									<td></td>
									<td></td>
									<td id="RBVal">
									<input type=text id="valTxt" runat="server" />
							        <input type=text id="ItmTypFlagTxt" runat="server" />
									</td> 
									<td></td>
									<td></td>
								</tr>
								<Tr>
									<td class="MainTd" colspan="1">
										<b><asp:literal id="SearchOptionLtrl" runat="server">Search Option</asp:literal></b>
									</td>
									<td class="MainTd" colspan="3">
										<asp:RadioButtonList ID="SearchOptionRD" Runat="server" RepeatDirection="Horizontal" CellPadding="0"
											cssclass="RBList" CellSpacing="0" Height="18px">
											<asp:ListItem Value="1" Selected="True">Item Code</asp:ListItem>
											<asp:ListItem Value="2">Item Name</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</Tr>
								<tr>
									<td class="MainTd" colspan="2">
										<b><asp:literal id="FindLrl" runat="server">Find</asp:literal></b>
										<asp:TextBox id="FindTxt" runat="server" Width="180px" MaxLength="20" CssClass='TxtCls'>%</asp:TextBox>
										<asp:TextBox id="ItmTypeCndTxt" runat="server" CssClass='HideRow'></asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<b><asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal></b>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>&nbsp;
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
										<DIV style="OVERFLOW: auto; HEIGHT: 200px; BACKGROUND-COLOR: gray">
											<asp:table id="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1" CellPadding="0"
												CssClass="SubTable"></asp:table></DIV>
									</td>
								</tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR class="MainFoot">
					<TD ><INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnPrdCrCloseWin()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'"  onclick="fnPrdCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
 
//    function fnCheckItemType()
//    {
//        var ItmTypeId = "0"
//        for(var k=0;k<<%=count%>;k++)
//        {
//            if(document.getElementById("RBID"+k).checked == true)
//            {
//                if (ItmTypeId == "0")
//                {
//                    ItmTypeId = document.getElementById("ItmTypeId"+k).innerText
//                } 
//                else
//                {
//                    if (document.getElementById("ItmTypeId"+k).innerText != ItmTypeId)
//                    {
//                        ItmTypeId = "0"
//                        break;
//                    }
//                }                 
//            }
//        }  
//        document.getElementById("ItmTypFlagTxt").value = ItmTypeId
//    }
    
  	function fnPrdCrGetCode()
	{
		
	 var KfLableValArr=new Array()
	 var KfLableValArr2=new Array()
     var KdIdValArr=new Array()
     var KfCodeValArr =new Array()
     var ReqalPrdArr =new Array()
     var ReqalFreqArr =new Array()
     var TolPrdArr =new Array()
     var TolFreqArr =new Array()
     var MatIdsStrArr =new Array()
     var MatIdsStr = "<%=MatIdsStr%>"
     MatIdsStrArr = MatIdsStr.split(",") 
       
    for(var k=0;k<<%=count%>;k++)
    {
        if(document.getElementById("RBID"+k).checked == true && MatIdsStrArr[k] == 1)
        {
            KdIdValArr.push(document.all("KdId"+ k).innerText)
            document.getElementById("valTxt").value = document.all("KdId"+ k).innerHTML
            if(<%=Flag%>==2)
            {
                KfLableValArr.push(document.all("SpecIDLbl"+ k).innerHTML + '(' + document.all("KfLable"+ k).innerText + ')')
                KfLableValArr2.push(document.all("SpecIDLbl"+ k).innerHTML)
                KfCodeValArr.push(document.all("KfLable"+ k).innerText)
                ReqalPrdArr.push(document.getElementById("ReqalPrdLbl"+ k).innerHTML)
                ReqalFreqArr.push(document.getElementById("ReqalFreqLbl"+ k).innerHTML)
                TolPrdArr.push(document.getElementById("TolPrdLbl"+ k).innerHTML)
                TolFreqArr.push(document.getElementById("TolFreqLbl"+ k).innerHTML)
            }
            else
            {
                  KfLableValArr.push(document.all("SpecIDLbl"+ k).innerHTML)
                  KfLableValArr2.push(document.all("SpecIDLbl"+ k).innerHTML)
                  KfCodeValArr.push(document.all("KfLable"+ k).innerText)
            }
        }
    }
    
    for(var k=0;k<<%=count%>;k++)               //Added by P Suresh
    {
        if(document.getElementById("RBID"+k).checked == true && MatIdsStrArr[k] == 2)
        {            
            KdIdValArr.push(document.all("KdId"+ k).innerText)
            document.getElementById("valTxt").value = document.all("KdId"+ k).innerHTML
            if(<%=Flag%>==2)
            {
                KfLableValArr.push(document.all("SpecIDLbl"+ k).innerHTML + '(' + document.all("KfLable"+ k).innerText + ')')
                KfLableValArr2.push(document.all("SpecIDLbl"+ k).innerHTML)
                KfCodeValArr.push(document.all("KfLable"+ k).innerText)
                ReqalPrdArr.push(document.getElementById("ReqalPrdLbl"+ k).innerHTML)
                ReqalFreqArr.push(document.getElementById("ReqalFreqLbl"+ k).innerHTML)
                TolPrdArr.push(document.getElementById("TolPrdLbl"+ k).innerHTML)
                TolFreqArr.push(document.getElementById("TolFreqLbl"+ k).innerHTML)
            }
            else
            {
                  KfLableValArr.push(document.all("SpecIDLbl"+ k).innerHTML)
                  KfLableValArr2.push(document.all("SpecIDLbl"+ k).innerHTML)
                  KfCodeValArr.push(document.all("KfLable"+ k).innerText)
            }
        }
    }
   
        var KdIdVal=KdIdValArr.join(",")
        if(<%=Flag%>==2 )
        {
            var KfLableVal=KfLableValArr.join(",")
            var KfLableVal2=KfLableValArr2.join(",")
            var KfCodeVal =KfCodeValArr.join(",")
            var ReqalPrd =ReqalPrdArr.join(",")
            var ReqalFreq =ReqalFreqArr.join(",") 
            var TolPrd =TolPrdArr.join(",")
            var TolFreq =TolFreqArr.join(",") 
        }
        else
        {
            var KfLableVal=KfLableValArr.join("#*#")
            var KfLableVal2=KfLableValArr2.join("#*#")
            var KfCodeVal =KfCodeValArr.join("#*#")
            var ReqalPrd =0
            var ReqalFreq =0
            var TolPrd =0
            var TolFreq =0
        }
        document.getElementById("valTxt").value=KdIdVal
        opener.fnPrdCrSetToCode(KdIdVal,KfLableVal,KfLableVal2,KfCodeVal,ReqalPrd,ReqalFreq,TolPrd,TolFreq)
        
	}
	function fnPrdCrCancel(){
		opener.fnPrdCrSetToCode('','','','','','','','')
		window.self.close()
	}
	
	document.oncontextmenu=new Function("return false")
function fnPrdCrCloseWin(){
      fnPrdCrGetCode()
	  if(document.getElementById("valTxt").value == ""){
        alert("Select Item(s)")
        return(false);
      }
      
//      if (document.getElementById("ItmTypeCndTxt").value == "1")
//      {
//          fnCheckItemType()
//          if(document.getElementById("ItmTypFlagTxt").value == "0"){
//            alert("Select Item(s) from one Item Type only")
//            return(false);
//          }
//      }   
	//	opener.fnPrdCrformSubmit()
	    if(<%=Sts %>==1)
        {
            opener.SubMitForm();
        }
        else if(<%=Type %>==1)
        {
            opener.Submit();
        }
        
		window.self.close()
	}
        </SCRIPT>
	</body>
</HTML>