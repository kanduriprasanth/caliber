<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ValidationRulePopUp.aspx.vb"
    Inherits="TestDynamicEForm.ValidationRulePopUp" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html>
<head id="Head1" runat="server">
    <title><%=MainTitleLtrl.Text%></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">
    <script type="text/javascript" src="../JScript/jquery.min.js"></script>

    <script language="javascript">

    function AltFnAllowNumVal()
    {
        var e =event.keyCode
        
        if('<%=Request.QueryString("CtrlDataType")%>'!='8')
        {debugger
                if(event.ctrlLeft == true){return false}
                if(event.shiftKey == true){return false}
                else if((e ==8)){}
                else if((e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>96)) {
                 if(e!=97 && e!=98){return false}}
                else if(e ==32){return false}
                else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
                {return false}
                else if(String.fromCharCode(e) <1 || String.fromCharCode(e) >2)
                {return false}
        }
        else
        {
               if(event.ctrlLeft == true){return false}
                if(event.shiftKey == true){return false}
                else if((e ==8)){}
                else if((e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>96)) {
                if(e!=97 && e!=98 && e!=99){return false}}
                else if(e ==32){return false}
                else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
                {return false}
                else if(String.fromCharCode(e) <1 || String.fromCharCode(e) >3)
                {return false} 
        }
    }

    function FnAllowNumVal()
    {
        var e =event.keyCode
        if(event.ctrlLeft == true){return false}
        if(event.shiftKey == true){return false}
        else if((e ==8)||(e ==46)||(e ==37)||(e ==39)||(e ==9)||(e ==16)||(e>=96 && e <= 105)) {return true}
        else if(e ==32){return false}
        else if(isNaN(String.fromCharCode(e))) //Validates for Key Data
        {return false}
    }
     var FieldTrIdLst = "ErrerValTr,CustValTr,ConToComValTr,MinValTr,MaxValTr,ValExpTr,ComDateTr,UserCtrlTr,CheckOprTr"
    var FieldIdLst = "ErrerTxt,CustValTxt,ConToComValTxt,MinValTxt,MaxValTxt,ValExpTxt,ComDateTxt,UserCtrlValdTxt,CheckOprTxt"

    function ChechSel(SelVal,Cnt)
    {//debugger
        var HideFlagVal =0
        var FieldIdArr = new Array()
        var FieldFlagArr = new Array()
        FieldIdArr = FieldTrIdLst.split(",");
        for(var k=0;k<FieldIdArr.length;k++)
        {
            FieldFlagArr.push(HideFlagVal);
        }
        switch (parseInt(SelVal))
        {
            case 1:
                FieldFlagArr[0] =1;
                break;
            case 2:
                FieldFlagArr[0] =1;
                FieldFlagArr[4] =1;
                FieldFlagArr[3] =1;
                break;
            case 3:
                FieldFlagArr[5] =1;
                FieldFlagArr[0] =1;
               break;
            case 4:
                FieldFlagArr[2] =1;
                FieldFlagArr[0] =1;
                break;
            case 5:
                FieldFlagArr[1] =1;
                 break;
            case 6:
                FieldFlagArr[0] =1;
                FieldFlagArr[6] =1;
                FieldFlagArr[7] =1;
                FieldFlagArr[8] =1;
                break;
            default:
        }

        for(var k=0;k<FieldIdArr.length;k++)
        {
            if(parseInt(FieldFlagArr[k]) == HideFlagVal)
            {
             document.getElementById(FieldIdArr[k]+Cnt).className ="HideRow"
            }
            else
            { 
              document.getElementById(FieldIdArr[k]+Cnt).className ="MainTD"
              if(k==7)
              {
                if(document.getElementById("ComDateTxt"+Cnt+"_1").checked == true)
                {document.getElementById(FieldIdArr[k]+Cnt).className ="MainTD" }
                else
                { document.getElementById(FieldIdArr[k]+Cnt).className ="HideRow"}
              }
            }
        }
    }
    
     function ChangRDl(Cnt)
     {
       if(document.getElementById("ComDateTxt"+Cnt+"_1").checked== true)
       {
           document.getElementById("UserCtrlTr"+Cnt).className ="MainTD" 
           document.getElementById("CheckOprTr"+Cnt).className ="MainTD" 
       }
       else if(document.getElementById("ComDateTxt"+Cnt+"_0").checked== true)
       { 
            document.getElementById("UserCtrlTr"+Cnt).className ="HideRow"
            document.getElementById("CheckOprTr"+Cnt).className ="MainTD"
        }
      
     }
     

function GetQueryStr(Item)
{
    var Arr = new Array()
    Arr = window.document.URLUnencoded.split("?")
    var RetVal =""
    
    if(Arr.length ==2)
    {
        var SubArr = new Array()
        SubArr = Arr[1].split("&")
        for(var k=0;k<SubArr.length ;k++)
        {
            if(SubArr[k].indexOf(Item+'=') == 0)
            {
                RetVal = SubArr[k].replace(Item+'=',"")
                break;
            }
        }  
    }
    return RetVal
}

    function ValidatePage()
    {
        var Cnt =0;
        var Str ="";
        var ErreCap =""
        while(document.getElementById("ValDDL"+Cnt)!=null)
        {
            ErreCap =  document.getElementById("ValSetTd"+Cnt).innerHTML + " - "
            var SelVal =document.getElementById("ValDDL"+Cnt).value
            if($.trim(SelVal)== "")
            {
                Str +="Select Value For: " + ErreCap + document.getElementById("ValTd"+Cnt).innerHTML + "  \n -"
                Cnt+=1;
                continue
            }
            var FieldIdArr = new Array()
            FieldIdArr = FieldIdLst.split(",");

            switch (parseInt(SelVal))
            {
                case 1:
                    if($.trim(document.getElementById(FieldIdArr[0]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("ErrMessTd" +Cnt).innerHTML + "  \n -"
                    }
                    break;
                case 2:
                    if($.trim(document.getElementById(FieldIdArr[0]+Cnt).value) == "")
                    {
                        Str +="- Select Value For: " + ErreCap + document.getElementById("ErrMessTd" +Cnt).innerHTML  + "  \n -"
                    }
                    if($.trim(document.getElementById(FieldIdArr[3]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("MaxValTd" +Cnt).innerHTML  + "  \n -"
                    }
                    if($.trim(document.getElementById(FieldIdArr[4]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("MinValTd" +Cnt).innerHTML  + "  \n -"
                    }
                     break;
                case 3:
                    if($.trim(document.getElementById(FieldIdArr[0]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("ErrMessTd" +Cnt).innerHTML  + "  \n -"
                    }
                    if($.trim(document.getElementById(FieldIdArr[5]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("ValExpTd" +Cnt).innerHTML  + "  \n -"
                    }
                   break;
                case 4:
                    if($.trim(document.getElementById(FieldIdArr[0]+Cnt).value)== "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("ErrMessTd" +Cnt).innerHTML  + "  \n -"
                    }
                    if($.trim(document.getElementById(FieldIdArr[2]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("ConToComValTd"+Cnt).innerHTML + "  \n -"
                    }
                    break;
                case 5:
                    if($.trim(document.getElementById(FieldIdArr[1]+Cnt).value)== "")
                    {
                        Str +="Select Value For: " + ErreCap + document.getElementById("CustValTd" + Cnt).innerHTML  + "  \n -"
                    }
                    break;
                 case 6:
                if($.trim(document.getElementById(FieldIdArr[0]+Cnt).value)== "")
                {
                    Str +="Select Value For: " + ErreCap + document.getElementById("ErrMessTd" + Cnt).innerHTML  + "  \n-"
                }
                 if(document.getElementById("ComDateTxt"+Cnt+"_1").checked== true)
                {
                     if($.trim(document.getElementById(FieldIdArr[7]+Cnt).value) == "")
                    {
                        Str +="Select Value For: " + ErreCap + "Control To Validate"  + "  \n -"
                    }
                }
                 if($.trim(document.getElementById(FieldIdArr[8]+Cnt).value) == "")
                {
                    Str +="Select Value For: " + ErreCap + "Operator Type"  + "  \n -"
                }
                break;
                default:
            }
            Cnt+=1;
        }
        var j=document.getElementById("ValdatorsCntTxt").value;
        var flag=0
         for(i=0;i<j-1;i++)
                {
                  for(b=i+1;b<j;b++)
                   {
                     first=document.getElementById("ValDDL"+i).value;
                     second=document.getElementById("ValDDL"+b).value;
                    if(first!=""&&second!="")
                     {
                        if(first==second)
                        {
                        Str +="Validation Type Should not be same For Any two"  + "  \n -";  
                        flag=1                    
                        break;
                        }   
                      }                
                   } 
                   if (flag==1)
                   {
                   break;
                   }               
                  }
          return (Str !="") ? Str.substring(0,Str.length-3) : ""
    }
    
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal></td>
            </tr>
            <tr>
                <td>
                    <div class="MainTd" id="Div1">
                        <table width="100%" cellspacing="0" cellpadding="0" align="center">
                            <tr class="HideRow">
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                </td>
                                <td>
                                    <asp:TextBox ID="ComFieldsTxt" runat="server" class="HideRow"></asp:TextBox>
                                    <asp:TextBox ID="ComFieldIDTxt" runat="server" class="HideRow"></asp:TextBox>
                                    <asp:TextBox ID="ValdFldTxt" runat="server" class="HideRow"></asp:TextBox>
                                    <asp:TextBox ID="FldIdTxt" runat="server" class="HideRow"></asp:TextBox>
                                    </td>
                                    
                            </tr>
                            <tr class="HideRow">
                                <td class="MainTd" colspan="1">
                                    <asp:Literal ID="SearchOptionLtrl1" runat="server">Search Option</asp:Literal>
                                </td>
                                <td class="MainTd" colspan="3">
                                    <asp:RadioButtonList ID="SearchOptionRD" runat="server" RepeatDirection="Horizontal"
                                        CellPadding="0" CssClass="RBList" CellSpacing="0" Height="18px">
                                        <asp:ListItem Value="1" Selected="True">Kf 1</asp:ListItem>
                                        <asp:ListItem Value="2"> Kf 2</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr class="HideRow">
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FindLrl" runat="server">Find</asp:Literal>
                                    <asp:TextBox ID="FindTxt" maxLength="30"  runat="server" Width="180px" CssClass='TxtCls'>%</asp:TextBox>
                                </td>
                                <td class="MainTd" colspan="2">
                                    <asp:Literal ID="FetchSizeLtrl" runat="server">Records Limit</asp:Literal>
                                    <asp:TextBox ID="FetchSizeTxt" runat="server" Width="50px" CssClass="TxtCls" MaxLength="3">50</asp:TextBox>
                                    <asp:Button ID="btnFind" runat="server" Text="Display" class="ButCls" onmouseover="this.className='ButOCls'"
                                        onmouseout="this.className='ButCls'"></asp:Button>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTD" colspan="1" style="font-weight: bold;">
                                    <asp:Literal ID="SearchOptionLtrl" runat="server" Text="No of Validators"></asp:Literal>
                                </td>
                                <td class="MainTD" colspan="2">
                                    <asp:TextBox ID="ValdatorsCntTxt" runat="server" Text="1" AutoPostBack="true" onkeydown="return AltFnAllowNumVal()" MaxLength ="1"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="MainTD" colspan="4">
                                    <div style="overflow: auto; height: 300px; background-color: white">
                                        <asp:Table ID="ResTab" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                            CellPadding="0" CssClass="SubTable">
                                        </asp:Table>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnCrCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
    var RowSel =""
  	function fnCrGetCode(RowCnt)
	{ 
        RowSel = RowCnt
        var KfLableVal=document.all("EFTblUCode"+ RowCnt).innerHTML
        var KdIdVal=document.all("EFTblId"+ RowCnt).innerText
        var KfCodeVal=document.all("EFTblAulId"+ RowCnt).innerHTML
        opener.fnCrSetToCode(KdIdVal,KfLableVal,KfCodeVal)
	}

	function fnCrCancel()
	{
		//opener.fnCrSetToCode('','','')
		
		opener.SetSelFieldVal('','','','',GetQueryStr("RowCnt"))
		
		//To set No.of Validators to 1
		opener.window.document.getElementById("ValidTypeValTxt" + GetQueryStr("RowCnt")).value=""  
        var FieldIdArr = new Array()
        FieldIdArr = FieldIdLst.split(",");
        
        for(i=0;i<FieldIdArr.length;i++)
        {
          opener.window.document.getElementById(FieldIdArr[i]+ GetQueryStr("RowCnt")).value=""  
        }
		window.self.close()
	}

	//document.oncontextmenu=new Function("return false")
	function fnCrCloseWin()
	{
	    var ErrStr = ValidatePage()
	    if(ErrStr !="")
        {
            alert(ErrStr)
            return(false);
        }
        
        var RetVal = GetQueryStr("RowCnt")
        
        var FieldIdArr = new Array()
        FieldIdArr = FieldIdLst.split(",");
        
        var FieldValArr = new Array()
        var ValCnt =document.getElementById("ValdatorsCntTxt").value;
        ValCnt = (ValCnt =="") ? 0 :  parseInt(ValCnt);
        
        var TempVal =""
        for(var k=0;k<FieldIdArr.length;k++)
        {
            TempVal =""
            for(var j=0;j<ValCnt;j++)
            {
            
             if(k==6)
               {
                 if(document.getElementById(FieldIdArr[k]+j+"_0").checked==true)
                   TempVal+= "#*#" +1
                 else if(document.getElementById(FieldIdArr[k]+j+"_1").checked==true)
                   TempVal+= "#*#" +2
               }
               else
               { 
                TempVal+= "#*#" + document.getElementById(FieldIdArr[k]+j).value;
               }
               
            }
            FieldValArr.push(TempVal.substring(3));
        }
        TempVal =""
        ValidationTextLst =""
        ValidationValLst = ""
        var TempObj 
        for(var j=0;j<ValCnt;j++)
        {
            TempObj = document.getElementById("ValDDL"+j)
            ValidationTextLst += "#*#" + TempObj.children(TempObj.selectedIndex).innerText
            ValidationValLst += "#*#" + TempObj.children(TempObj.selectedIndex).value
        }
        opener.SetSelFieldVal(FieldIdArr,FieldValArr,ValidationTextLst.substring(3),ValidationValLst.substring(3),GetQueryStr("RowCnt"))
		window.self.close()
	}
	
	function SetSelectedFields()
	{
        var FieldIdArr = new Array()
        FieldIdArr = FieldIdLst.split(",");
        
        var RowCnt = GetQueryStr("RowCnt");
        var ValArr = new Array()

        ValArr = opener.window.document.getElementById("ValidTypeCapTxt"+RowCnt).value.split(",");
        var STempObj
        var SelVal
        for(var j=0;j<ValArr.length;j++)
        {
            STempObj =document.getElementById("ValDDL"+j)
            if (STempObj != null)
            {
                for(var t=0;t<STempObj.length;t++)
                {
                    if(STempObj[t].innerText == ValArr[j] || STempObj[t].value == ValArr[j])
                    {   
                        STempObj.selectedIndex =t  //STempObj.children[t].value;
                        SelVal = STempObj[t].value;
                        break;
                    }
                }
                ChechSel(SelVal,j)
                SelVal =""
           } 
        }
       
        for(var k=0;k<FieldIdArr.length;k++)
        {
            ValArr = opener.window.document.getElementById(FieldIdArr[k]+RowCnt).value.split("#*#");
            for(var j=0;j<ValArr.length;j++)
            {
                document.getElementById(FieldIdArr[k]+j).value = ValArr[j];
                if (document.getElementById("ValDDL"+j).value==6)
                {
                    //if(k==6)
                   //{
                     if(document.getElementById(FieldIdArr[k]+j).value==1) {
                        document.getElementById(FieldIdArr[k]+j+"_0").checked="checked";
                        document.getElementById("UserCtrlTr"+j).className ="HideRow" ;
                         document.getElementById("CheckOprTr"+j).className ="MainTD" ;
                      }
                      
                     else if(document.getElementById(FieldIdArr[k]+j).value==2) {
                         document.getElementById(FieldIdArr[k]+j+"_1").checked="checked";
                         document.getElementById("UserCtrlTr"+j).className ="MainTD" ;
                         document.getElementById("CheckOprTr"+j).className ="MainTD" ;
                      }   
                 // } 
                }           
            }
        }
	}


function buildOptions(sName,sValue)
{
var oOptionTag = document.createElement("OPTION");
// set the value
oOptionTag.setAttribute("value",sValue);
// create the display name
//var oOptionText = document.createTextNode(sName);
//oOptionTag.appendChild(oOptionText);
oOptionTag.innerHTML = sName;
return oOptionTag;
}

function LoadComFealds()
{
    var _ComFields =""
    var FieldsLst = ""
    var TCnt =0
    var TVal=""
    var oSelect =document.getElementById("ConToComValTxt"+TCnt)
      var RCnt =0
    while(opener.window.document.getElementById("FieldID"+TCnt))
    {
        TVal = opener.window.document.getElementById("FieldID"+TCnt).value
      
        _ComFields += "," + TVal;
        RCnt =0
        while(document.getElementById ("ConToComValTxt"+RCnt))
        {
            document.getElementById("ConToComValTxt"+RCnt).appendChild(buildOptions(TVal,TVal))
            RCnt+=1;
        }
        //FieldsLst += "<option value='"+ TVal +"'>"+ TVal +"</option>";
        TCnt+=1;
    }

    document.getElementById("ComFieldsTxt").value =_ComFields;
    
}

	if("<%=Page.IsPostBack%>" == "False")
	{
	    LoadComFealds()
	    LoaduserFealds()
	    SetSelectedFields()
    }
    
    
    
function LoaduserFealds()
{
    var _ComFields1 =""
    var _FldIdLst =""
    var FieldsLst1 = ""
    var TCnt1 =0
    var TVal1=""
    var Count="<%=RowCnt%>"
    var TVal2=""
    var DBType=""
    
    var oSelect1 =document.getElementById("UserCtrlValdTxt"+TCnt1)
      var RCnt1 =0
    var DBType= opener.window.document.getElementById("FieldDBType"+Count).value
   
    while(opener.window.document.getElementById("FieldID"+TCnt1))
    {
     
       if (TCnt1 != Count)
        {
        
            TVal1 =''
            TVal2=''
           if(DBType=="DateTime")
            {
              if(opener.window.document.getElementById("FieldDBType"+TCnt1).value == DBType)
               { 
               // TVal1 = opener.window.document.getElementById("FieldID"+TCnt1).innerText
                TVal2= opener.window.document.getElementById("FieldID"+TCnt1).value
                if(TVal2 != "")
                    _ComFields1 += "," + TVal2; //TVal1;
                    //_FldIdLst += "," + TVal2;
               }
            }
          else
           {
           //TVal1 = opener.window.document.getElementById("FldVAl_"+TCnt1).innerText
           TVal2= opener.window.document.getElementById("FieldID"+TCnt1).value
           if(TVal2 != "")
                _ComFields1 += "," +  TVal2; //TVal1;
                //_FldIdLst += "," + TVal2;
           }

            RCnt1 =0
            while(document.getElementById ("UserCtrlValdTxt"+RCnt1))
            {
                if(TVal2 != "")
                    document.getElementById("UserCtrlValdTxt"+RCnt1).appendChild(buildOptions(TVal2,TVal2))
                RCnt1+=1;
            }
          }  
        //FieldsLst1 += "<option value='"+ TVal +"'>"+ TVal +"</option>";
        TCnt1+=1;
    }

    document.getElementById("ValdFldTxt").value =_ComFields1.substring(1);
    //document.getElementById("FldIdTxt").value =_FldIdLst.substring(1);
    
}

  //function to check maximum and minimum values in case of Range Validators
        
  function CheckVal(Cnt)
  {       
         if((document.getElementById ("MinValTxt" + Cnt ).value  !="") && (document.getElementById ("MaxValTxt" + Cnt).value  !="") )
           {
                var ReturnVal
                var MaxVal = 0
                var MinVal = 0
                var MaxL = 0
                var MinL = 0
               
                MaxVal= document.getElementById ("MaxValTxt" + Cnt).value
                MinVal =document.getElementById ("MinValTxt" + Cnt ).value
              
                MaxL = MaxVal.length
                MinL = MinVal.length
                
                if (MaxL < MinL)
                    ReturnVal=1
                if ((MinVal > MaxVal) && (MaxL == MinL))
                    ReturnVal = 1

                if (ReturnVal == 1)
                {
                    alert("MaximumValue Must Be Greater Than Or Equal To MinimumValue")
                    document.getElementById ("MaxValTxt" + Cnt).value=""
                    document.getElementById ("MinValTxt" + Cnt ).value=""
                }
           }
           
  }

function ChechSel1(SelVal,Cnt)
    {//debugger
        var HideFlagVal =0
        var FieldIdArr = new Array()
        var FieldIdArr2 = new Array()
        var FieldFlagArr = new Array()
        FieldIdArr = FieldTrIdLst.split(",");
        FieldIdArr2 = FieldIdLst.split(",");
        for(var k=0;k<FieldIdArr.length;k++)
        {
            FieldFlagArr.push(HideFlagVal);
        }
        switch (parseInt(SelVal))
        {
            case 1:
                FieldFlagArr[0] =1;
                break;
            case 2:
                FieldFlagArr[0] =1;
                FieldFlagArr[4] =1;
                FieldFlagArr[3] =1;
                break;
            case 3:
                FieldFlagArr[5] =1;
                FieldFlagArr[0] =1;
               break;
            case 4:
                FieldFlagArr[2] =1;
                FieldFlagArr[0] =1;
                break;
            case 5:
                FieldFlagArr[1] =1;
                 break;
            case 6:
                FieldFlagArr[0] =1;
                FieldFlagArr[6] =1;
                FieldFlagArr[7] =1;
                FieldFlagArr[8] =1;
                break;
            default:
        }

        for(var k=0;k<FieldIdArr.length;k++)
        {
            if(parseInt(FieldFlagArr[k]) == HideFlagVal)
            {
             document.getElementById(FieldIdArr[k]+Cnt).className ="HideRow"
            }
            else
            { 
              document.getElementById(FieldIdArr[k]+Cnt).className ="MainTD"
              if(k==7)
              {
                if(document.getElementById("ComDateTxt"+Cnt+"_1").checked == true)
                {document.getElementById(FieldIdArr[k]+Cnt).className ="MainTD" }
                else
                { document.getElementById(FieldIdArr[k]+Cnt).className ="HideRow"}
                }
            }
              document.getElementById(FieldIdArr2[k]+Cnt).value =""
        }
    }
    </script>

</body>
</html>
