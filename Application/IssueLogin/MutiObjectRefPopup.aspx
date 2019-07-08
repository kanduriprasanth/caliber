<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MutiObjectRefPopup.aspx.vb" Inherits="IssueLogin.MutiObjectRefPopup" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
   
    <link rel="stylesheet" href="../TRIMS.css" />

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../eNoteBookEditor/MaskJScript.js"></script>
    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
        <script language="javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">
  

  function IsDigit1(e)  ///Function To check Numeric values
            {
             
                if(e.shiftKey ==true)
                return false;
                var KeyIdentifierMap =
                {
                    End			: 35,
                    Home		: 36,
                    Left		: 37,
                    Right		: 39,
                    'U+00007F'	: 46		// Delete
                } 
                if ( !e )
                e = event ;

                var AvailableVal = window.event.srcElement.value.indexOf(".")
                var iCode = ( e.keyCode || e.charCode );

                if((iCode == 46) && (AvailableVal != -1))
                return false;
                if((iCode == 46) && (window.event.srcElement.value == ""))
                return false;

                if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
                    iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
                if(iCode ==39 ) return false;
                return (
                    ( iCode >= 48 && iCode <= 57 )		// Numbers
                    || (iCode >= 35 && iCode <= 40)		// Arrows, Home, End
                    || iCode == 8						// Backspace
                    || iCode == 46						// Delete
                    || iCode == 9	                    // Tab
                    )
			    
            
                
            }
            function IsValid(Exstval)
            {
              var ErrerStr="" 
              var val=document.getElementById ("ObjectItemCntTxt_").value 
              if (val>25 || val<=0)
              {
               
                ErrerStr="No. Of Items must  be grater than 0 and less than or equal to 25 ";
                              
              }
             if (ErrerStr != "") 
              {
                alert(ErrerStr);
                document.getElementById ("ObjectItemCntTxt_" + cnt).value=Exstval;
              }
             else
             {
              if(val=="")
              {
                 document.getElementById ("ObjectItemCntTxt_" + cnt).value=Exstval;
              }
              Form1.submit();
             }
                         
            }
    	
    </script>

</head>
<body ms_positioning="GridLayout">
    <form autocomplete="off" id="Form1" method="post" runat="server">
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
                                    <div id="DisplayValueDiv" runat=server class="MianTD"></div>
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
                                <input class="<%=BtnCss %>" onmouseover="this.className='ButOCls'" style="width: 50px"
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
                            document.getElementById("DisplayValueDiv").innerHTML=ReturnVal
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
   	   	
   	function fnCrGetCode (RowCount)
   	{
   	
   	 
   	  var ObjectUcode= document.getElementById("ObjectCode" + RowCount).innerHTML
   	  var ObjectDesc= document.getElementById("ObjectDesc" + RowCount).innerHTML
   	  var ObjectId= document.getElementById("BaseID" + RowCount).innerHTML
   	  var ObjectCode= document.getElementById("AulID" + RowCount).innerHTML
   	 
   	  

   	  document.getElementById("ObjectIdTXt_" + ObjFldCount).value=ObjectUcode
   	  document.getElementById("ObjectDescTXt_" + ObjFldCount).value=ObjectDesc
   	  document.getElementById("ObjectID_" + ObjFldCount).value=ObjectId
   	  document.getElementById("ObjectCode_" + ObjFldCount).value=ObjectCode
   	 
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
    return ValidFlag;
}

    </script>

    <script language="javascript">
   
    function getSelectedDocumnets()
    {
        var ObjectIdList=''
       
        ObjectIdList=opener.window.document.getElementById("<%=Request.QueryString("BaseId")%>" + "_" +"<%=Request.QueryString("CtrlId") %>").value;
        document.getElementById("ObjectIdTxt") .value=ObjectIdList;
        Form1.submit();
    }
    
    if("<%=Page.IsPostBack%>" == "False")
	{
	    getSelectedDocumnets()
    }
    
    function SaveObjectValue() 
    {
       var ExpMsg=""
       var ItemCount = document.getElementById("ObjectItemCntTxt_").value 
       var ObjidArr= new Array()
       var lbl =""
       for (var ItemCnt=0;ItemCnt<ItemCount;ItemCnt++)
       {
         if (document.getElementById("ObjectID_" + ItemCnt).value !="")
         {
            ObjidArr.push(document.getElementById("ObjectID_" + ItemCnt).value)
            lbl=document.getElementById("ObjectID_" + ItemCnt).value
         }
         else
         {
           ExpMsg=ExpMsg + "Enter UniqueCode and Description Values In " + (ItemCnt+1) + " Row" +  "\n -"
         }
       }
       
       if (ExpMsg == "")
        {
        var ObjIdVale=ObjidArr.join(",")
        opener.SetObjectValue("<%=Request.QueryString("BaseID")%>","<%=Request.QueryString("CtrlId")%>",ObjIdVale)
        window.self.close();
       }
       else
       {
         alert(ExpMsg.substring(0,ExpMsg.length-3))
       } 
       
    }
    
    
    
    </script>
    
    

</body>
</html>
