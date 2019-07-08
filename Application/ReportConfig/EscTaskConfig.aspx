<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EscTaskConfig.aspx.vb" Inherits="ReportConfig.EscTaskConfig" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.text %>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <link href="../Plugins/ColorPicer/colorpicker.css" rel="stylesheet" type="text/css" />

    <script src="../Plugins/ColorPicer/colorpicker.js" type="text/javascript"></script>
    
    <script language="javascript">
    
        function FnOpenHelpDoc()
        {
            var pageURL = "HelpDocEsc.aspx"
            var features = "height=650,width=950,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
    
        function FnCheckRepetation(src,args)
        {
            args.IsValid=true;
            Page_IsValid=true;
            var Flag=true;
            
            var TotalCnt=<%=TotalCnt%>
            for(var i=0; i<TotalCnt; i++)
            {
                if(document.getElementById("EscCodeDDL_" + (i+1))!=null)
                {
                    if(document.getElementById("EscCodeDDL_" + (i+1)).value==document.getElementById("EscCodeDDL_" + i).value)
                    {
                        Flag=false;
                    }
                }
            }
            
            if(Flag==false)
            {
                args.IsValid=false;
                Page_IsValid=false;
                return false;
            }
        }
        
        function FnCopyFrom()
        {
            var SelectId=$("#IdTxt1").val();
            if(SelectId=="")
             SelectId="0";
            var pageURL = "CopyFrom.aspx?SelectId="+SelectId;
            var features = "height=450,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=200,left=100"
            SpWinObj = window.open(pageURL,'SpecCodes',features)
            if(SpWinObj.opener == null) SpWinObj.opener=self;
            SpWinObj.focus();
        }
        
        function AssignVal(Id,DeptDesc)
        {
            document.getElementById("IdTxt").value=Id;
            document.getElementById("IdTxt1").value=Id;
            document.getElementById("CpyFrmVal").innerHTML=DeptDesc;
            document.getElementById("CpyFrmTxt").value=DeptDesc;             
            document.getElementById("EscLvlTxt").value='';
        }
        
        function PageRefresh()
        {            
            document.getElementById("Button1").click();
        }
        
        function Detach()
        {
        var formName = document.forms(0).name
        document.all(formName).detachEvent('onsubmit',fnCallESign)
        }

      $(document).ready(function() {
      
             var TaskTabTyp = $("#TaskTabDDL").val();    
             if(TaskTabTyp=="")
             {
                $('#TaskTypTr').addClass('HideRow');
                $('#PlnStsTr').addClass('HideRow');      
                $('#IssuTaskTypTd').addClass('HideRow');
                $('#ActTaskTypTd').addClass('HideRow');
                $('#AppCntTr').removeClass("HideRow");
             }  
             
             //In Modification
              TaskTabTyp = '<%=TaskTabID%>';    
                    
            if(TaskTabTyp==2)
              {
                   $('#AppCntTr').removeClass("HideRow").addClass("MainTD");
                   $('#TaskTypTr').removeClass("HideRow").addClass("MainTD");
                   $('#IssuTaskTypTd').removeClass("HideRow").addClass("MainTD");
                   $('#ActTaskTypTd').removeClass("MainTD").addClass("HideRow");
              }
             else if(TaskTabTyp==3)
              {
                   $('#AppCntTr').removeClass("HideRow").addClass("MainTD");
                   $('#TaskTypTr').removeClass("HideRow").addClass("MainTD");
                   $('#IssuTaskTypTd').removeClass("MainTD").addClass("HideRow");
                   $('#ActTaskTypTd').removeClass("HideRow").addClass("MainTD");
              }
             else if(TaskTabTyp==4)
              {
                   $('#AppCntTr').removeClass("MainTD").addClass("HideRow");
                   $('#TaskTypTr').removeClass("MainTD").addClass("HideRow");
                   $('#PlnStsTr').removeClass("HideRow").addClass("MainTD");
                   document.getElementById("IssTaskTypDDL").value="";
                   document.getElementById("AppCntDDL").value="0";
                   
              }
              else
              {
                   $('#AppCntTr').removeClass("HideRow").addClass("MainTD");              
              }
              
              
           $("#TaskTabDDL").change(function () {
            
             var TaskTabTyp = this.value;    
                         
             if(TaskTabTyp==2)
              {
                   $('#AppCntTr').removeClass("HideRow").addClass("MainTD");
                   $('#TaskTypTr').removeClass("HideRow").addClass("MainTD");
                   $('#IssuTaskTypTd').removeClass("HideRow").addClass("MainTD");
                    $('#PlnStsTr').removeClass("MainTD").addClass("HideRow");     
                   $('#ActTaskTypTd').removeClass("MainTD").addClass("HideRow");
                   document.getElementById("IssTaskTypDDL").value="";
                   document.getElementById("AppCntDDL").value="";
              }
              
              else if(TaskTabTyp==3)
              {
                   $('#AppCntTr').removeClass("HideRow").addClass("MainTD");
                   $('#TaskTypTr').removeClass("HideRow").addClass("MainTD");
                    $('#PlnStsTr').removeClass("MainTD").addClass("HideRow");     
                   $('#IssuTaskTypTd').removeClass("MainTD").addClass("HideRow");
                   $('#ActTaskTypTd').removeClass("HideRow").addClass("MainTD");
                   document.getElementById("AcpTaskTypDDL").value="";
                   document.getElementById("AppCntDDL").value="";
              }
              else if(TaskTabTyp==4)
              {
                   $('#AppCntTr').removeClass("MainTD").addClass("HideRow");
                   $('#TaskTypTr').removeClass("MainTD").addClass("HideRow");
                   $('#PlnStsTr').removeClass("HideRow").addClass("MainTD");
                   document.getElementById("IssTaskTypDDL").value="";
                   document.getElementById("AcpTaskTypDDL").value="";
                   document.getElementById("AppCntDDL").value="0";
                   
              }
              else
              {
                    $('#AppCntTr').removeClass("HideRow").addClass("MainTD");
                    $('#TaskTypTr').removeClass("MainTD").addClass("HideRow");
                    $('#PlnStsTr').removeClass("MainTD").addClass("HideRow");     
                    $('#IssuTaskTypTd').removeClass("MainTD").addClass("HideRow");
                    $('#ActTaskTypTd').removeClass("MainTD").addClass("HideRow");
                    document.getElementById("IssTaskTypDDL").value="";
                    document.getElementById("AcpTaskTypDDL").value="";
                    document.getElementById("AppCntDDL").value="";
              }               
                
          });
        });


        function fnCheckVal(src,args)
        {
                       
            var str=""
            var TaskTabTyp = $("#TaskTabDDL").val();    
            
            args.IsValid=true;
            Page_IsValid=true;
            
             if(TaskTabTyp==2)
               {
                 if($("#IssTaskTypDDL").val()=="")
                     str =str + "Select Value For: Task Type" + "  \n -"
               }
            else if(TaskTabTyp==3)
              {
                if($("#AcpTaskTypDDL").val()=="")
                     str =str + "Select Value For: Task Type" + "  \n -"
              }
            else if(TaskTabTyp==4)
              {
                if($("#PlnStsDDL").val()=="")
                     str =str + "Select Value For: Plan Status" + "  \n -"
              }
            
            if(str!="")
            {
                src.errormessage=str.substring(0,str.length-3)
                args.IsValid=false;
                Page_IsValid=false;
            }        
              
        }

    </script>
    
    <style type="text/css">
        HelpCss	{	
	        background-image:url(Help-icon.png);
	    }	
    </style>

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
                            <asp:TableCell ColumnSpan="2" CssClass="SubHead">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Style="font-weight: bold" Width="35%">Unique Code</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" Width="200px" MaxLength="30" CssClass="UCTxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Style="font-weight: bold" Width="35%">Description</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" Width="200px" MaxLength="250" CssClass="TxtCls"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="DeptTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="DeptDDL" runat="server" Width="350px">
                                </asp:DropDownList>
                               <asp:TextBox ID="DeptTxt" runat="server" readonly="true" Width="350px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="CatTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="CatDDL" runat="server" Width="200px">
                                </asp:DropDownList>
                               <asp:TextBox ID="CatTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="TaskTabTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="TaskTabDDL" runat="server" Width="150px">
                                </asp:DropDownList>
                               <asp:TextBox ID="TaskTabTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AppCntTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="AppCntTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="AppCntDDL" runat="server" Width="150px">
                                <asp:ListItem Value="" Text="<<Select>>"></asp:ListItem>                                
                                <asp:ListItem Value="0" Text="0"></asp:ListItem>                                
                                <asp:ListItem Value="1" Text="1"></asp:ListItem>                                
                                <asp:ListItem Value="2" Text="2"></asp:ListItem>                                
                                <asp:ListItem Value="3" Text="3"></asp:ListItem>                                
                                <asp:ListItem Value="4" Text="4"></asp:ListItem>                                
                                <asp:ListItem Value="5" Text="5"></asp:ListItem>                                
                                <asp:ListItem Value="6" Text="6"></asp:ListItem>                                
                                </asp:DropDownList>
                               <asp:TextBox ID="AppCntTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="TaskTypTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="TaskTypTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell  ID="IssuTaskTypTd" CssClass="HideRow">
                                <asp:DropDownList ID="IssTaskTypDDL" runat="server" Width="150px">
                                </asp:DropDownList>
                               <asp:TextBox ID="IssTaskTypTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                             <asp:TableCell ID="ActTaskTypTd" CssClass="HideRow">
                                <asp:DropDownList ID="AcpTaskTypDDL" runat="server" Width="150px">
                                </asp:DropDownList>
                               <asp:TextBox ID="AcpTaskTypTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow ID="PlnStsTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="PlanStsTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="PlnStsDDL" runat="server" Width="150px">
                                    <asp:ListItem Value="" Text="<<Select>>"></asp:ListItem>                                
                                    <asp:ListItem Value="1" Text="Under Acceptance"></asp:ListItem>                                
                                    <asp:ListItem Value="2" Text="Under Authorization"></asp:ListItem>                                
                                    <asp:ListItem Value="3" Text="Under Implementation"></asp:ListItem>
                                    <asp:ListItem Value="4" Text="Under Effectiveness/Monitoring"></asp:ListItem>
                                </asp:DropDownList>
                               <asp:TextBox ID="PlnStsTxt" runat="server" readonly="true" Width="250px" CssClass="HideRow"></asp:TextBox>                                
                            </asp:TableCell>
                        </asp:TableRow>
                        
                          <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="RuleTypTd" Style="font-weight: bold" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:DropDownList CssClass="HideRow" ID="RuleTypeDDl" runat="server" Width="250px">
                                    <asp:ListItem Value="2">Report Date-Start Date</asp:ListItem>
                                    <asp:ListItem Value="1">Report Date-Issue Target Date</asp:ListItem>
                                </asp:DropDownList>
                                <asp:Label ID="RuleTypelbl" CssClass="LblCls" runat="server" Text="Report Date-Issue Target Date"></asp:Label> 
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTd" ID="EscLvlTd" Style="font-weight: bold"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                               <asp:TextBox ID="EscLvlTxt" runat="server" onkeydown="return FnAllowNumVal1()"  onblur="IsDigit1()" AutoPostBack=true Width="50px" CssClass="TxtCls" MaxLength=2></asp:TextBox> &nbsp;&nbsp;
                               <asp:Label ID="Lbl" runat="server" CssClass="LblCls" Text="Copy From"></asp:Label>&nbsp;&nbsp;
                               <input type=button id="CpyBtn" onclick="FnCopyFrom()" class="RsnPUP" />
                               <asp:TextBox ID="IdTxt1" runat="server" CssClass="HideRow"></asp:TextBox>
                               <asp:TextBox ID="IdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                               <asp:TextBox ID="CpyFrmTxt" runat="server" CssClass="HideRow"></asp:TextBox>&nbsp;&nbsp;
                               <asp:Label ID="CpyFrmVal" runat="server" CssClass="LblCls"></asp:Label>&nbsp;&nbsp;
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FilRw" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTd" ColumnSpan="2">
                                <asp:Table ID="EscTable" runat="server" HorizontalAlign="center" CellPadding="0"
                                    CssClass="SubTable" CellSpacing="1" Width="100%">
                                </asp:Table>
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
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="2" HorizontalAlign="left">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" Text="Submit" onMouseOut="this.className='ButCls'">
                                </asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:Button ID="Button1" runat="server" OnClientClick="Detach()" CausesValidation="false"></asp:Button>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ID="TableCell1" ColumnSpan="2">
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        
        <script language=javascript>
            
            function FnAssignText(icnt)
            {
                document.getElementById("NameTxt_" + icnt).value=document.getElementById("EscCodeDDL_" + icnt).options[document.getElementById("EscCodeDDL_" + icnt).selectedIndex].text;
            }
            
            function fnOpenUgpPopUp()
	        {
	            var pageURL = "UgpPopup.aspx?Type=1&icnt=" + 0 + "&jcnt=" + 0
                var features = "height=420,width=550,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=200,left=100"
                SpWinObj = window.open(pageURL,'SpecCodes',features)
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
	        }
	    
	        function fnCrSetUgpCode(BaseId,UgpDesc,icnt,jcnt)
            {
                 document.getElementById("MailUgpLbl").innerHTML=UgpDesc
                 document.getElementById("MailUgpIdTxt").value=BaseId
                 document.getElementById("MailUgpDescTxt").value=UgpDesc
            }
            
             function FnAllowNumVal()
            {
                var e =event.keyCode                
                if(event.ctrlLeft == true){return false}
                if(event.shiftKey ==true){return false}
                else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)||(e ==109)) {return true}
                else if(e ==32){return false}
                else if(isNaN(String.fromCharCode(e))&&e!=189) //Validates for Key Data
                {return false}
            }
            
             function IsDigit3(e)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
                {
                    var e =event.keyCode   
                    var AvailableVal = window.event.srcElement.value;    
                    if(isNaN(AvailableVal)==true)
                    window.event.srcElement.value="";                 
                }
                
            function FnAllowNumVal1()
                {
                    var e =event.keyCode 
                    var AvailableVal = window.event.srcElement.value;    
                                  
                    if(event.ctrlLeft == true){return false}
                    if(event.shiftKey ==true){return false}
                    else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>96 && e <= 105)) {return true}
                    else if(e ==32||(e ==96 && AvailableVal=='')||(e ==48 && AvailableVal=='')){return false}
                    else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
                    {return false}
                }
            
             function IsDigit1(e)  ///Function To check Numeric values onblur Event if copied and paste Alphabets
                {
                    var e =event.keyCode   
                    var AvailableVal = window.event.srcElement.value;    
                    if(isNaN(AvailableVal)==true||AvailableVal==0)
                    window.event.srcElement.value="";                 
                }
    
        </script>
    </form>
</body>
</html>


