<%@ Page Language="vb" AutoEventWireup="false" Codebehind="DeptUsrGrpMappin.aspx.vb"
    Inherits="DeptProcess.DeptUsrGrpMappin" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    
    <script language="vbscript">
		function AlertMsgBox(ConfermationMessage)
            ErrStr = ConfermationMessage
		    ReturnVal=MsgBox(ErrStr,vbOkOnly,"Message From Caliber QAMS")
		    if ReturnVal=1 then
		    AlertMsgBox=6
		    else
		    AlertMsgBox=7
		    end if
	    End function 
    </script>
    
    <script language="javascript">
        function FnAdtrGrpPopUp()
        {
            SetPopDimensions()
            var pageURL = "AuditorPopUp.aspx?UgpIds=" + document.getElementById("AdteeGrpIdTxt").value + "&ExistingId=" + document.getElementById("AdtrGrpIdTxt").value
            var features = "height= 450,width= 670,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function fnGetAuditorGrpVal(KdIdVal,KdCodeVal,KfLableVal)
        {
            document.getElementById("AdtrGrpIdTxt").value=KdIdVal
            document.getElementById("AdtrGrpTxt").value=KfLableVal
            document.getElementById("AdtrGrpLbl").innerHTML=KfLableVal
        }
        
        function FnAdteeGrpPopUp()
        {
            SetPopDimensions()
            var pageURL = "AuditeePopUp.aspx?UgpIds=" + document.getElementById("AdtrGrpIdTxt").value + "&ExistingId=" + document.getElementById("AdteeGrpIdTxt").value
            var features = "height= 450,width= 670,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=180,left=150" 
            var SpWinObj = window.open(pageURL,'BRMPopup',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function fnGetAuditeeListVal(KdIdVal,KdCodeVal,KfLableVal)
        {
            document.getElementById("AdteeGrpIdTxt").value=KdIdVal
            document.getElementById("AdteeGrpTxt").value=KfLableVal
            document.getElementById("AdteeGrpLbl").innerHTML=KfLableVal
        }
        
        function ShowConfermationMessage()
        {
            var ReturnStatus = <%=ReturnStatus%>
            var ConfermationMessage = "<%=ErrerMessage%>"
            
            if(ConfermationMessage != "")
            {
                AlertMsgBox(ConfermationMessage)            
                //alert(ConfermationMessage)
            }
        }
        
        function  AjaxChemType(RowCnt,BaseID,Status)
        {
    	
         var xmlhttp;
            try{
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
               }
            catch(ex)
            {
               try {
                     xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
                   }
               catch(ex)
                 { 
                    try
                    {         
                      xmlhttp=new XmlHttpRequest();
                    }
                    
                     catch(ex)
                    {
                      alert("please update the webbrowser");
                    }
                 }
            }

            xmlhttp.onreadystatechange=function()
            { 
                if(xmlhttp.readystate==4)
                {
                    s=xmlhttp.responseText;

                    if(s == "0")
                    {
                        document.getElementById("StatusTd"+RowCnt).innerText = "Active"
                        document.getElementById("StatusTd"+RowCnt).style.color = "Green"
                        document.getElementById("Status"+RowCnt).value =  (document.getElementById("Status"+RowCnt).value == 0 ? 1 : 0)
                       
                    }
                    else if(s == "1")
                    {
                        document.getElementById("StatusTd"+RowCnt).innerText = "In-Active"
                        document.getElementById("StatusTd"+RowCnt).style.color = "Red"
                        document.getElementById("Status"+RowCnt).value =  (document.getElementById("Status"+RowCnt).value == 0 ? 1 : 0)
                      
                    }
                }//if
            }//onready

            Status = document.getElementById("Status"+RowCnt).value
            var url="Ajax_ChemTyp.aspx?BaseID=" + BaseID + "&Status=" + Status 
            xmlhttp.open("GET",url,true);
            xmlhttp.send(null);
        }
         
        function FnCheckStatus(src,args)
        {
            var Cnt=<%=TotCnt%>
            for(var i=0; i<Cnt; i++)
            {
                if(document.getElementById("DeptDDL").value==document.getElementById("DeptId" + i).value)
                {
                    if(document.getElementById("Status" + i).value==1)
                    {
                        src.errormessage="Selected Department/Site Status Is In-Active. Change The Status To Active And Then Submit";
                        args.IsValid=false;
  	                    Page_IsValid=false;
                    }
                }
            }
        }
        
        ShowConfermationMessage()

        
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="Table1">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="DeptTd" CssClass="MainTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="DeptDDL" runat="Server" AutoPostBack=true>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AdtrGrpTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id="AdtrGrpBtn" onclick="FnAdtrGrpPopUp()" class="RsnPUP" />
                                <asp:TextBox ID="AdtrGrpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="AdtrGrpTxt" runat="Server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="AdtrGrpLbl" runat="server" CssClass="LblCls"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="AdteeGrpTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" id="AdteeGrpBtn" onclick="FnAdteeGrpPopUp()" class="RsnPUP" />
                                <asp:TextBox ID="AdteeGrpIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="AdteeGrpTxt" runat="Server" CssClass="HideRow"></asp:TextBox>
                                <asp:Label ID="AdteeGrpLbl" runat="server" CssClass="LblCls"></asp:Label>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2" VerticalAlign=Middle HorizontalAlign=Center >
                                <asp:Button ID="SubmitBtn" runat="Server" CssClass="ButCls" onmouseover="this.className='ButOCls'"
                                    onmouseout="this.className='ButCls'" Text="Submit" />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DispTable">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
