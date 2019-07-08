<%@ Page Language="vb" AutoEventWireup="false" Codebehind="EFMPlanCalendar.aspx.vb"
    Inherits="EffectivenessProtocol.EFMPlanCalendar" %>

<%@ Register TagPrefix="uc1" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1" EnableViewState="False" Width="98%">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="CrTopTable">
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>  
                         <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="Table2">
                                        <asp:TableRow>
                                            <asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="33%">
                                                <asp:LinkButton ID="InitLb" runat="server" Width="100%" Height="100%"></asp:LinkButton>
                                            </asp:TableCell>
                                            <asp:TableCell CssClass="MainTD" ColumnSpan="3" Width="33%">
                                                <asp:LinkButton ID="ToBeInitLb" runat="server" Width="100%" Height="100%"></asp:LinkButton>
                                            </asp:TableCell>                          
                                        </asp:TableRow>                                    
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>                   
                      
                        <asp:TableRow ID ="SearchTr1" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="PlanCodeLbl" runat="server" Text="Plan Code"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="PlanCodeTxt" onkeypress="taLimit()" onkeyup="taCount()" runat="server" Text="%"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="PlanDescLbl" runat="server" Text="Plan Description" ></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="PlanDescTxt" onkeypress="taLimit()" onkeyup="taCount()" runat="server" Text="%"></asp:TextBox>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="CatLbl" runat="server" Text="Category"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:DropDownList ID="CatDDL" runat="server"  EnableViewState="true">
                                </asp:DropDownList>
                            </asp:TableCell>                          
                             </asp:TableRow>
                             <asp:TableRow ID ="SearchTr2" CssClass ="HideRow" >
                               <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:Label ID="Inchglbl" runat="server" Text="Incharge Group"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                <asp:TextBox ID="InchgTxt" onkeypress="taLimit()" onkeyup="taCount()" runat="server" Text="%"></asp:TextBox>
                            </asp:TableCell>                     
                           
                            <asp:TableCell CssClass="MainTD">Start Date From</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc1:CaliberCalender id="Fromdate" runat="server">
                                </uc1:CaliberCalender>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">To</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc1:CaliberCalender id="Todate" runat="server">
                                </uc1:CaliberCalender>
                                  &nbsp;<asp:Button ID="BtnLoad" runat="server" class='ButCls' onmouseover="this.className='ButOCls'"
                                onmouseout="this.className='ButCls'" Width="70px" Text='Display'></asp:Button>
                            </asp:TableCell>
                       </asp:TableRow>
                      <asp:TableRow ID ="StatusTr" CssClass ="HideRow">
                        <asp:TableCell CssClass="MainTD" ColumnSpan="1">
                                 <asp:Label ID="StatusLbl" runat="server" Text="Status"></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell CssClass ="MainTD" ColumnSpan="6">
                            <asp:RadioButtonList id="StatusRdl" runat="server" RepeatDirection ="Horizontal" CssClass="MainTD">
                            <asp:ListItem Value ="0" Text ="All" Selected ="True" ></asp:ListItem>
                            <asp:ListItem Value ="1" Text ="Open"></asp:ListItem>
                            <asp:ListItem Value ="2" Text ="Closed"></asp:ListItem>
                            <asp:ListItem Value ="3" Text ="Over dues"></asp:ListItem>                            
                            </asp:RadioButtonList>                        
                        </asp:TableCell>
                      
                      
                      </asp:TableRow>
                        <asp:TableRow ID ="TotalRecTr" CssClass ="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal ID="MaxRecLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD"  ColumnSpan ="6">
                                <asp:Literal ID="MaxRecCntLtrl" runat="server">0</asp:Literal>
                            </asp:TableCell>                          
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DisTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                                    <asp:TextBox ID="CategoryTxt" runat ="server" ></asp:TextBox>
                                    <asp:TextBox ID="ReqTypetxt" runat ="server" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>

<script language="javascript">
   
   function DateValidation(src,args){
       var Flag= VbDateValidation();
       if(Flag==false){
		    args.IsValid=false;
  	        Page_IsValid=false;  	    
  	        }
    }    
    
    
   function FnPrevPlnDetails(RowCnt,EFMId)
   {
   
        var EFMStartDate=document.getElementById("PlanStartDate_" + RowCnt).value 
        var PWidth=800
        var PHeight=500
        var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
        var ScreenTop = parseInt(window.screen.height-PHeight)/2;

        var pageURL = "../EffectivenessProtocol/EFMPlanDetails.aspx?EFMId=" + EFMId + "&EFMStartDate=" + EFMStartDate
        var features = "height=" + PHeight + ",width="+ PWidth +",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=200,left=100"
        SpWinObj = window.open(pageURL,'SpecCodes',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
   
   
   }
  
       function SaveCategory(obj){ //Saving Category on postback
	        document.getElementById("CategoryTxt").value= obj.value;
	    }

var taMaxLength = 250
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Lenght: "+ taMaxLength +" Chars")
			}
			}
</script>

</script>

<script language="vbscript">
   function VbDateValidation 
    SDate=document.getElementById("Fromdate_CalDateVal").value
  if SDate="" then exit function
    EDate=document.getElementById("Todate_CalDateVal").value
  if EDate="" then exit function
	 
	  SDateArr=split(SDate,"/")
	  EDateArr=split(EDate,"/")
	  
	  SDate=dateSerial(SDateArr(2),SDateArr(0),SDateArr(1))
	  EDate=dateSerial(EDateArr(2),EDateArr(0),EDateArr(1))
	
	DDgap=DateDiff("d", EDate,SDate)
	if DDgap>0 then
	VbRDateValid=false
	else VbRDateValid=true
	end if

end function
</script>

