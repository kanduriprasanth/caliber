<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RsnRemark.aspx.vb" Inherits="AuditTemplate.RsnRemark" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Reason</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript" src="../JScript/jquery.min.js"></script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="3" HorizontalAlign="center"
            CssClass="MainTable" Width="100%" runat="server">
            <asp:TableRow>
                <asp:TableCell>
                    <!-----------Base table------------->
                    <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                        HorizontalAlign="center" ID="CrTopTable">
                        <asp:TableRow>
                            <asp:TableCell ColumnSpan="7">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="DisTable">
                                    <asp:TableRow>
                                        <asp:TableCell CssClass="MainTD">Reason For Another Print</asp:TableCell>
                                        <asp:TableCell CssClass="MainTD">
										<asp:TextBox runat="server" ID="RsnTxt" CssClass="TxtCls" Width="250px" onkeypress="taLimit()" onkeyup="taCount()"  TextMode="MultiLine"></asp:TextBox>
                                        </asp:TableCell>
                                    </asp:TableRow>
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="MainFoot">
                <asp:TableCell>
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow>
                            <asp:TableCell>
                                <input type="button" id="Btn" value="Ok" class="ButCls" onclick="FnOpenPop()" />
                                <input type="button" value="Close" id="ClsBtn" onclick="window.close();" class="ButCls" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
    <script language=javascript>
    function FnOpenPop()
    {
             var obj = document.getElementById("RsnTxt");
             obj.value = obj.value.replace(/^\s+|\s+$/g, "");
             var feild = obj.value
    
            if (feild.length == 0) 
            {
               alert("Enter Value For Reason For Another Print");
            }
             else
            {
            window.returnValue=document.getElementById("RsnTxt").value;
            window.close();
            }
            
            
//        if(document.getElementById("RsnTxt").value=="")
//        {
//            alert("Enter Value For Reason For Another Print");
//        }
//        else
//        {
//            window.returnValue=document.getElementById("RsnTxt").value;
//            window.close();
//        }
    }
    
    
    var taMaxLength = 500
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
    </script>
</body>
</html>
