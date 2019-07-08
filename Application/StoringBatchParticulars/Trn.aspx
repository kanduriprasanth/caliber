<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="StoringBatchParticulars.Trn" %>

<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<%@ Register TagPrefix="uc2" TagName="CaliberCalender" Src="../CaliberCommonCtrls/CaliberCalender.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
	<!--
        RequestPrefix = '<%=me.ClientID%>'
        function fnSetToReasons(argValue) {
            document.getElementById("RemarksTxt").value = argValue
        }

	//-->
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
            CssClass="MainTable" Width="98%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TypeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList ID="TypeRdl" runat="server" CssClass="MainTD" RepeatDirection="Horizontal"
                                    TabIndex="1">
                                    <asp:ListItem Value="1">Batch</asp:ListItem>
                                    <asp:ListItem Value="2">Lot</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="ProductTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input id="ProductBtn" type="button" class= <%=ButtonClassname %> tabindex="2" onclick="fnOpenPopUp()" />
                                <asp:Label ID="ProductLbl" runat="server" Text=""></asp:Label>
                                <asp:TextBox ID="ProductTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ProductUcodeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="ProductDescTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="SAPFetchTd" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="SAPGET">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" Width="250px">
                                                    To Get the Record From SAP
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" Width="200px">
                                            Batch Number
                                            <asp:TextBox ID="BatchTxt" runat="server" CssClass="UCTxtCls" MaxLength="10" Width="80px"
                                                AccessKey="C" TabIndex="3"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell CssClass="MainTD" Width="200px" ID="PltTD">
                                            SAP Plant Code
                                            <asp:DropDownList ID="PltNoDdl" runat="server" CssClass="TxtCls" MaxLength="5" AccessKey="R"
                                                AutoPostBack="true">
                                            </asp:DropDownList>
                                            <asp:TextBox ID="SAPPltNo" runat="server" CssClass="HideRow" MaxLength="4" Width="80px"
                                                AccessKey="C" TabIndex="3"></asp:TextBox>
                                        </asp:TableCell>
                                        <asp:TableCell ColumnSpan="2" CssClass="MainTD">
                                            <asp:Button ID="GetFromSAP" runat="server" onMouseOver="this.className='ButselOCls'"
                                                Class='HideRow' AccessKey="C" onMouseOut="this.className='ButselCls'" Text=" Get From SAP "
                                                Width="170" CausesValidation="False" />
                                            </asp:Button>
                                            <input type="button" id="SAPButton" onclick='fncheckPltId()' onmouseover="this.className='ButselOCls'"
                                                class='ButselCls' onmouseout="this.className='ButselCls'" value=" Get From SAP " />
                                            <asp:Label runat="server" ID="SAPStatus" Visible="false" ForeColor="red" Text="No Record From SAP<br>"></asp:Label>
                                            <asp:Label runat="server" ID="ErrorSts" Visible="false" ForeColor="red" Text="Unable To Connect to SAP<br>"></asp:Label>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CodeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="TxtCls" MaxLength="30" Width="200px"
                                    AccessKey="C" TabIndex="3"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="BatPrdPltno">Batch-Product-Plant</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="BatPrdPltnoTxt" runat="server" CssClass="UCTxtCls" MaxLength="30"
                                    Width="200px" AccessKey="C" TabIndex="3" ReadOnly="true"></asp:TextBox>
                                <asp:Label ID="BatPrdPltnoLbl" runat="server" CssClass="HideRow"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                          <asp:TableRow ID="SAPPlantTR" CssClass = "HideRow">
                            <asp:TableCell CssClass="MainTD" ID="SAPPlantTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                 <asp:Label ID="SAPPlantLbl" runat="server"  ></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine" onkeypress="taLimit()"
                                    onkeyup="taCount()" MaxLength="250" Width="200px" AccessKey="D" TabIndex="4" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell ID="MfgdateTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:Label ID ="ShowMfgDate" CssClass="MainTD" runat ="server"> 
                               <uc2:calibercalender id="MfgDate" runat="server">
                                </uc2:calibercalender></asp:Label>
                                  <%--    For Displaying in label after getting the date from SAP--%>
                                 <asp:Label ID ="ShowMfgDIsplay" CssClass="MainTD" runat ="server"> 
                              </asp:Label>
                               
                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell ID="ExpdateTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                             <asp:Label ID ="ShowExpDate" CssClass="MainTD" runat ="server"> 
                                <uc2:calibercalender id="ExpDate" runat="server">
                                </uc2:calibercalender></asp:Label>
                            <%--    For Displaying in label after getting the date from SAP--%>
                                  <asp:Label ID ="ShowExpDIsplay" CssClass="MainTD" runat ="server"> 
                              </asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="QualityTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="QualityTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine"
                                   onkeypress="taLimit()" onkeyup="taCount1()"  MaxLength="50" Width="200px" TabIndex="5"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="OtherDetailsTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="OtherDetailsTxt" runat="server" CssClass="TxtCls" TextMode="MultiLine"
                                    onkeypress="taLimit()" onkeyup="taCount()" MaxLength="250" Width="200px" TabIndex="6"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RemarksRow" runat="server" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD">
                                <asp:Literal runat="server" ID="RemarksLtrl"></asp:Literal>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="RemarksTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    TextMode="MultiLine" Rows="2" AccessKey="R"></asp:TextBox>
                                <input type="button" onclick="fnOpenReasons(1,'RemarksTxt')" class='RsnPUP'>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow ID="IARow" runat="server" CssClass="HideRow">
                <asp:TableCell>
                    <asp:Table ID="IATab" runat="server" CssClass='SubTable' Width="100%" CellPadding="0"
                        CellSpacing="1" HorizontalAlign="Center">
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainFoot">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainFoot" HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="ButCls" Height="20px" onMouseOver="this.className='ButOCls'"
                                    onMouseOut="this.className='ButCls'" AccessKey="V" Font-Underline="False"></asp:HyperLink>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>

<script language="javascript">
<!--
document.getElementById('CodeTxt').focus()

var taMaxLength = 250
var taMaxLength1 = 50
		function taLimit() {
			var taObj=window.event.srcElement;
			if (taObj.value.length==taObj.maxLength*1) return false;
		}

		function taCount() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength*1){
				taObj.value=taObj.value.substring(0,taMaxLength*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			}
			}		
					
	  
		function taCount1() {
			var taObj=window.event.srcElement;			
			if (taObj.value.length>taMaxLength1*1){
				taObj.value=taObj.value.substring(0,taMaxLength1*1);
				alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength1 +" Characters")
			}
			}	
        function fnOpenPopUp()
        {            
            var pageURL = "ProductPopup.aspx"
            var PWidth=550
            var PHeight=420
            var ScreenLeft = parseInt(window.screen.width-PWidth) /2;
            var ScreenTop = parseInt(window.screen.height-PHeight)/2; 
            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }	
			
	    function fnsetproductvalue(Baseid,Ucode,ProdDesc)	
	    {  
	    
	        document.getElementById ("ProductTxt").value= Baseid  
	        document.getElementById ("ProductUcodeTxt").value= Ucode 
	        if (ProdDesc !='' && Ucode !='' ) 
	        {
	            document.getElementById ("ProductLbl").innerHTML= ProdDesc + "(" +  Ucode  + ")"
	        }
	        else
	        {
	            document.getElementById ("ProductLbl").innerHTML= ""	      
	        }
	       
	        document.getElementById ("ProductDescTxt").value= ProdDesc  
	        if(<%=TransType %> == "1")
	        {
	            document.getElementById ("DescTxt").value = ""
    	        document.getElementById ("BatchTxt").value = ""
    	        document.getElementById ("CodeTxt").value = ""
    	        document.getElementById("CodeTxt").removeAttribute("contentEditable")
    	        document.getElementById ("TypeRdl_1").checked= false
    	        document.getElementById ("TypeRdl_0").checked= false
    	        document.getElementById ("PltNoDdl").selectedIndex = "0"
    	        document.getElementById ("SAPPltNo").value = ""
    	       document.getElementById("MfgDate$CalDateVal").value=""
    	        document.getElementById("MfgDate$CalDateDisplay").value=""
    	        document.getElementById("ExpDate$CalDateVal").value=""
    	         document.getElementById("ExpDate$CalDateDisplay").value=""        
    	         document.getElementById("ShowMfgDate").className = "MainTD" 
    	          document.getElementById("ShowMfgDIsplay").innerText="" 
                 document.getElementById("ShowExpDate").className = "MainTD"
    	          document.getElementById("ShowExpDIsplay").innerText="" 
    	         
    	         
//    	          var Obj =document.getElementById('ExpDate:ClientButtonDisplay');
//    	         document.getElementById("MfgDate_CalDateBtn").visible =true
    	        // ClientButtonDisplay
    	         
    	        
	        }
    	
    	 
    	
	    }	

        function MfgDateValid(src,args)
        {
            var Flag= VbMfgDateValid() ;
            if(Flag==false)
            {
                args.IsValid=false;
                Page_IsValid=false;
            }
        } 
        
               
        function ExpDateValid(src,args)
        {  
            var Flag= VbExpDateValid() ;
                        
            if(Flag==1)
            {
                src.errormessage="Exp. Date Must Be Greater Than Or Equal to Mfg. Date"
                args.IsValid=false;
                Page_IsValid=false;
            }
//            if(Flag==2)
//            {
//                src.errormessage="Exp. Date Must Be Greater Than Or Equal to Current Date"
//                args.IsValid=false;
//                Page_IsValid=false;
//            }
       }
        
//-->
</script>

<script language="vbscript">

'function to validate manufacturing date

    function VbMfgDateValid 

        MDate=document.getElementById("MfgDate$CalDateVal").value
        if MDate="" then exit function

        ThisMonth = <%=ThisMonth%>
        ThisYear = <%=ThisYear%>
        ThisDay = <%=ThisDay%>
        Today=dateSerial(ThisYear,ThisMonth,ThisDay) 

        IDateAry=split(MDate,"/")	
        IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))

        DDgap=DateDiff("d",Today,IDateVal)

        if DDgap>0 then
        VbMfgDateValid=false
        end if  

    End function 
    
'function to validate Expiry date 
    
    function VbExpDateValid

        MfgDate=document.getElementById("MfgDate$CalDateVal").value
        if MfgDate="" then exit function
        VbExpDateValid1=true
        
        ExpDate=document.getElementById("ExpDate$CalDateVal").value
        if ExpDate="" then exit function

        MfgDateAry=split(MfgDate,"/")
        ExpDateAry=split(ExpDate,"/")
        MfgDateVal=dateSerial(MfgDateAry(2),MfgDateAry(0),MfgDateAry(1))
        ExpDateVal=dateSerial(ExpDateAry(2),ExpDateAry(0),ExpDateAry(1))

        DDgap=DateDiff("d", ExpDateVal,MfgDateVal)
        if DDgap>0 then
           VbExpDateValid=1
        else
            ThisMonth = <%=ThisMonth%>
            ThisYear = <%=ThisYear%>
            ThisDay = <%=ThisDay%>
            Today=dateSerial(ThisYear,ThisMonth,ThisDay) 

            IDateAry=split(ExpDate,"/")	
            IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))

            DDgap=DateDiff("d",Today,IDateVal)

            if DDgap<0 then
            VbExpDateValid=2
            end if  
            
        end if
     End function 
</script>

<script language ="javascript" >

    function fncheckPltId() {
        var message = ""
        if (document.getElementById("SAPPltNo").value == '' || document.getElementById("BatchTxt").value == '' || document.getElementById("ProductUcodeTxt").value == '') {
            if (document.getElementById("ProductUcodeTxt").value == '') {
                message = message + "\n - " + "Select Value For: Product/Material"
            }
            if (document.getElementById("BatchTxt").value == '') {
                message = message + "\n - " + "Enter Value For: Batch Number"
            }
            if (document.getElementById("SAPPltNo").value == '') {
                message = message + "\n - " + "Select Value For: SAP Plant Code"
            }
            if (document.getElementById("ProductLbl").innerHTML == "()") {
                document.getElementById("ProductLbl").innerHTML = ""
            }
            alert(message)
            if (document.getElementById("ProductLbl").innerHTML == "()") {
                document.getElementById("ProductLbl").innerHTML = ""
            }
        }
        else {
            document.getElementById("GetFromSAP").click();
        }
    }
    function Detach() {
        if (typeof (fnCallESign) != "undefined") {

            var formName = document.forms(0).name
            document.forms(0).detachEvent('onsubmit', fnCallESign)
        }
    }
</script>

</html>
