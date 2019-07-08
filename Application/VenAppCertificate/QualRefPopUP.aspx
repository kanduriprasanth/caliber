<%--PopUp Added by P Suresh to Display Qualification Reference Documents--%>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="QualRefPopUP.aspx.vb"
    Inherits="VenAppCertificate.QualRefPopUP" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Qualification Reference Documents</title>
    <link rel="stylesheet" href="../TRIMS.css">
    <meta name="vs_defaultClientScript" content="JavaScript">
    

    <script language="javascript" src="../JScript/Common2.js"></script>

    <script language="javascript">
		function OpenDocument(DocId) 
	    {
		    var yval = parseInt(screen.availHeight) - 100
		    var xval = screen.availWidth-500

		    var pageURL = "../DMSManagement/ViewDocument.aspx?DocId=" + DocId;
		    SpWinObj = window.open(pageURL, 'RepPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=1,left=1");
		    if (SpWinObj.opener == null) SpWinObj.opener = self;
		    SpWinObj.focus();
	    }
       function fnCrCancel(){
            opener.fnDocNames('','')
		    window.self.close()
	    }
	
	    function fnCrCloseWin(){
            var DocNamesStr = new String
            var QuaSeqStr = new String
//            var QuaRefAry =new Array()          //Added by P Suresh to get the checked DocIds and Codes
//    		QuaRefAry=DocCodeStr.split('#*#')
            DocNamesStr = ""
            QuaSeqStr = ""
            for(var k=0;k<<%=DocCodeCnt%>;k++)
	        {
	            if(document.getElementById("ChkB"+k).checked ==true)
	            {
	                var Docstr = document.getElementById("Doc"+k).innerHTML
	                var QuaSeq = k
                    DocNamesStr += Docstr
                    if(QuaSeqStr == "")
                    {
                        QuaSeqStr += QuaSeq               
                    }
                    else
                    {
                        QuaSeqStr +=  "," + QuaSeq                    
                    }
	            }
	        }
	        if (QuaSeqStr == "")
	        {
	            alert("Select Qualification Reference Document(s)")
	            return false
 	        }
 	        opener.fnDocNames(DocNamesStr,QuaSeqStr)
 	        window.self.close()
	    }
	
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cssclass="SubTable" height="100%" width="100%" align="center" border="1">
                <!-- MAIN HEADER -->
                <tr>
                    <td class="MainHead">
                        Qualification Reference Documents</td>
                </tr>
                <!-- MAIN FOOTER -->
                <tr>
                    <td class="MainTd">
                        <asp:Table ID="ResTab" runat="server" CssClass='SubTable' Width="100%" Height="100%" CellSpacing="1" >
                        </asp:Table>
                    </td>
                </tr>
                <tr>
                    <td class="MainFoot">
                        <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                            onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok" />
                        <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                            onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
