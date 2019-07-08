<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Trn.aspx.vb" Inherits="AuditPlanning.Trn" %>

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

    <script language="javascript" src="JScript.js"></script>

    <script language="vbscript" src="VBScript.vbs"></script>

    <script language="javascript">
	<!--
	RequestPrefix='<%=me.ClientID%>'

	//-->
    </script>

    <script language="javascript">
<!--
  var SpWinObj


	function fnCrformSubmit(){
	 document.all("GoBtn").click()
	}
	//-->


    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
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
                                <asp:Literal ID="SubTitleLtrl" runat="server">Registration Initiation</asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="PrevCatTR">
                            <asp:TableCell CssClass="MainTD" ID="PrevCatTD" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList runat="server" ID="PrevCatDDl" AutoPostBack="True" Width="200">
                                    <asp:ListItem Value="4">Audit Management</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="CodeTr" CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="CodeTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="CodeTxt" runat="server" CssClass="UCTxtCls" MaxLength="25" Width="200px"
                                    AccessKey="C" TabIndex="2" disabled>System Generated</asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DescTr" CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ID="DescTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="DescTxt" runat="server" CssClass="TxtCls" MaxLength="50" Width="200px"
                                    AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="FreqRow">
                            <asp:TableCell CssClass="MainTD" ID="FreqTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="FreqTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3"
                                    AccessKey="D" onkeypress="return IsDigit(event);" TabIndex="1"></asp:TextBox>&nbsp;Day(s)
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EformTR" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="EformTD" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="AuditTempPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:TextBox ID="NameTxt" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="300px"></asp:TextBox>
                                <asp:TextBox ID="TempID" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="BodyID" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DeptRow">
                            <asp:TableCell CssClass="MainTD" ID="DeptTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="DeptPopUpFn()" title="Click Here" class='RsnPUP' style="height: 20px">
                                <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="500px"></asp:TextBox>
                                <asp:TextBox ID="TextBox2" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox3" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="ProcessRow">
                            <asp:TableCell CssClass="MainTD" ID="ProcessTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="ProcessPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="500px"></asp:TextBox>
                                <asp:TextBox ID="TextBox5" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox6" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="AuditTypeRow">
                            <asp:TableCell CssClass="MainTD" ID="AdtTypeTD" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="AdtTypeDDL" runat="server" Width="200px" onchange="PreLoad()">
                                    <asp:ListItem Value="1">Internal</asp:ListItem>
                                    <asp:ListItem Value="2">External</asp:ListItem>
                                    <asp:ListItem Value="3">Vendor</asp:ListItem>
                                    <asp:ListItem Value="5">Management Review</asp:ListItem>
                                    <asp:ListItem Value="4">Other(s)</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="RegTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="RegTD" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="RegPopUpFn()" title="Click Here" class='RsnPUP' style="height: 20px">
                                <asp:TextBox ID="RegCodeTxt" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="300px"></asp:TextBox>
                                <asp:TextBox ID="RegId" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox12" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="VendorTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" ID="VendorTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <input type="button" onclick="VendorPopUpFn()" title="Click Here" class='RsnPUP'
                                    style="height: 20px">
                                <asp:TextBox ID="TextBox7" ReadOnly="true" runat="server" BorderStyle="none" BorderColor="white"
                                    Width="300px"></asp:TextBox>
                                <asp:TextBox ID="TextBox8" runat="server" CssClass="hiderow"></asp:TextBox>
                                <asp:TextBox ID="TextBox9" runat="server" CssClass="hiderow"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                         <asp:TableRow ID="OtherTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Font-Bold=true  ID="OtherTd" Width="35%">Other Details</asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="OtherTxt" runat="server" CssClass="TxtCls" MaxLength="250" Width="200px"
                                    AccessKey="D"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="PriorityTr">
                            <asp:TableCell CssClass="MainTD" ID="PriorityTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:DropDownList ID="Priorityddl" runat="server" Width="150px" AutoPostBack="False">
                                    <asp:ListItem Value="0" Text=""></asp:ListItem>
                                    <asp:ListItem Value="1">High</asp:ListItem>
                                    <asp:ListItem Value="2">Medium</asp:ListItem>
                                    <asp:ListItem Value="3">low</asp:ListItem>
                                    <asp:ListItem Value="4">None</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="HideRow" ID="TaskDescTR">
                            <asp:TableCell CssClass="MainTD" ID="TaskDescTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:TextBox ID="TaskDescTxt" runat="server" TextMode="multiline" OnKeyPress="return fnLenValid()"
                                    CssClass="TxtCls" MaxLength="250" Width="200px" AccessKey="D" TabIndex="1"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" ID="MailOpTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList runat="server" AutoPostBack="true" ID="MailOpRbl" RepeatDirection="Horizontal"
                                    CssClass="RBlist" TabIndex="5">
                                    <asp:ListItem Value="0">One Time</asp:ListItem>
                                    <asp:ListItem Value="1">Repeat</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell ID="StartDateTd" CssClass="MainTD" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc2:CaliberCalender id="StartDate" runat="server">
                                </uc2:CaliberCalender>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="PatternTr">
                            <asp:TableCell CssClass="MainTD" ID="PatternTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButtonList runat="server" ID="PatternRbl" AutoPostBack="true" RepeatDirection="Horizontal"
                                    CssClass="RBlist" TabIndex="5">
                                    <asp:ListItem Value="1">Daily</asp:ListItem>
                                    <asp:ListItem Value="2">Weekly</asp:ListItem>
                                    <asp:ListItem Value="3">Monthly</asp:ListItem>
                                    <asp:ListItem Value="4">Yearly</asp:ListItem>
                                </asp:RadioButtonList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="DayTr">
                            <asp:TableCell CssClass="MainTD" ID="DayTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButton runat="server" ID="DayRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>Every&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="DayTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server" CssClass="TxtCls"
                                    MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Day(s)
                                <br />
                                <br />
                                <asp:RadioButton runat="server" ID="EverydayRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>Every WeekDay
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="WeekTr">
                            <asp:TableCell CssClass="MainTD" ID="WeekTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                Every&nbsp;
                                <asp:TextBox ID="WeekTxt" onkeypress="return IsDigit(event);" runat="server" CssClass="TxtCls" MaxLength="2"
                                    Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Week(s) On:
                                <br />
                                <br />
                                <asp:CheckBoxList ID="WeekChkL" runat="server" RepeatDirection="Horizontal" CssClass="RBlist">
                                    <asp:ListItem Value="0">Sunday</asp:ListItem>
                                    <asp:ListItem Value="1">Monday</asp:ListItem>
                                    <asp:ListItem Value="2">Tuesday</asp:ListItem>
                                    <asp:ListItem Value="3">Wednesday</asp:ListItem>
                                    <asp:ListItem Value="4">Thursday</asp:ListItem>
                                    <asp:ListItem Value="5">Friday</asp:ListItem>
                                    <asp:ListItem Value="6">Saturday</asp:ListItem>
                                </asp:CheckBoxList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="MonthRow">
                            <asp:TableCell CssClass="MainTD" ID="MonthTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButton runat="server" ID="MonthDayRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>Day&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="MonthDayTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;of
                                every &nbsp;&nbsp;
                                <asp:TextBox ID="MonthTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Month(s)
                                <br />
                                <br />
                                <asp:RadioButton runat="server" ID="MonthRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>The&nbsp;
                                <asp:DropDownList runat="server" ID="MonthDDL" Width="100">
                                    <asp:ListItem Value="0" Selected="True">Sunday</asp:ListItem>
                                    <asp:ListItem Value="1">Monday</asp:ListItem>
                                    <asp:ListItem Value="2">Tuesday</asp:ListItem>
                                    <asp:ListItem Value="3">Wednesday</asp:ListItem>
                                    <asp:ListItem Value="4">Thursday</asp:ListItem>
                                    <asp:ListItem Value="5">Friday</asp:ListItem>
                                    <asp:ListItem Value="6">Saturday</asp:ListItem>
                                </asp:DropDownList>
                                of every &nbsp;&nbsp;
                                <asp:TextBox ID="Month1Txt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Month(s)
                                <br />
                                <br />
                                <asp:RadioButton runat="server" ID="PMonthRB" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>Every&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="POptTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server" CssClass="TxtCls"
                                    MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList runat="server" ID="POptDdl" Width="100">
                                    <asp:ListItem Value="1" Selected="True">Day</asp:ListItem>
                                    <asp:ListItem Value="2">Week</asp:ListItem>
                                    <asp:ListItem Value="3">Month</asp:ListItem>
                                </asp:DropDownList>&nbsp;&nbsp;For
                                <asp:TextBox ID="PMonthTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Month(s)
                                &nbsp;&nbsp;And Every &nbsp;&nbsp;
                                <br />
                                <br />
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="ROptTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server" CssClass="TxtCls"
                                    MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;
                                <asp:DropDownList runat="server" ID="ROptDdl" Width="100">
                                    <asp:ListItem Value="1" Selected="True">Day</asp:ListItem>
                                    <asp:ListItem Value="2">Week</asp:ListItem>
                                    <asp:ListItem Value="3">Month</asp:ListItem>
                                </asp:DropDownList>&nbsp;&nbsp;For
                                <asp:TextBox ID="RMonthTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Month(s)
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="YearTr">
                            <asp:TableCell CssClass="MainTD" ID="YearTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <asp:RadioButton runat="server" ID="EYrRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>Every&nbsp;
                                <asp:TextBox ID="EyrTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server" CssClass="TxtCls"
                                    MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>&nbsp;&nbsp;Year(s)
                                &nbsp;&nbsp;
                                <br />
                                <br />
                                <asp:RadioButton runat="server" ID="MnthYrRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>On&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList runat="server" ID="MnthYrDdl" Width="100">
                                    <asp:ListItem Value="1" Selected="True">January</asp:ListItem>
                                    <asp:ListItem Value="2">February</asp:ListItem>
                                    <asp:ListItem Value="3">March</asp:ListItem>
                                    <asp:ListItem Value="4">April</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">June</asp:ListItem>
                                    <asp:ListItem Value="7">July</asp:ListItem>
                                    <asp:ListItem Value="8">August</asp:ListItem>
                                    <asp:ListItem Value="9">September</asp:ListItem>
                                    <asp:ListItem Value="10">October</asp:ListItem>
                                    <asp:ListItem Value="11">November</asp:ListItem>
                                    <asp:ListItem Value="12">December</asp:ListItem>
                                </asp:DropDownList>&nbsp;
                                <asp:TextBox ID="MnthYrTxt" onkeypress="return IsDigit(event);" Enabled="false" runat="server"
                                    CssClass="TxtCls" MaxLength="2" Width="30px" AccessKey="D" TabIndex="2"></asp:TextBox>
                                &nbsp;&nbsp;
                                <br />
                                <br />
                                <asp:RadioButton runat="server" ID="YrOnRb" Text="" Font-Size="XX-Small" TabIndex="5">
                                </asp:RadioButton>On the&nbsp;
                                <asp:DropDownList runat="server" ID="DropDownList1" Width="100">
                                    <asp:ListItem Value="0" Selected="True">Sunday</asp:ListItem>
                                    <asp:ListItem Value="1">Monday</asp:ListItem>
                                    <asp:ListItem Value="2">Tuesday</asp:ListItem>
                                    <asp:ListItem Value="3">Wednesday</asp:ListItem>
                                    <asp:ListItem Value="4">Thursday</asp:ListItem>
                                    <asp:ListItem Value="5">Friday</asp:ListItem>
                                    <asp:ListItem Value="6">Saturday</asp:ListItem>
                                </asp:DropDownList>
                                of &nbsp;
                                <asp:DropDownList runat="server" ID="YrOnDdl" Width="100">
                                    <asp:ListItem Value="1" Selected="True">January</asp:ListItem>
                                    <asp:ListItem Value="2">February</asp:ListItem>
                                    <asp:ListItem Value="3">March</asp:ListItem>
                                    <asp:ListItem Value="4">April</asp:ListItem>
                                    <asp:ListItem Value="5">May</asp:ListItem>
                                    <asp:ListItem Value="6">June</asp:ListItem>
                                    <asp:ListItem Value="7">July</asp:ListItem>
                                    <asp:ListItem Value="8">August</asp:ListItem>
                                    <asp:ListItem Value="9">September</asp:ListItem>
                                    <asp:ListItem Value="10">October</asp:ListItem>
                                    <asp:ListItem Value="11">November</asp:ListItem>
                                    <asp:ListItem Value="12">December</asp:ListItem>
                                </asp:DropDownList>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow ID="EndDateTr">
                            <asp:TableCell CssClass="MainTD" ID="EndDateTd" Width="35%"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD">
                                <uc2:CaliberCalender id="EndDate" runat="server">
                                </uc2:CaliberCalender>
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
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0"
                        HorizontalAlign="center" ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                    Class='ButCls' AccessKey="C" onMouseOut="this.className='ButCls'" Text="Submit" Width="70">
                                </asp:Button>
                            </asp:TableCell>
                            <asp:TableCell HorizontalAlign="Right">
                                <asp:HyperLink ID="Hlink" runat="server" CssClass="HideRow" Height="20px" onMouseOver="this.className='ButOCls'"
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
document.getElementById('DescTxt').focus()

var taMaxLength = 250
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
	function PreLoad()
	{
	    if(document.getElementById("AdtTypeDDL").value=="2")
	    {
	    
            document.getElementById("RegTr").className= ""
            document.getElementById("VendorTr").className = "HideRow"
       
	    }
	    else if(document.getElementById("AdtTypeDDL").value=="3")
	    {
	        document.getElementById("VendorTr").className= ""
            document.getElementById("RegTr").className = "HideRow"
	    }
	    else if(document.getElementById("AdtTypeDDL").value=="4")
	    {
	         document.getElementById("OtherTr").className= ""
             document.getElementById("RegTr").className = "HideRow"
             document.getElementById("VendorTr").className = "HideRow"
	    }
	    else
	    {
	         document.getElementById("OtherTr").className= "HideRow"
             document.getElementById("RegTr").className = "HideRow"
             document.getElementById("VendorTr").className = "HideRow"
	    }
	}
		PreLoad();	
//-->
</script>

<script language=vbscript>
function VbSDateValid 
      
    SDate=document.getElementById("StartDate:CalDateVal").value
    if SDate="" then exit function

	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	
	IDateAry=split(SDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
  
    DDgap=DateDiff("d",Today,IDateVal)
    
	if DDgap<0 then
		VbSDateValid=false
    end if  
  
 End function 
 
 function VbEDateValid 
      
    SDate=document.getElementById("StartDate:CalDateVal").value    
    if SDate="" then exit function
    EDate = document.getElementById("EndDate:CalDateVal").value   
    if EDate="" then exit function
 
	ThisMonth = <%=ThisMonth%>
	ThisYear = <%=ThisYear%>
	ThisDay = <%=ThisDay%>
	Today=dateSerial(ThisYear,ThisMonth,ThisDay) 
	
	IDateAry=split(SDate,"/")	
    IDateVal=dateSerial(IDateAry(2),IDateAry(0),IDateAry(1))
    EDateAry=split(EDate,"/")
    EDateVal=dateSerial(EDateAry(2),EDateAry(0),EDateAry(1))
  
    DDgap=DateDiff("d",Today,EDateVal)   
    DEgap=DateDiff("d",IDateVal,EDateVal)   
    
	if DDgap<0 or DEgap<0 then
		VbEDateValid=false
    end if  
  
 End function 
</script>
</html>
