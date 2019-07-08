<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FlsItemsReg.aspx.vb" Inherits="ControlConfiguration.FlsItemsReg" %>
<%@ Register TagPrefix="uc1" TagName="EsignObj" Src="../CaliberCommonCtrls/EsignObj.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>Trn</title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
   
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>


<script language="javascript" src="../JScript/jquery.min.js"></script>

    <link rel="stylesheet" href="../eNoteBookEditor/MaskStyles.css" />
    <style type="text/css">
        #mask {position:absolute;left:0;top:0;z-index:9000;background-color:#808080;display:none;}
        #boxes .window {position:fixed;left:0;top:0;display:none;z-index:9999;padding:20px;}
        #boxes #dialog {padding:10px;background-color: #f3f3f3;position:absolute;}
        .MessageImgCls{width:30px;heigth:30px;}
        .MessageTxtCls{font-weight: bold;font-size:12pt;text-align:center}
        .MessageBtnCls{}
    </style>

  <script language=javascript >












      function UserGrppopup() {
          var pageURL = "RevAppListPopUp.aspx?DeptName=CONTROL&Grpname="
          SpWinObj = window.open(pageURL, 'UserCode', "height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();
      }
      function UserGroupDetails(UserGroupId) {
          var pageURL = "../WorkFlow/UserGroupDetails.aspx?UserGroupId=" + UserGroupId;

          SpWinObj = window.open(pageURL, 'TemplatePreview', 'height=350,width=600,toolbar=no,resizable=false,menubar=no,status=no,scrollbars=yes,top=75,left=75');
          if (SpWinObj.opener == null) SpWinObj.opener = self;
          SpWinObj.focus();
      }

      function fnRevAppSetToCode(UsrGrpIdVal, UsrGrpCodeVal, UsrGrpUCodeVal) {
          document.getElementById("UserGrpTxt").value = UsrGrpUCodeVal
          document.getElementById("UserGrpLbl").innerHTML = UsrGrpUCodeVal
          document.getElementById("UserGrpIDTxt").value = UsrGrpIdVal
      }

      function myTrim(str) {
          return str.replace(/^\s+|\s+$/gm, '')
      }
      function CheckDescVal(id, cap) {
          var expmsg = ""
          var Flag = 0
          if (document.getElementById(id).value != '') {
              document.getElementById(id).value = myTrim(document.getElementById(id).value)
              var itemName = document.getElementById(id).value

              if (itemName.indexOf("\'") > -1 || itemName.indexOf("\"") > -1) {
                  expmsg = "\n - Single Coute(\') or Double Coute(\") Symbols Are Not Allowed In " + cap
              }
              if (itemName.indexOf("  ") > -1) {
                  expmsg = "\n - Double Space Is Not Allowed In " + cap
              }

              if (expmsg != "") {
                  alert(expmsg)
                  document.getElementById(id).value = ""
              }

          }
      }
      function CheckNumVal(id, cap) {
          var expmsg = ""
          var Flag = 0
          if (document.getElementById(id).value != '') {
              document.getElementById(id).value = myTrim(document.getElementById(id).value)
              var itemName = document.getElementById(id).value
              if (isNaN(itemName)) {

                  expmsg = "- Enter Integer Value For: " + cap

              }
              else {
                  if (itemName < 0) {
                      expmsg = "- Enter Value For More Than Zero For: " + cap
                  }
              }

              if (expmsg != "") {
                  alert(expmsg)
                  document.getElementById(id).value = ""
              }

          }
      }

     </script>
  
</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <asp:Table ID="tt" CellPadding="0" CellSpacing="0" BorderWidth="0" HorizontalAlign="center"
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
                            <asp:TableCell CssClass="SubHead" ColumnSpan="5">
                                <asp:Literal ID="SubTitleLtrl" runat="server"></asp:Literal>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="FldNameCap" ></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="FldName" ColumnSpan=2>
                            </asp:TableCell>
                        </asp:TableRow>
                                  
                      <asp:TableRow ID="AcpDDlTr" CssClass="HideRow"> 
                       <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="AcpDDlTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell2" ColumnSpan=2>
                              <asp:DropDownList ID="AcpDDl" runat=server ></asp:DropDownList>
                            </asp:TableCell>
                      </asp:TableRow>      
                              
                            <asp:TableRow ID="SeqNoTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="SeqNoTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                                <asp:TextBox ID="SeqNoTxt" runat="server" CssClass="TxtCls"  Width="55px"
                                    AccessKey="D" TabIndex="1" MaxLength="3" onkeypress="return IsDigit1(event)" onfocusout="CheckNumVal('SeqNoTxt','Sequence ID(unique)')"></asp:TextBox>
                            </asp:TableCell>
                          </asp:TableRow>  
                              
                     <asp:TableRow ID="WAUGPTR" CssClass="HideRow"> 
                       <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="WAUGPTD"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell3" ColumnSpan=2>
                               <input class='RsnPUP' tabindex="2" onclick="UserGrppopup()" tabindex="5" type="button">
                                <asp:Label ID="UserGrpLbl" runat="server" ></asp:Label>
                                <asp:TextBox ID="UserGrpIDTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="UserGrpTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                      </asp:TableRow>     
                              
                      <asp:TableRow ID="WrkDescTr" CssClass="HideRow"> 
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="WrkDescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                                 <asp:TextBox ID="WrkitemDescTxt" TabIndex="3" runat="server" CssClass="TxtCls"  Width="350px" onkeypress="taLimit()"
                                   onkeyup="taCount()" MaxLength="250" AccessKey="D" TextMode="MultiLine" ColumnSpan="3" ></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow> 
                              
                          <asp:TableRow ID="WrkTypeTr" CssClass="HideRow"> 
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="WrkTypeTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                            <asp:DropDownList ID="WrkTypeDDl" TabIndex="4" runat="server">
                            </asp:DropDownList>
                               </asp:TableCell>
                        </asp:TableRow> 
                        
                        <asp:TableRow ID="eFromTr" CssClass="HideRow"> 
                       <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="eFromTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ID="TableCell4" ColumnSpan=2>
                               <input class='RsnPUP' TabIndex="5" onclick="FormSelPopUpFn()" id="EfromPopUp" tabindex="6" type="button">
                                <asp:Label ID="EfromLbl" runat="server" ></asp:Label>
                                <asp:TextBox ID="eFromTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                                <asp:TextBox ID="EFROMIDTXT" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                      </asp:TableRow>    
                      
                       <asp:TableRow ID="PriorityTr" CssClass="HideRow"> 
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="PriorityTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                           <asp:DropDownList  TabIndex="6" ID="PriorityDDL" runat="server">
                            </asp:DropDownList>
                               </asp:TableCell>
                        </asp:TableRow> 
                        
                         <asp:TableRow ID="DayDurationTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="DayDurationTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                                <asp:TextBox ID="DayDuration" runat="server" CssClass="TxtCls"  Width="55px"
                                    AccessKey="D" TabIndex="7" MaxLength="2" onfocusout="CheckNumVal('DayDuration','Standard Duration')" onkeypress="return IsDigit1(event)"></asp:TextBox>
                            </asp:TableCell>
                          </asp:TableRow>  
                          
                          
                          
                           <asp:TableRow ID="WrkDependencyTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="WrkDependencyTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
                                <asp:TextBox ID="WrkDependency" runat="server" CssClass="TxtCls"  Width="350px"
                                    TabIndex="8" onkeypress="return IsDigit2(event)" onfocusout="CheckNumVal('WrkDependency','Work Dependency')"></asp:TextBox>
                            </asp:TableCell>
                          </asp:TableRow>  
                          <asp:TableRow ID="EsignRow" runat="server" CssClass="HideRow">
                            <asp:TableCell ColumnSpan="2" Style="padding-right: 0px; padding-left: 0px; padding-top: 0px;
                                padding-bottom: 0px">
                                <uc1:EsignObj id="EsignObj1" runat="server" visible="false">
                                </uc1:EsignObj>
                            </asp:TableCell>
                        </asp:TableRow>
                           <asp:TableRow ID="DeptTr" CssClass="HideRow">
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="DeptTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" ColumnSpan=2>
										<input class='RsnPUP' onclick="DeptSelPopup()" type="button" tabindex="9" />
										<asp:Label ID="DeptDescLab" runat="server" Text=""></asp:Label>
										<asp:TextBox ID="DeptDescTxt" runat="server" CssClass="HideRow" Text='' ></asp:TextBox>
                                        <asp:TextBox ID="DeptIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
                            </asp:TableCell>
                          </asp:TableRow>  
                       
                        <asp:TableRow>
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" ID="ItemDescTd"></asp:TableCell>
                            <asp:TableCell CssClass="MainTD" >
                                <asp:TextBox ID="ItemDescTxt" runat="server" CssClass="TxtCls"  Width="350px"
                                    AccessKey="D" TabIndex="10" TextMode="MultiLine" onfocusout="CheckDescVal('ItemDescTxt','Item Name')"></asp:TextBox>
                            </asp:TableCell>
                            
                            <asp:TableCell CssClass="MainTD" Style="font-weight: bold;width:33%" HorizontalAlign=Center>
                                <asp:Button ID="btnConfirm" runat="server" onMouseOver="this.className='ButOCls'"
                                     Class='ButCls' AccessKey="C" TabIndex="11" onMouseOut="this.className='ButCls'" Text="Submit"
                                    Width="70"></asp:Button>
                            </asp:TableCell>
                            
                        </asp:TableRow>
                        
                        
                        <asp:TableRow CssClass="HideRow" ID="ItemTabTr">
                            <asp:TableCell CssClass="MainTD" ColumnSpan="5">
                                <asp:Table runat="server" CssClass="SubTable" Width="100%" CellPadding="0" CellSpacing="1"
                                    HorizontalAlign="center" ID="ItemTbl">
                                </asp:Table>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </asp:TableCell>
            </asp:TableRow>
            
              <asp:TableRow>
                <asp:TableCell CssClass="MainFoot">
                <input type ="button" id ="BackBtn" onMouseOver="this.className='ButOCls'" Class='ButCls'
                         onMouseOut="this.className='ButCls'"  value="Back" Width="70" onclick ="fnback()"/>
                          </asp:TableCell>
            </asp:TableRow>
            
         
            <asp:TableRow CssClass="HideRow" Height="0">
                <asp:TableCell ColumnSpan="2" ID="ValidatorsTd">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowSummary="False"
                        ShowMessageBox="True"></asp:ValidationSummary>
                 
                     <%--<asp:CustomValidator ID="CustVal" runat="server" ClientValidationFunction="ValidateStandTxtLen"></asp:CustomValidator>--%>
               
                    <asp:TextBox ID="ProtocolFieldKeys" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldNames" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                    <asp:TextBox ID="ProtocolFieldbndto" Style="display: none" Width="0" Height="0" runat="server"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
          <!-- Mask to cover the whole screen -->
        <div id="mask">
        </div>
        <div id="boxes">
            <div id="dialog" class="window">
                <asp:Table ID="Table2" runat="server" HorizontalAlign="Center">
                    <asp:TableRow>
                        <asp:TableCell ID="MessageImgTd">
                        </asp:TableCell>
                        <asp:TableCell ID="MessageTxtTd">
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ID="MessageBtnTd" HorizontalAlign="Center" ColumnSpan="2">
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
    </form>
    <script language=javascript>
    
     // To set max length of multiline textbox 
    var taMaxLength = <%=Maxlength %>
    var txtMinLength = <%=Minlength %>

    function taLimit() 
	{
		var taObj=window.event.srcElement;
		if (taObj.value.length==taMaxLength*1) return false;
	}
   
   function CheckSeqid(src,args) //Checking SeqId
   {
     args.IsValid=true;
     Page_IsValid=true;
     var FirstSeqId=<%=FirstSeqID%>
//     if(document.getElementById("SeqNoTxt").value<=FirstSeqId)
//       {
//          src.errormessage="SequenceId must be Greater than "+FirstSeqId;
//                        args.IsValid=false;
//                        Page_IsValid=false;
//       }  
     if(document.getElementById("ItemDescTxt").value !='' )
     {
       var  itemName =document.getElementById("ItemDescTxt").value
       if (itemName.indexOf("  ") >-1)
       {
          src.errormessage="Double Space Is Not Allowed In Item Name";
                        args.IsValid=false;
                        Page_IsValid=false;
       }
       
          
     
     }         
           
   }
   function CheckSameSeqid(src,args)
   {
   if(document.getElementById("SeqNoTxt").value != ""){
        var WrkDepdncy1="," + document.getElementById("WrkDependency").value + "," ;
              var SeqId1="," + document.getElementById("SeqNoTxt").value + "," ;
            if (WrkDepdncy1.indexOf(SeqId1) >-1)
             {
                  src.errormessage="Same Sequence Id Is Not Allowed For Work Dependency";
                                args.IsValid=false;
                                Page_IsValid=false;
            } 
        }
   }
	function taCount()
	{
		var taObj=window.event.srcElement;	
		if (taObj.value.length>taMaxLength*1){
			taObj.value=taObj.value.substring(0,taMaxLength*1);
			alert("Characters Exceeding Maximum Length: "+ taMaxLength +" Characters")
		}
	}	

  function MinCount()
    {   
      var taObj=window.event.srcElement;	
      if (taObj.value.length<txtMinLength*1){
			taObj.value=taObj.value.substring(0,txtMinLength*1);
			alert("Characters Length Must Be Greater Than or Equal : "+ txtMinLength +" Characters")
            
		}
    }	    

	
//	 function ValidateStandTxtLen(src,args)
//    {
//        args.IsValid=true;
//        Page_IsValid=true;
//          var ExpMsg=''
//	  
//	  var taObj= document.getElementById("ItemDescTxt")
//	  
//	  if (taObj.value !="")
//	  {
//	      if (taObj.value.length<txtMinLength*1){
//			    taObj.value=taObj.value.substring(0,txtMinLength*1);
//			    ExpMsg= "Characters Length Must Be Grater Than or Equal : "+ txtMinLength +" Characters"
//		    }
//	      else if (taObj.value.length>taMaxLength*1){
//			    taObj.value=taObj.value.substring(0,taMaxLength*1);
//			    ExpMsg="Characters exceeding Maximum Length: "+ taMaxLength +" Characters"
//		    }
//	  }	
//		
//	 if (ExpMsg!='')
//       {
//        src.errormessage= ExpMsg
//        args.IsValid=false;
//        Page_IsValid=false;
//       }
//	  
//	}
//	
  
     
     function ShowConfermationMessage()
    {
        var ConfermationMessage = "<%=ErrerMessage%>"
        
        if(ConfermationMessage != "")
        {
                if ( ConfermationMessage == "Item Name Is Registered ") 
                {
                    Fn_Message_Show(ConfermationMessage,1)
                }
                else
                {
                    Fn_Message_Show(ConfermationMessage,2)
                }
        }
    }
    
    ShowConfermationMessage()
    
//    function fnUpdateSts(RowCnt,FldID,Datatype,status,WrkDepFlag)
//          {
//              var recary = new Array(); 
//              var xmlhttp;
//                try
//                {
//                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
//                }
//                catch(ex)
//                {
//                    try 
//                    {
//                        xmlhttp=new ActiveXObject("MSxml2.XMLHTTP");
//                    }
//                    catch(ex)
//                    {
//                        try
//                        {
//                            xmlhttp=new XmlHttpRequest();
//                        }
//                        catch(ex)
//                        {
//                            alert("please update the webbrowser");
//                        }
//                    }
//                }
//                    
//                xmlhttp.onreadystatechange=function()
//                {
//                    if(xmlhttp.readystate==4)
//                    {
//                        var RtnStr="abc"
//                        var ReturnArr =new Array()
//                        RtnStr=xmlhttp.ResponseText
//                        var text=''
//                        
//                        if(WrkDepFlag==0)
//                        {
//                            if (RtnStr==1)
//                              {  text = "<B>Active&nbsp;&nbsp;&nbsp;<span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + FldID + ',' + Datatype + ",2,0)'>Inactive</a></span></B>"}
//                            else
//                               { text = "<B><span><a id='His" + RowCnt + "' href='javascript:fnUpdateSts(" + RowCnt + ',' + FldID + ',' + Datatype + ",1,0)'>Active</a></span>&nbsp;&nbsp;&nbsp;Inactive</B>" } 
//                                
//                            document.getElementById("Status" + RowCnt).innerHTML=text
//                         }
//                         else //For Dependency Updation
//                         {
//                           if(RtnStr=="1")
//                            {
//                              alert("Updated Successfully");
//                             } 
//                           else if(RtnStr=="2")
//                            {
//                              alert("Same SequenceId Will Not Be Allowed For Dependency");
//                             }
//                         }
//                    }
//                }  
//                
//                var WrkDepdncy='';
//                var SeqId='';
//                if(WrkDepFlag==1)
//                {
//                  WrkDepdncy=document.getElementById("WrkDepTxt" + RowCnt).value;
//                  SeqId=document.getElementById("SeqIdTxt" + RowCnt).value;
//                }
//                              
//                var url="FldItemStatusChange.aspx?FldID=" + FldID + "&CurrentItemCnt=" + RowCnt  + "&FldStatus=" + status +"&Datatype=" + Datatype +"&WRkDepFlag=" + WrkDepFlag + "&SeqId=" + SeqId + "&WrkDepdncy=" + WrkDepdncy
//                xmlhttp.open("POST",url,true);
//                xmlhttp.send(null);
//          }
          
          
          function fnback()
        {
         var CtrlID=<%=CtrlID%>
         window.navigate("../ControlConfiguration/ControlCfg.aspx?CtrlId=" + CtrlID);
        }  

    function ChangeFrom()
    {
        document.getElementById("EfromLbl").innerHTML =""
        document.getElementById("EFROMIDTXT").value=""
        document.getElementById("eFromTxt").value =""
    }
    
    function FormSelPopUpFn()
    {
        var WrkType= document.getElementById("WrkTypeDDl").value
        if(WrkType!="")
        {
          pageURL ="../EFormIssuance/EFormListPopUp.aspx?WrkType="+WrkType

           SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
           if(SpWinObj.opener == null) SpWinObj.opener=self;
           SpWinObj.focus();
        }
        else
        {alert("Select Work Type");}   
   }
   
   function  fnGetFormVal(KdIdVal,KdCodeVal,KfLableVal,WofID,Valreq,ValFunID,WofId,WofDesc)
    {
        document.getElementById("EfromLbl").innerHTML =KfLableVal
        document.getElementById("EFROMIDTXT").value=KdIdVal
        document.getElementById("eFromTxt").value =KfLableVal
    }

 function IsDigit1(e)  ///Function To check Numeric values
        {
            var KeyIdentifierMap =
            {
                End            : 35,
                Home        : 36,
                Left        : 37,
                Right        : 39,
                'U+00007F'    : 46        // Delete
            }
            if ( !e )
            e = event ;

           
                if(e.shiftKey ==true)
                return false;


            var iCode = ( e.keyCode || e.charCode );

            if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;

            return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                || iCode == 9     
                
                
                                   // Tab.
            )
          
        }
        
         function IsDigit2(e)  ///Function To check Numeric values And Allow , Also
        {
            var KeyIdentifierMap =
            {
                End            : 35,
                Home        : 36,
                Left        : 37,
                Right        : 39,
                'U+00007F'    : 46        // Delete
            }
            if ( !e )
            e = event ;

            if(e.shiftKey==true)
            return false

            var iCode = ( e.keyCode || e.charCode );

            if ( !iCode && e.keyIdentifier && ( e.keyIdentifier in KeyIdentifierMap ) )
            iCode = KeyIdentifierMap[ e.keyIdentifier ] ;
            if(iCode == 39 ) return false;
            return (
                ( iCode >= 48 && iCode <= 57 )        // Numbers
                || (iCode >= 35 && iCode <= 40)        // Arrows, Home, End
                || iCode == 8                        // Backspace
                || iCode == 44                        // Delete
                || iCode == 9                        // Tab.
            )
        }
    function fnCrformSubmit(){}
    
     function DeptSelPopup()
            {
                var pageURL ="../IssueLogin/DeptPopup.aspx?id=0&PlantFilter=1"
                SpWinObj = window.open(pageURL,'SpecCodes',"height=460,width=600,toolbar=no,resizable=no,menubar=no,status=no,scrollbars=no,top=50,left=50");
                if(SpWinObj.opener == null) SpWinObj.opener=self;
                SpWinObj.focus();
            }
            
            function fnSetDeptCode(Id,DeptId,DeptAulID,DeptCode,Deptname)     
            {
                 document.getElementById("DeptIdTxt").value=DeptAulID
                // document.getElementById("DeptDescTxt").value=DeptCode
                 if(Deptname!=""){
                 document.getElementById("DeptDescTxt").value=Deptname+"(Department)"
                 document.getElementById("DeptDescLab").innerHTML=Deptname+"(Department)"
                 }
                 else{
                 document.getElementById("DeptDescTxt").value=Deptname
                 document.getElementById("DeptDescLab").innerHTML=Deptname                
                 }
                 
            }
            
$(document).ready(function() {	
	        $(window).resize(function () {
 		        var box = $('#boxes .window');
         
                //Get the screen height and width
                var maskHeight = $(document).height();
                var maskWidth = $(window).width();
              
                //Set height and width to mask to fill up the whole screen
                $('#mask').css({'width':maskWidth,'height':maskHeight});
                       
                //Get the window height and width
                var winH = $(window).height();
                var winW = $(window).width();

                //Set the popup window to center
                box.css('top',  winH/2 - box.height()/2);
                box.css('left', winW/2 - box.width()/2);
	        });
        });

        function Fn_Message_Show(Message,MessageType)
        {
            switch (MessageType)
            {
                case 1:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Info.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                case 2:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                case 3:
                    $("#MessageImgTd").html("<div><img src=\"../Images/QuestionMark.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
                default:
                    $("#MessageImgTd").html("<div><img src=\"../Images/Exlamatry.GIF\" class=\"MessageImgCls\"/></div>")
                    $("#MessageTxtTd").html("<div class=\"MessageTxtCls\"><span id=\"MsgSpan\"></span></div>");
                    $("#MessageBtnTd").html("<br/><button type=\"button\" class=\"ButCls\" onclick=\"Fn_Message_Hide()\">OK</button>");
                    break;
            }
            
            $("#MsgSpan").html(Message.replace(/\n/g, '<br/>' ));
            
	        var maskHeight = $(document).height();
	        var maskWidth = $(window).width();
            var id = "#dialog"
	        //Set heigth and width to mask to fill up the whole screen
	        $('#mask').css({'width':maskWidth,'height':maskHeight});
        	
	        //transition effect		
	        $('#mask').fadeIn(10);	
	        $('#mask').fadeTo("slow",0.8);	
	        
	        var winH = $(window).height() + $(window).scrollTop();
	        var winW = $(window).width();

	        //Set the popup window to center
	        $(id).css('top', ((winH - $(id).outerHeight() ) / 2) + $(window).scrollTop()/2);
	        $(id).css('left', (winW - $(id).outerWidth() ) / 2);

	        //transition effect
	        $(id).fadeIn(20);
        }

        function Fn_Message_Hide()
        {
	        $('#mask').hide();
	        $('.window').hide();
        }  
           
            </script>
    
    
    <script language="javascript">

        function fnUpdateSts(RowCnt, FldID, Datatype, status, WrkDepFlag) {
            // ShowMask()

            var WrkDepdncy = '';
            var SeqId = '';
            var ItemName = document.getElementById("ItemNameTxt" + RowCnt).value;
            if (WrkDepFlag == 1) {
                WrkDepdncy = document.getElementById("WrkDepTxt" + RowCnt).value;
                SeqId = document.getElementById("SeqIdTxt" + RowCnt).value;
            }
            var pageURL = "CommonStatusChange.aspx?FldID=" + FldID + "&CurrentItemCnt=" + RowCnt + "&FldStatus=" + status + "&Datatype=" + Datatype + "&WRkDepFlag=" + WrkDepFlag + "&SeqId=" + SeqId + "&WrkDepdncy=" + WrkDepdncy + "&ItemName=" + encodeURIComponent(ItemName) + "&Type=3" + "&DepScreen=1" + "&title=" + "<%=MainTitleLtrl.text %>"

            var PWidth = 650
            var PHeight = 300
            var ScreenLeft = parseInt(window.screen.width - PWidth) / 2;
            var ScreenTop = parseInt(window.screen.height - PHeight) / 2;

            var features = "height=" + PHeight + ",width=" + PWidth + ",toolbar=no,resizable=no,menubar=no,status=no,scrollbars=1,top=" + ScreenTop + ",left=" + ScreenLeft
            SpWinObj = window.open(pageURL, 'SpecCodes', features)
            if (SpWinObj.opener == null) SpWinObj.opener = self;
            SpWinObj.focus();

        }
        function fnPageRefresh() {
            window.location.href = window.location.href
        }
  
          
    </script>
</body>
</html>

