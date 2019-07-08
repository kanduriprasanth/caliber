<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DocumentViewer.ascx.vb" Inherits="CaliberCommonCtrls.DocumentViewer" %>
<%--<asp:Table ID="Table1"  runat="server" height="120px" onmouseleave="mydiv.className='HideRow'">
	<asp:TableRow >
		<asp:TableCell>		
	      <asp:button runat="server"  CssClass='ButCls' id="DOCList"  Title="Get Existing DocID List"  Text="click" style="HEIGHT:20px"/>  
	
		</asp:TableCell>
		<asp:TableCell>
		     <div  id="mydiv" style="width:50px"  onmouseleave="mydiv.className='HideRow'"  align="right"  ></div>
		</asp:TableCell>
	</asp:TableRow>
</asp:Table>--%>
	<link rel="stylesheet" href="../TRIMS.css">
<div id=mydiv1 runat="server"  style="width:50px"  onmouseleave="myspan.className='HideRow'"> 
		<label  runat ="server" class="RsnPUP" style="color:White; background-image:url(../Images/Popup.jpg);background-color:AliceBlue;WIDTH:25px;HEIGHT:22px;"  id="DOCList"  Title="Get Existing DocID List" >click</label>		
		<span  id="myspan" style="width:50px;position:absolute;" class="HideRow"  onmouseleave="myspan.className='HideRow'" >		
		</span>
		</div>
<script lang="javascript">
			function fnDocViewPopUp(CatId,ProdId) 
			 {
		
			  myspan.className=""
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
       
        var s=xmlhttp.responseText;
     // alert("hi"+s)
       myspan.innerHTML =xmlhttp.responseText;
        }//if
    }//onready
   	
var url="../CaliberCommonCtrls/AjaxDoc.aspx?CatId="+CatId+"&"+"ProdId="+ProdId;
//var url="Default.aspx?CatId=200 &ProdId=100";

xmlhttp.open("GET",url,true);
xmlhttp.send(null);
			 }
			 
			function CheckDoc()
			{
			 if(document.all("AtLeastDoc").value==0)
			 {
				 alert(document.all("AtLeastDoc").value)
				 args.IsValid=false;
  				 Page_IsValid=false;
			 }
			 }
			 function OpenDoc(DocID)
				{				
				
			var PageUrl="../Document/DownLoadFile.aspx?DId=" + DocID
		     var features = "height=390,width=720,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=10,left=10"
	        SpWinObj = window.open(PageUrl,'DocID',features)
	        	}
				
				 function OpenParticulers(DocID)
				{
				 var PageUrl="Particulars.aspx?BId=" + DocID
		    var features = "height=340,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=10,left=10"
	        SpWinObj = window.open(PageUrl,'DocID',features)
				 
				}
			</script>