<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ChemTypConfig.aspx.vb"
    Inherits="DeptProcess.ChemTypConfig" %>

<%@ Register TagPrefix="uc1" TagName="ListSelection" Src="../CaliberCommonCtrls/ListSelection.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title>Registration Initiation</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <script language="javascript" src="../JScript/jquery.min.js"></script> <%--Added by P Suresh--%>
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" runat="server" ID="Table1">
            <asp:TableRow Height="20">
                <asp:TableCell CssClass="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table ID="CrTopTable" runat="server" HorizontalAlign="center" CellPadding="0"
                        CssClass="SubTable" CellSpacing="1" Width="100%">
                        <asp:TableRow>
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <asp:Table runat="server" ID="ChemTypTab" Align="center" CellPadding="0" class="SubTable"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="6" CssClass="MainTD" HorizontalAlign="right">
									    <span id="Sp_ChemTyp" style="color:Blue;cursor:hand;font-weight:bold" onclick="Fn_TypeReg()" >New Department/Site Creation</span>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="NewTypTr" CssClass="HideRow">
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <asp:Table runat="server" ID="FeildTypTab" Align="center" CellPadding="0" class="SubTable"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell ColumnSpan="7" CssClass="MainTD" HorizontalAlign="Right">
									    <span id="Span1" style="color:Blue;cursor:hand;font-weight:bold" onclick="Fn_FeildReg()" >New Audit Area Creation</span>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow ID="FeildTypTr" CssClass="HideRow">
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="6" CssClass="MainTD" HorizontalAlign="Right">
                                <asp:Table runat="server" ID="Table2" Align="center" CellPadding="0" class="SubTable"
                                    CellSpacing="1" Width="100%">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD" HorizontalAlign="Right"><span id="Span2" style="color:Blue;cursor:hand;font-weight:bold" onclick="Fn_MapDeptProcess()" >Department/Site and Audit Area Map</span></asp:TableCell>
                                    </asp:TableRow>
                                    </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="PrcRow" CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="6">
                                <asp:Literal ID="Literal1" runat="server">Department/Site and Audit Area Map</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DeptDDLRow" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Font-Bold="true">
                                Department/Site
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="DeptDDL" AutoPostBack="true" runat="server" Width="200px">
                                </asp:DropDownList>
                            </asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="3">
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow CssClass="HideRow" ID="InsAraTr">
                            <asp:TableCell ID="InsArTD" CssClass="MainTD" ColumnSpan="6">
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="ConfigFieldsTr">
                            <asp:TableCell ID="ConfigFieldsTd" ColumnSpan="6">
                                <uc1:listselection id="ConfigFields" runat="server">
                                </uc1:listselection>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ColumnSpan="6">
                                <asp:Table runat="server" ID="TypListTab" Align="center" CellPadding="0" class="SubTable"
                                    CellSpacing="1" Width="100%">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell ColumnSpan="6" ID="ValidatorsTd">
                                <asp:TextBox ID="IdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                                    ShowMessageBox="True"></asp:ValidationSummary>
                                <asp:TextBox ID="EventTypeTxt" runat="server"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
                <asp:TableCell>
                         <input id="reloadValue" type="hidden" name="reloadValue" value="" />
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    
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
    
    <script type="text/javascript">
    
    //Restricting Special Characters

    function RestrictSpecialChar(e) {
        //get the keycode when the user pressed any key in application
        var exp = String.fromCharCode(window.event.keyCode)

        //Below line will have the special characters that is not allowed you can add if you want more for some characters you need to add escape sequence
        var r = new RegExp("[,$#*@^&!]", "g");

        if (exp.match(r) != null) {
        window.event.keyCode = 0
        alert(" , $ # * @ ^ & ! These Characters Are Not Allowed ")
        return false;
        }
    }
    
    //Functions To restrict  the  Copy  of  data
    //onmousedown
//    function noCopyMouse(e) {
//        var isRight = (e.button) ? (e.button == 2) : (e.which == 3);
//        
//        if(isRight) {
//            return false;
//        }
//    }
    
    //onkeydown
//    function noCopyKey(e) {
//        var forbiddenKeys = new Array('c','x','v');
//        var keyCode = (e.keyCode) ? e.keyCode : e.which;
//        var isCtrl;


//        if(window.event)
//            isCtrl = e.ctrlKey
//        else
//            isCtrl = (window.Event) ? ((e.modifiers & Event.CTRL_MASK) == Event.CTRL_MASK) : false;


//        if(isCtrl) {
//            for(i = 0; i < forbiddenKeys.length; i++) {
//                if(forbiddenKeys[i] == String.fromCharCode(keyCode).toLowerCase()) {
//                    return false;
//                }
//            }
//        }
//    }
    //------------------------------
    
     function FnCheckStatus(src,args)
        {
            var Cnt=<%=TotCnt%>
            for(var i=0; i<Cnt; i++)
            {
                if(document.getElementById("DeptDDL").value==document.getElementById("DeptId" + i).value)
                {
                    if(document.getElementById("Status" + i).value!=1)
                    {
                        src.errormessage="Selected Department/Site Status Is In-Active. Change The staus To Active And Then Submit";
                        args.IsValid=false;
  	                    Page_IsValid=false;
                    }
                }
            }
        }
        
    
    function ShowConfermationMessage()
    {
        var ReturnStatus = <%=ReturnStatus%>
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
            if((ReturnStatus > 1) && (ReturnStatus < 5)) 
            {
                Fn_FeildReg(false)
            }
            if((ReturnStatus > 5) && (ReturnStatus < 9))
            {
                Fn_TypeReg(false)
            }
            AlertMsgBox(ConfermationMessage)
            //alert(ConfermationMessage)
        }
    }

    function  ReqFeildValid(src,args)
    {
    
        var EventControlId = event.srcElement.id  //document.getElementById("btn").value
        var err =""
        if(EventControlId == 'SubmtBtn')
        {
            if($.trim(document.getElementById("TxtType").value)=="")
            {
                err += 'Enter Value For: '+ document.getElementById("TypeTd").innerText + " \n- "
            }
            if($.trim(document.getElementById("PrefixTxt").value)=="")
            {
                err += 'Enter Value For: '+ document.getElementById("PrefixTd").innerText + " \n-"
            }
//            if(document.getElementById("ConfigFields_OptValues").value =="")
//            {
//                err += "Select Processes \n-"
//            }
            document.getElementById("EventTypeTxt").value =1
        }
        else if(EventControlId == 'SubmtBtn1')
        {
            if($.trim(document.getElementById("FeildTxt").value)=="")
            {
                err += 'Enter Value For: '+ document.getElementById("CharacteristicTd").innerText + " \n- "
            }
            if($.trim(document.getElementById("SymbTxt").value)=="")
            {
                err += 'Enter Value For: '+ document.getElementById("SymbolTd").innerText +  " \n-"
            }
            document.getElementById("EventTypeTxt").value =2
       }
        else if(EventControlId == 'btnConfirm')
        {
            if($.trim(document.getElementById("ConfigFields_OptValues").value)=="")
            {
                err += "Select Audit Area(s) \n-"
            }
            if($.trim(document.getElementById("DeptDDL").value)=="")
            {
                err += "Select Department/Site \n-"
            }
       }
        if(err !="")
        {
            src.errormessage=err.substring(0,err.length-3)
            args.IsValid=false; //true
            Page_IsValid=false; //true
        }
        else
        {
            args.IsValid=true; //true
            Page_IsValid=true; //true
        }
    }
	function FnAllowAlphaNumVal()
{
    var e =event.keyCode
    if(e==16 || e ==32){return false}
    else if((e ==37)||(e== 39)||(e ==8)||(e== 46)||(e== 9)){}
    else if((e >=65) && (e <=90)){}
    else if((e >=48) && (e <=57))
    {
        if( event.shiftLeft ==true)
            {return false}
    }
    else{return false}
    
     if( event.ctrlLeft ==true ||  event.ctrlRight ==true)
            {return false}
} 

function FnAllowAlphabateVal()
{
    var e =event.keyCode
    if(e==16 || e ==32){return false}
 
    else if((e ==37)||(e== 39)||(e ==8)||(e== 46)||(e== 9)){}
    else if((e >=65) && (e <=90)){}
    else if((e >=48) && (e <=57))
    {
        //if( event.shiftLeft ==true)
            {return false}
    }
    else{return false}
    
     if( event.ctrlLeft ==true ||  event.ctrlRight ==true)
            {return false}
} 

		function Refresh()
		{
		alert()
		 Form1.submit()
		}
		function Fn_Cancel()
		{
		document.getElementById("NewTypTr").className ="HideRow"
		}
		
		function Fn_TypeReg(NewField)
		{
		    NewField = (NewField == false )? NewField : true;
		    document.getElementById("NewTypTr").className =""
		    if(NewField == true)
		    {
		         document.getElementById("TxtType").value=""
		         document.getElementById("PrefixTxt").value=""
		    }
		}
		
		function Fn_FeildReg(NewField)
		{
		    NewField = (NewField == false )? NewField : true;
            document.getElementById("FeildTypTr").className ="";
		    if(NewField == true)
		    {
                document.getElementById("FeildTxt").value="";
                document.getElementById("SymbTxt").value="";
            }
		}
		
		function Fn_MapDeptProcess()
		{
		    
            document.getElementById("PrcRow").className="";
            document.getElementById("ConfigFieldsTr").className="";
            document.getElementById("InsAraTr").className="";
            document.getElementById("DeptDDLRow").className="";
            
		}
		
		function Fn_Cancel1()
		{
		    document.getElementById("FeildTypTr").className ="HideRow"
		}
		
		
        function  AjaxChemType(RowCnt,TypeId,Status)
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

            if(s == "1")
            {
                document.getElementById("StatusTd"+RowCnt).innerText = "Active"
                document.getElementById("StatusTd"+RowCnt).style.color = "Green"
                document.getElementById("Status"+RowCnt).value =  (document.getElementById("Status"+RowCnt).value == 0 ? 1 : 0)
               
            }
            else if(s == "0")
            {
                document.getElementById("StatusTd"+RowCnt).innerText = "In-Active"
                document.getElementById("StatusTd"+RowCnt).style.color = "Red"
                document.getElementById("Status"+RowCnt).value =  (document.getElementById("Status"+RowCnt).value == 0 ? 1 : 0)
              
            }
        }//if
    }//onready

    Status = document.getElementById("Status"+RowCnt).value
    var url="Ajax_ChemTyp.aspx?TypeID=" + TypeId + "&Status=" + Status 
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
 }
 
 function FormulaCreation(Type , ConfigFlds)
{


   var pageURL;
    pageURL ="../AQFFormula/AQFFormula.aspx?Type=" + Type + "&ConfigFlds=" + ConfigFlds
    SpWinObj = window.open(pageURL,'SpecCodes',"height=600,width=800,toolbar=no,resizable=no,menubar=no,status//=no,scrollbars=no,top=50,left=50");
    if(SpWinObj.opener == null) SpWinObj.opener=self;
   SpWinObj.focus();

}
    ShowConfermationMessage()

    </script>
<script type="text/javascript">
       jQuery(document).ready(function()
        {
                var d = new Date();
                d = d.getTime();
                if (jQuery('#reloadValue').val().length == 0)
                {
                        jQuery('#reloadValue').val(d);
                        jQuery('body').show();
                }
                else
                {
                        jQuery('#reloadValue').val('');
                        location.reload();
                }
        });
   </script>
</body>
</html>
