<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DocumentPopup.aspx.vb" Inherits="IssueLogin.DocumentPopup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
		<meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
		<meta name="vs_defaultClientScript" content="JavaScript">
    <link href="../TRIMS.css" type="text/css" rel="stylesheet">
		
		<script language="javascript" src="../JScript/Common2.js"></script>
		
<script language="javascript">

   function fnCheckAll()
    {
      var DocCount=<%=DocCnt%>
      var ChkBoxId
      var chk=document.getElementById("DocChkAll").checked
   
      for(i=0;i<DocCount;i++){
         ChkBoxId="Chk"+i
           if(!document.getElementById(ChkBoxId).disabled) 
           {
             document.getElementById(ChkBoxId).checked=chk 
           }
		}
     }
     
     function OpenDoc(DocID,AT)
	  {
		var PageUrl="DownLoadFile.aspx?DId=" + DocID +"&AT="+AT
	    var features = "height=390,width=720,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=10,left=10"
        SpWinObj = window.open(PageUrl,'DocID',features)
      }

		</script>
		
    <script language="javascript">
    
    var IdList = new Array()
    function MergerToPDF()
    {
        var DocCount=<%=DocCnt%>
        for(var k=0;k<IdList.length;k++){IdList.pop()}

        for(i=0;i<DocCount;i++)
        {
            ChkBoxId="Chk"+i
           if(!document.getElementById(ChkBoxId).disabled) 
           {
             if(document.getElementById(ChkBoxId).checked== true)
             {
                IdList.push(document.getElementById("KdId"+i).innerText)
             }
           }
		}
    	if(IdList.length < 2){alert("Select minimum 2 Documents for Merging");return;}

	
        AjaxFnCheckUCodeAvail()

    }
  function AjaxFnCheckUCodeAvail()
{
    var DocCount=<%=DocCnt%>
    var DocIdList = new Array()
    var DocDescList = new Array()
    for(i=0;i<DocCount;i++)
    {
        ChkBoxId="Chk"+i
        if(!document.getElementById(ChkBoxId).disabled) 
        {
            if(document.getElementById(ChkBoxId).checked== true)
            {
                DocIdList.push(document.getElementById("DocId"+i).innerText)
                DocDescList.push(document.getElementById("KfLable"+i).innerText)
            }
        }
	}
	var DocIdLst = DocIdList.join(",")
    var xmlhttp;
    try
    {
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    catch(ex)
    {
        try  
        {
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
            var RetVal = xmlhttp.responseText
            var DocumentList = new Array()
            DocumentList = RetVal.split("#*#") 
            var PDFFilesList = new Array()
            LoopPDFExport(DocumentList,DocDescList,PDFFilesList,-1)
            xmlhttp =null;
        }
    }
    var url="../Document/GetDocument_Ajax.aspx?IdList="+ DocIdLst;
    xmlhttp.open("GET",url,true);
    xmlhttp.send(null);
}

function LoopPDFExport(DocumentList,DocDescList,PDFFilesList,Count)
{
    if(Count < DocumentList.length-1)
        PDfExport(DocumentList,DocDescList,PDFFilesList,Count+1)
    else
        MergePDFFiles(DocDescList,PDFFilesList)
}
function MergePDFFiles(DocDescList,PDFFilesList)
{
    var ActiveXObjeIns = document.CaliberOfficeAX
    var DocDescs = DocDescList.join("#*#");
    var PDFFiles = PDFFilesList.join("#*#");
    try
    {
        ActiveXObjeIns.MergePDF(PDFFiles,"#*#",DocDescs,"#*#","")
    }
    catch(ex)
    {
        alert(ex)
    }
}

function PDfExport(DocumentList,DocDescList,PDFFilesList,Count)
{
    try
    {
        var ActiveXObjeIns = document.CaliberOfficeAX
        if(ActiveXObjeIns.IsWordInstalled()==false)
        {
            //alert("MS Word Not Installed!")
            return false;
        }
        var PDFpath = ""
        PDFpath = ActiveXObjeIns.ExportWordToPDF(DocumentList[Count],PDFpath,1)
        PDFFilesList.push(PDFpath);
        //ActiveXObjeIns.ExportWordListToPDFs(DocumentList,DocDesc,"#*#","SampleText123")
        LoopPDFExport(DocumentList,DocDescList,PDFFilesList,Count)
    }
    catch (e)
    {
        alert("ActiveX Component Not Installed!");
        return false;
    }
}
    </script>

</head>
<body ms_positioning="GridLayout" onload="document.getElementById('FindTxt').focus()" onblur="document.getElementById('FindTxt').focus()">
		<form id="Form1" method="post" runat="server">
        <object id="CaliberOfficeAX" name="CaliberOfficeAX" classid="clsid:EF51DBFA-53A5-43a6-9362-50C9B5D24D81"
            viewastext codebase="CaliberOfficeActiveXComponent.cab"></object>
            <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
                align="center" border="3">
				<!-- MAIN HEADER -->
                <tr class="SubHead">
                    <td class="MainHead">
                        <asp:Literal ID="DocLtrl" runat="server"></asp:Literal></td>
                </tr>
				<tr>
				 <td>
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
				     	<tr>
                                <td class="MainTd">
                                    <asp:Literal ID="DocNameLtrl" runat="server"></asp:Literal></td>
				        	<td class="MainTd">
								<asp:TextBox runat="server" ID="DocNameTxt" CssClass="TxtCls" MaxLength="30"></asp:TextBox>
				        	</td>
				        </tr>
				        <tr>
                                <td class="MainTd">
                                    <asp:Literal ID="DocCdeLtrl" runat="server"></asp:Literal></td>
				        	<td class="MainTd">
								<asp:TextBox runat="server" ID="DocCdeTxt" CssClass="UCTxtCls" MaxLength="25"></asp:TextBox>
				        	</td>
				        </tr>	
				     	<tr>
							 <td class="MainTD" colspan="1">
                                    <asp:Literal ID="UploadLtrl" runat="server">Upload New Document</asp:Literal>
							 </td>
							 <td class="MainTD" colspan="2" id="FileUploadLocTd"> 
							     <asp:FileUpload Width="400px" ID="UploadFile" contenteditable="false" runat="server" />
							 </td>
						</tr>
						<tr>
                                <td class="MainTd" align="right" colspan="3">
						   <asp:Button runat="server" ID="AddBtn" Text="Add Documet"></asp:Button>
						  </td>
						</tr>
						 </table>
						 </td>
				  </tr>
				  <tr>
                    <td class="MainHead">
                        <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
				   </tr>
                <tr>
                    <td class="MainTd">
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
								<tr>
									<td class="MainTd" colspan="2">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" runat="server" Width="100px" CssClass='TxtCls' MaxLength="26">%</asp:TextBox>
									</td>
									<td class="MainTd" colspan="2">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                                    <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                    <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
											onmouseout="this.className='ButCls'"></asp:Button>
									</td>
								</tr>
								<tr>
									<td class="MainTd" colspan="4">
                                    <div style="overflow: auto; height: 200px; background-color: gray">
                                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                            CellPadding="0" CssClass="SubTable">
                                        </asp:Table>
                                    </div>
									</td>
								</tr>
							</table>
                    </td>
                </tr>
				<!-- MAIN FOOTER -->
                <tr>
                    <td class="MainFoot">
                        <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                            onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                        <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                            onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                        <input type="button" id="PDFmerge" onclick="MergerToPDF()" value="Merger to PDF"
                            class='ButSelCls'  accesskey="C" onmouseout="this.className='ButSelCls'"
                            onclick="PrintProcessStageData()" />
                    </td>
					<td class="HideRow">
                        <asp:TextBox ID="SizeTxt" runat="server" CssClass="HideRow"></asp:TextBox>
					</td>
                </tr>
            </table>
		</form>

    <script language="javascript">
// var flag=false
//  	function fnCrGetCode(RowCnt)
//	{ 
//		     var KfLableVal=document.all("KfLable"+ RowCnt).innerHTML
//		    var KdIdVal=document.all("KdId"+ RowCnt).innerText
//		   	opener.fnCrSetToCode(KdIdVal,KfLableVal )
//		   	flag=true
//	}
	function fnCrCancel(){
	
		//opener.fnCrSetToCode('','')
		window.self.close()
 
	}
	
	document.oncontextmenu=new Function("return false")
	
	var flag=false
	
	function fnCheckList()
	{
	  var DocCount=<%=DocCnt%>
	  var ChkLstID=''
	  var ChkLstName=''
	  
	  for(var i=0;i<DocCount;i++)
	  { 
	     if(document.getElementById("Chk"+i).checked==true)
        {
            ChkLstID += "," + document.all("KdId"+ i).innerText
            ChkLstName += "," + document.all("KfLable"+ i).innerHTML
        }
	  }
	  if(ChkLstID !='')
	  {
	    opener.fnCrSetToCode1("<%=Request.QueryString("BaseID")%>","<%=Request.QueryString("CtrlId")%>",ChkLstID.substring(1),ChkLstName.substring(1) )
	    flag=true
	  }
	}
	
	function fnCrCloseWin()
	{
	   fnCheckList()
	   
	    if (flag==false) 
	    {
	        alert("Select Document")
	        return false
	    }
	    else
	    {
    		opener.fnCrformSubmit()
		    window.self.close()
		}
	}
    </script>

	</body>
</html>
