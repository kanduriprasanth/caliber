<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MultirefObjPopup.aspx.vb" Inherits="IssueLogin.MultirefObjPopup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head runat="server">
    <title> <%=MainTitleLtrl.Text%></title>
    <link rel="stylesheet" href="../TRIMS.css" />
    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>
    
     <script type='text/javascript' src='../JScript/jquery.simplemodal.js'></script>
     <link type='text/css' href='basic.css' rel='stylesheet' media='screen' />
    
     <script language="javascript">
  
            function IsValid(Exstval)
            {
                  var ErrerStr="" 
                  var val=document.getElementById ("ObjectItemCntTxt_").value 
                  if(isNaN(val)==true)
                    document.getElementById ("ObjectItemCntTxt_").value=0;
                    val=1;
                  if (val>25 || val<=0)
                  {
                    ErrerStr="No. Of Items Must  Be Greater Than 0 And Less Than Or Equal To 25 ";
                  }
                 if (ErrerStr != "") 
                  {
                    alert(ErrerStr);
                    //document.getElementById ("ObjectItemCntTxt_" + cnt).value=Exstval;
                    document.getElementById ("ObjectItemCntTxt_").value=Exstval;
                  }
                 else
                 {
                      if(val=="")
                      {
                         //document.getElementById ("ObjectItemCntTxt_" + cnt).value=Exstval;
                        document.getElementById ("ObjectItemCntTxt_").value=Exstval;
                      }
                      form1.submit();
                 }
                             
            }
    	
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
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
                        <asp:TableRow CssClass="HideRow">
                            <asp:TableCell CssClass="SubHead" ColumnSpan="2">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow CssClass="MainTD">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="2">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ObjectTab">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                        
                         <asp:TableRow >
                            <asp:TableCell >
                                    <div id="DisplayValueDiv" style="overflow-y:scroll; height:400;" runat="server" class="HideRow"></div>
                            </asp:TableCell>
                         </asp:TableRow>
                                                      
                    </asp:Table>
                    <!-----------End of Base table------------->
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                    <asp:Table runat="server" Width="100%" CellPadding="0" CellSpacing="0" HorizontalAlign="center"
                        ID="Table2" BorderWidth="0">
                        <asp:TableRow CssClass="HideRow" Height="0">
                            <asp:TableCell></asp:TableCell>
                            <asp:TableCell></asp:TableCell>
                        </asp:TableRow>
                        
                           
            
                        <asp:TableRow>
                            <asp:TableCell>
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="SaveObjectValue()" onmouseout="this.className='ButCls'" type="button" value="Submit">
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 60px"
                                onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                     ShowMessageBox="True"></asp:ValidationSummary>
                    <asp:TextBox ID="ObjectIdTxt" runat="server"></asp:TextBox>
                     <asp:TextBox ID="IsuTypeTxt" runat="server"  ></asp:TextBox>
                     <asp:TextBox ID="ObjectTypeTxt" runat="server"  ></asp:TextBox>
                     
                </asp:TableCell>
            </asp:TableRow>
           
        </asp:Table>
     </form>
     
      <script language="javascript">
      
      if("<%=page.IsPostBack%>"== "True")
      {
        
      }
      
      
    
    var ObjFldCount
    function Fun_CheckValueExistence(RowCnt)
    {
      ObjFldCount=RowCnt
      
      if(document.getElementById("ObjectIdTXt_"+RowCnt).value != ""  || document.getElementById("ObjectDescTXt_"+RowCnt).value != ""  )
      {
       CheckObkjectValue_Ajax(RowCnt); 
      } 
      else
      {
        document.getElementById("DisplayValueDiv").innerHTML=""
        document.getElementById("Preview_" + ObjFldCount).className="HideRow"
      }
    }
    
   
    function Fn_XMLTableRow(ColName,ColValue,TableName)
        {
            TableName = TableName ? TableName : "DataTable"
            return "<" + TableName + "><ColumnName>" + ColName +"</ColumnName><ColumnValue>" + ColValue +"</ColumnValue></" + TableName + ">";
        }
        
    function CheckObkjectValue_Ajax(RowCnt)
        {

            var Values ='<XmlDS>';
            Values+=Fn_XMLTableRow("ObjectID","<![CDATA[" + document.getElementById("ObjectIdTXt_" + RowCnt ).value + "]]>")
            Values+=Fn_XMLTableRow("ObjectDesc","<![CDATA[" + document.getElementById("ObjectDescTXt_" + RowCnt ).value + "]]>")

            Values+= "</XmlDS>";

            var url="../IssueLogin/CheckObjectValue.aspx?ObjectType=" +  document.getElementById("ObjectTypeTxt").value  + '&IsuBaseID=' + "<%=Request.QueryString("IsuBaseID") %>"
            if (window.XMLHttpRequest)
            { 
                reqXML = new XMLHttpRequest(); 
            }
            else if(window.ActiveXObject)
            {
                reqXML = new ActiveXObject("Microsoft.XMLHTTP"); 
            }
            if(reqXML)
            {
                reqXML.open("POST", url, true);
                reqXML.setRequestHeader("Content-Type", "text/xml");
                reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
                reqXML.onreadystatechange = function()
                {
                    if(reqXML.readyState==4)
                    {
                        var ReturnVal="abc"
                        ReturnVal=reqXML.responseText
                        if (ReturnVal != "")
                        { 
                          //  ShowMask()
                         //document.getElementById("DisplayValueDiv").innerHTML=ReturnVal
                          $('#DisplayValueDiv').html(ReturnVal)
                          $('#DisplayValueDiv').modal(); 
                           // HideMask()
                          
                        } 
                        else 
                        alert("Exception Occured")
                        xmlhttp =null;
                    }
                }
            }
            else
            {
                alert("Your browser does not support Ajax");
            }
        }


   function fnCrCancel()
   { 
     var ValueArr=new Array()
     opener.SetAcpValue("<%=Request.QueryString("BaseId")%>","<%=Request.QueryString("CtrlId") %>",'')
     window.self.close()
   }
   
    function ReplaceSpeCahar(Cdata)  // Function to replace special characters "&<" 
   {
      Cdata =Cdata.replace("&","&amp;");  
      Cdata=Cdata.replace("<","&lt;");  
      return Cdata
   }
   	   	
   	function fnCrGetCode (RowCount,SelBatchList)
   	{
   	  var ObjectUcode= document.getElementById("ObjectCode" + RowCount).innerHTML
   	  var ObjectDesc= document.getElementById("ObjectDesc" + RowCount).innerHTML
   	  var ObjectId= document.getElementById("BaseID" + RowCount).innerHTML
   	  var ObjectCode= document.getElementById("AulID" + RowCount).innerHTML
   	  
   	  var MulRefExpMsg=""
   	   var ValidateFlag=0
   	   var serchflag=0
   	  if (document.getElementById("ObjectTypeTxt").value =="6")
   	  {
   	  MulRefExpMsg="This Batch/Lot is  Already Selected  In This Issue"
   	      if(SelBatchList!='0')
   	      {
   	        var SelBatchListArr= new Array()
   	        SelBatchListArr=SelBatchList.split(",")
   	        for (var j=0;j<SelBatchListArr.length;j++)
   	        {
   	          if(SelBatchListArr[j]==ObjectId)
   	          {
   	           serchflag=1;
   	          }
   	        }
   	        
   	        if(serchflag == 0) { ValidateFlag=CheckSelectedBatch(ObjectId) }
   	        else { ValidateFlag=1 }
   	      }
   	      else
   	      {
   	        ValidateFlag=CheckSelectedBatch(ObjectId)
   	      }
   	  }
   	  
   	  if (document.getElementById("ObjectTypeTxt").value =="7")
   	  {
   	  MulRefExpMsg="This Product/Material is  Already Selected  In This Issue"
   	      if(SelBatchList!='0')
   	      {
   	        var SelBatchListArr= new Array()
   	        SelBatchListArr=SelBatchList.split(",")
   	        for (var j=0;j<SelBatchListArr.length;j++)
   	        {
   	          if(SelBatchListArr[j]==ObjectId)
   	          {
   	           serchflag=1;
   	          }
   	        }
   	        
   	        if(serchflag == 0) { ValidateFlag=CheckSelectedBatch(ObjectId) }
   	        else { ValidateFlag=1 }
   	      }
   	      else
   	      {
   	        ValidateFlag=CheckSelectedBatch(ObjectId)
   	      }
   	  }
   	  
   	  if (document.getElementById("ObjectTypeTxt").value =="8")
   	  {
   	  MulRefExpMsg="This Equipment is  Already Selected  In This Issue"
   	      if(SelBatchList!='0')
   	      {
   	        var SelBatchListArr= new Array()
   	        SelBatchListArr=SelBatchList.split(",")
   	        for (var j=0;j<SelBatchListArr.length;j++)
   	        {
   	          if(SelBatchListArr[j]==ObjectId)
   	          {
   	           serchflag=1;
   	          }
   	        }
   	        
   	        if(serchflag == 0) { ValidateFlag=CheckSelectedBatch(ObjectId) }
   	        else { ValidateFlag=1 }
   	      }
   	      else
   	      {
   	        ValidateFlag=CheckSelectedBatch(ObjectId)
   	      }
   	  }
   	  
   	  if (document.getElementById("ObjectTypeTxt").value =="9")
   	  {
   	  MulRefExpMsg="This Reffered Issue is  Already Selected  In This Issue"
   	      if(SelBatchList!='0')
   	      {
   	        var SelBatchListArr= new Array()
   	        SelBatchListArr=SelBatchList.split(",")
   	        for (var j=0;j<SelBatchListArr.length;j++)
   	        {
   	          if(SelBatchListArr[j]==ObjectId)
   	          {
   	           serchflag=1;
   	          }
   	        }
   	        
   	        if(serchflag == 0) { ValidateFlag=CheckSelectedBatch(ObjectId) }
   	        else { ValidateFlag=1 }
   	      }
   	      else
   	      {
   	        ValidateFlag=CheckSelectedBatch(ObjectId)
   	      }
   	  }
   	  if(ValidateFlag==0){
   	  
            document.getElementById("Preview_" + ObjFldCount).className="MainTD"
            document.getElementById("ObjectIdTXt_" + ObjFldCount).value=ObjectUcode
            document.getElementById("ObjectDescTXt_" + ObjFldCount).value=ObjectDesc
            document.getElementById("ObjectIdTXt1_" + ObjFldCount).value=ObjectUcode
            document.getElementById("ObjectDescTXt1_" + ObjFldCount).value=ObjectDesc
            document.getElementById("ObjectID_" + ObjFldCount).value=ObjectId
            document.getElementById("ObjectCode_" + ObjFldCount).value=ObjectCode
            $.modal.close();
   	  }
   	     else
   	     {
   	       alert(MulRefExpMsg)
   	     } 
   	  
   	}
   	
   	
function CheckSelectedBatch(selbatch)
{
    var ValidFlag=0
    var ItemCount = document.getElementById("ObjectItemCntTxt_").value 
    if (ItemCount>0)
    {
      for (var i=0;i<ItemCount;i++)
      {
        var SelBatchID= document.getElementById("ObjectID_" + i).value
        if (SelBatchID !='')
        {
          if (SelBatchID == selbatch)
          { 
            ValidFlag=1;
          }
        }
        
      }
    }
    
    
    
    if ("<%=Request.QueryString("LotID")%>" !="")
    {
      var SelBatchValue=opener.window.document.getElementById("<%=Request.QueryString("LotID")%>").value;
      if (SelBatchValue != '')
      {
        var SelBatchValueArr= new Array()
        SelBatchValueArr=SelBatchValue.split(',')
        for (var j=0;j<SelBatchValueArr.length;j++)
        {
          if(SelBatchValueArr[j]==selbatch)
   	          {
   	           ValidFlag=1;
   	          }
        }
        
      }
    }
    return ValidFlag;
}


   	function funRedRefIsuewList(Count)
   	{
        var pageURL = "../IssueLogin/MultiIsuRefPopup.aspx?ObjectType=" + document.getElementById("ObjectTypeTxt").value  + "&ObjectCode=" + document.getElementById("ObjectCode_" + Count).value +  "&ObjectID=" + document.getElementById("ObjectID_" + Count).value +  "&IsuBaseID=" + "<%=Request.QueryString("IsuBaseID") %>"
        var features = "height=500,width=700,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=yes,top=250,left=150"
        SpWinObj = window.open(pageURL,'STDReason',features)
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
   	}
   	

      </script>

    <script language="javascript">
   
    function getSelectedDocumnets()
    {
        var ObjectIdList=''
        
        ObjectIdList=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        document.getElementById("ObjectIdTxt").value=ObjectIdList;       
        form1.submit();
    }
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	    getSelectedDocumnets()
	    
    }
    
    LoadControls()
    
    function LoadControls()
    {
      if (<%=ItemCount%> >0 )
      {
         document.getElementById("ObjectItemCntTxt_").value=<%=ItemCount%>
          for (var i=0;i<<%=ItemCount%>;i++)
          {
            if(document.getElementById("ObjectIdLbl_"+ i).innerHTML!="")
            {
                document.getElementById("ObjectIdTXt_" + i).value =document.getElementById("ObjectIdLbl_"+ i).innerHTML
                document.getElementById("ObjectDescTXt_" + i).value =document.getElementById("ObjectDescLbl_"+ i).innerHTML
                document.getElementById("ObjectIdTXt1_" + i).value =document.getElementById("ObjectIdLbl_"+ i).innerHTML
                document.getElementById("ObjectDescTXt1_" + i).value =document.getElementById("ObjectDescLbl_"+ i).innerHTML
            }
          }
      }
    }
    
    
    function SaveObjectValue() 
    {
     
       var ExpMsg=""
       var ItemCount = document.getElementById("ObjectItemCntTxt_").value 
       var ObjidArr= new Array()
       var lbl =""
       var ObjectType=document.getElementById("ObjectTypeTxt").value;
       for (var ItemCnt=0;ItemCnt<ItemCount;ItemCnt++)
       {
       
        if($.trim(document.getElementById("ObjectIdTXt_" + ItemCnt).value)==""&&$.trim(document.getElementById("ObjectDescTXt_" + ItemCnt).value)==""||document.getElementById("ObjectID_" + ItemCnt).value=="") 
         {
           if(ObjectType==9)
             ExpMsg=ExpMsg + "Enter Unique Code and Issue Form Values In " + (ItemCnt+1) + " Row" +  "\n -"
           else
             ExpMsg=ExpMsg + "Enter Unique Code and Description Values In " + (ItemCnt+1) + " Row" +  "\n -"
          }
       else if($.trim(document.getElementById("ObjectIdTXt_" + ItemCnt).value)=="") 
        {
             ExpMsg=ExpMsg + "Enter Unique Code In " + (ItemCnt+1) + " Row" +  "\n -"
       
        }
       else if($.trim(document.getElementById("ObjectDescTXt_" + ItemCnt).value)=="") 
        {
           if(ObjectType==9)
             ExpMsg=ExpMsg + "Enter Issue Form In " + (ItemCnt+1) + " Row" +  "\n -"
           else
             ExpMsg=ExpMsg + "Enter Description In " + (ItemCnt+1) + " Row" +  "\n -"
       
        }
        
        
        else if ($.trim(document.getElementById("ObjectID_" + ItemCnt).value)!="")
         {
            ObjidArr.push(document.getElementById("ObjectID_" + ItemCnt).value)
            lbl=document.getElementById("ObjectID_" + ItemCnt).value
         }
         
         if(($.trim(document.getElementById("ObjectIdTXt1_" + ItemCnt).value)!="")&&($.trim(document.getElementById("ObjectDescTXt1_" + ItemCnt).value)!=""))
        {
          if($.trim(document.getElementById("ObjectIdTXt_" + ItemCnt).value)!=$.trim(document.getElementById("ObjectIdTXt1_" + ItemCnt).value)||$.trim(document.getElementById("ObjectDescTXt_" + ItemCnt).value)!=$.trim(document.getElementById("ObjectDescTXt1_" + ItemCnt).value)) 
         {
           if(ObjectType==9)
             ExpMsg=ExpMsg + "Wrong Unique Code Or Issue Form In " + (ItemCnt+1) + " Row" +  "\n -"
           else
             ExpMsg=ExpMsg + "Wrong Unique Code Or Description In " + (ItemCnt+1) + " Row" +  "\n -"
          }
        }  
                 
       }
       
       if (ExpMsg == "")
        {
        var ObjIdVale=ObjidArr.join(",")
        // Commented this temporarily to solve Batch sel issue at eforms and issueclosure
       //var ObjTyp=document.getElementById("ObjectTypeTxt").value;
         //if(ObjTyp==6) //To Save selected batch ids
      
           // opener.window.document.getElementById("SelBatchIdTxt").value=ObjIdVale
         
        opener.SetObjectValue("<%=Request.QueryString("BaseID")%>","<%=Request.QueryString("CtrlId")%>",ObjIdVale)
        window.self.close();
       }
       else
       {
         alert(ExpMsg.substring(0,ExpMsg.length-3))
       } 
       
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
				    alert("Characters exceeding limit\nMaximum Length: "+ taMaxLength +" Characters")
			    }
			}	
    
    </script>
</body>
</html>
