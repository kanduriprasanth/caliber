<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WorkAllUserGroup.aspx.vb" Inherits="IssueLogin.WorkAllUserGroup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title><%=MainTitleLtrl.text %></title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
		
		<LINK href="../TRIMS.css" type="text/css" rel="stylesheet">
		  <script language="javascript" src="../JScript/jquery.min.js"></script>
         <script language="javascript" src="../JScript/Common2.js"></script>
    
	</HEAD>
	<body MS_POSITIONING="GridLayout" >
		<form id="Form1" method="post" runat="server">
			<TABLE class="MainTable" height="100%" cellSpacing="0" cellPadding="0" width="100%" align="center"
				border="3">
				<!-- MAIN HEADER -->
				<TR class="SubHead">
					<TD class="MainHead" id="MainLtrlTd"><asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></TD>
				</TR>
				<TR>
					<TD>
						<DIV class="MainTd" style="HEIGHT: 20px" ID="Div1">
							<table width="100%" cellSpacing="0" cellPadding="0" align="center">
								<tr class="HideRow">
								</tr>
							
								<tr class="HideRow">
									<td class="MainTd" colspan="2">
										<asp:literal id="FindLrl" runat="server">Find</asp:literal>
										<asp:TextBox id="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength =26>%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
										<asp:literal id="FetchSizeLtrl" runat="server">Records Limit</asp:literal>
										<asp:textbox id="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:textbox>
										<asp:Button id="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
								        <asp:textbox id="IsuLogIdTxt" runat="server" Width="50px" CssClass="HideRow" ></asp:textbox>
                                       <asp:textbox id="IsuTypeIdTxt" runat="server" Width="50px" CssClass="HideRow" ></asp:textbox>
                                  
									</td>
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
                                  
                                </td>
                            </tr>
							</table>
						</DIV>
					</TD>
				</TR>
				<!-- MAIN FOOTER -->
				<TR>
					<TD class="MainFoot"><INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 50px" onclick="fnCrGetCode()"
							onmouseout="this.className='ButCls'" type="button" value="Ok"> <INPUT class="ButCls" onmouseover="this.className='ButOCls'" style="WIDTH: 60px" onclick="fnCrCancel()"
							onmouseout="this.className='ButCls'" type="button" value="Cancel">
					</TD>
				</TR>
			</TABLE>
		</form>
		<SCRIPT language="javascript">
   
    var flag=false
 
  	function fnCrGetCode()
	{
	    //Added to resolve already checked items
	    var ResGrpIdList="<%=Request.QueryString("ResGrpIdList")%>";
	    ResGrpIdList="," + ResGrpIdList + ",";	    
        var UserGrpId;
        	
        var KfLableValArr=new Array()
        var KdIdValArr=new Array()
        var Lblvalue=''
        var UserGrpLst=''
        var UserGrpIdArr = new Array()
          for(var k=0;k<<%=RecordCnt%>;k++)
	        {
	        
	          var obj=document.all("UserGrpId"+ k)
	          if (obj !=null)
	          {
	            UserGrpId="," + document.all("UserGrpId"+ k).innerHTML + ",";
	              if(ResGrpIdList.indexOf(UserGrpId)==-1){
	                if(document.getElementById("ChkID"+k).checked ==true)
	                {
	                     UserGrpIdArr.push(document.all("UserGrpId"+ k).innerHTML)
                         Lblvalue=document.all("KfLable"+ k).innerText  
	                     KfLableValArr.push(Lblvalue)
	                     document.getElementById("RBVal").value=Lblvalue
        	             
	                }
	               }
	           }    
	        }
	     
	    if (Lblvalue=='') document.getElementById("RBVal").value =Lblvalue
	    
	    if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }  
	   	    
        var KfLableValArr=KfLableValArr.join(";") 
        var UserGrpLst=UserGrpIdArr.join(",") 
       
	    opener.AssignUserGrp("<%=Request.QueryString("BaseID") %>","<%=Request.QueryString("CtrlId") %>",KfLableValArr,UserGrpLst)
	    window.self.close();
	}
	
	
	function fnCrCancel(){
		opener.AssignUserGrp("<%=Request.QueryString("BaseID") %>","<%=Request.QueryString("CtrlId") %>",'','')
		window.self.close()
	}

	document.oncontextmenu=new Function("return false")

	function fnCrCloseWin(){
	 
	      if ( (document.getElementById("RBVal").value == undefined) || (document.getElementById("RBVal").value == '') )
	      {
            alert("Select At Least One Item")
            return(false);
          }    
		window.self.close()
	}
	
	//code for changing the main litral caption according to the field name By Asish
	
	function PageLoadJs()
	{
	var FldCapt="<%=Request.QueryString("Caption")%>"
	
	if(FldCapt != "")
	{
	document.getElementById('MainLtrlTd').innerHTML=FldCapt
	}

	if(FldCapt=="Department(s) Required to Provide Comments")//change the work allocation popup name here for diable all check box
      {
                var obj = $( "input[type=checkbox]" )
                  for (i = 0; i < obj.length; i++) {
                         obj[i].setAttribute("disabled", "disabled")
                  } 
      }
	}
	
	PageLoadJs()
	//End code for changing the main litral caption according to the field name
	
	        </SCRIPT>
		
	</body>
</HTML>