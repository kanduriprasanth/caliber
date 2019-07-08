<%@ Page Language="vb" AutoEventWireup="false" Codebehind="ColorPopUp.aspx.vb" Inherits="ReportConfig.ColorPopUp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
    <title>
        <%=MainTitleLtrl.Text%>
    </title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    
    <link rel="stylesheet" href="../TRIMS.css">
    <style>
    .SubDivCss{
	width:24px;
	height:20px;
	float:left;
	cursor:pointer;
	border:1px solid #000;
	margin:1px;
}

 .SelColCss{
	width:80px;
	height:50px;
	float:left;
	cursor:pointer;
	border:1px solid #000;
	margin:1px;
}
    </style>

    <script language="javascript">

function getAllWebColors()
{
    var retArray=new Array();
    for(var red=0;red<=15;red+=3)
    {
        for(var green=0;green<=15;green+=3)
        {
            for(var blue=0;blue<=15;blue+=3)
            {
            var newRed=baseConverter(red,10,16);
            var newGreen=baseConverter(green,10,16);
            var newBlue=baseConverter(blue,10,16);
            retArray[retArray.length]=newRed+''+newRed+''+newGreen+''+newGreen+''+newBlue+''+newBlue
            }
        }
    }
    return retArray
}

function baseConverter(numberToConvert,oldBase,newBase)
{
    if(newBase==10)
    {
        return parseInt(numberToConvert,16)
    }
    if(newBase==16)
    {
        return parseInt(numberToConvert).toString(16)
    }

    numberToConvert=numberToConvert+"";
    numberToConvert=numberToConvert.toUpperCase();
    var listOfCharacters="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    var dec=0;
    for(var i=0;i<=numberToConvert.length;i++)
    {
        dec+=(listOfCharacters.indexOf(numberToConvert.charAt(i)))*(Math.pow(oldBase,(numberToConvert.length-i-1)))
    }
    numberToConvert="";
    var magnitude=Math.floor((Math.log(dec))/(Math.log(newBase)));
    for(var i=magnitude;i >= 0;i--)
    {
        var amount=Math.floor(dec/Math.pow(newBase,i));
        numberToConvert=numberToConvert+listOfCharacters.charAt(amount);
        dec-= amount*(Math.pow(newBase,i))
    }
    if(numberToConvert.length==0)
        numberToConvertToConvert=0;
    if(!numberToConvert)
        numberToConvert=0;
    return numberToConvert
}

function addAllWebColors()
{
    var colors=new Array();
    colors=getAllWebColors();
    for(var no=0;no<colors.length;no++)
    {
        colors[no]=[colors[no],colors[no]]
    }
    return colors;
}

    </script>

    <script language="javascript">

    function LoadColors(Type)
    {
        Type = Type ? Type : window.event.srcElement.value
        if(Type =="2")
        {
            document.getElementById("Table1").className ="HideRow"
            document.getElementById("Table2").className ="SubTable"
        }
        else
        {
            document.getElementById("Table1").className ="SubTable"
            document.getElementById("Table2").className ="HideRow"
        }
    }

    function LoadCol()
    {
        var colors = new Array()
        colors=getAllNamedColors();
        LoadNamedCol(colors,"<%=NamedColPrefix%>");
        var colors1 = new Array()
        colors1=addAllWebColors();
        LoadNamedCol(colors1,"<%=WebColPrefix%>");
    }

    function LoadNamedCol(colors,ParentObjPrefix)
    {
        for(var no=0;no<colors.length;no++)
        {
            var div=document.createElement('DIV');
            div.className='SubDivCss';
            div.setAttribute('rgb',colors[no][1]);
            div.style.backgroundColor= colors[no][1];
            div.title=colors[no][0];
            div.onclick =function()
            {
//               var selColVal =window.event.srcElement.rgb
//                fnCrGetCode(selColVal)
                SelCol(window.event.srcElement.rgb)
            }
            div.onmouseover =function()
            {
                document.getElementById("FocusedCorLab").style.backgroundColor = window.event.srcElement.rgb
            }
            document.getElementById(ParentObjPrefix+no).appendChild(div);
        }
    }

</script>

    <script language="javascript">

function getAllNamedColors()
{
var c=new Array();
c[c.length]=['AliceBlue','#F0F8FF'];c[c.length]=['AntiqueWhite','#FAEBD7'];c[c.length]=['Aqua','#00FFFF'];c[c.length]=['Aquamarine','#7FFFD4'];c[c.length]=['Azure','#F0FFFF'];c[c.length]=['Beige','#F5F5DC'];c[c.length]=['Bisque','#FFE4C4'];c[c.length]=['Black','#000000'];c[c.length]=['BlanchedAlmond','#FFEBCD'];c[c.length]=['Blue','#0000FF'];c[c.length]=['BlueViolet','#8A2BE2'];c[c.length]=['Brown','#A52A2A'];c[c.length]=['BurlyWood','#DEB887'];c[c.length]=['CadetBlue','#5F9EA0'];c[c.length]=['Chartreuse','#7FFF00'];c[c.length]=['Chocolate','#D2691E'];c[c.length]=['Coral','#FF7F50'];c[c.length]=['CornflowerBlue','#6495ED'];c[c.length]=['Cornsilk','#FFF8DC'];c[c.length]=['Crimson','#DC143C'];c[c.length]=['Cyan','#00FFFF'];c[c.length]=['DarkBlue','#00008B'];c[c.length]=['DarkCyan','#008B8B'];c[c.length]=['DarkGoldenRod','#B8860B'];c[c.length]=['DarkGray','#A9A9A9'];c[c.length]=['DarkGrey','#A9A9A9'];c[c.length]=['DarkGreen','#006400'];c[c.length]=['DarkKhaki','#BDB76B'];c[c.length]=['DarkMagenta','#8B008B'];c[c.length]=['DarkOliveGreen','#556B2F'];c[c.length]=['Darkorange','#FF8C00'];c[c.length]=['DarkOrchid','#9932CC'];c[c.length]=['DarkRed','#8B0000'];c[c.length]=['DarkSalmon','#E9967A'];c[c.length]=['DarkSeaGreen','#8FBC8F'];c[c.length]=['DarkSlateBlue','#483D8B'];c[c.length]=['DarkSlateGray','#2F4F4F'];c[c.length]=['DarkSlateGrey','#2F4F4F'];c[c.length]=['DarkTurquoise','#00CED1'];c[c.length]=['DarkViolet','#9400D3'];c[c.length]=['DeepPink','#FF1493'];c[c.length]=['DeepSkyBlue','#00BFFF'];c[c.length]=['DimGray','#696969'];c[c.length]=['DimGrey','#696969'];c[c.length]=['DodgerBlue','#1E90FF'];c[c.length]=['FireBrick','#B22222'];c[c.length]=['FloralWhite','#FFFAF0'];c[c.length]=['ForestGreen','#228B22'];c[c.length]=['Fuchsia','#FF00FF'];c[c.length]=['Gainsboro','#DCDCDC'];c[c.length]=['GhostWhite','#F8F8FF'];c[c.length]=['Gold','#FFD700'];c[c.length]=['GoldenRod','#DAA520'];c[c.length]=['Gray','#808080'];c[c.length]=['Grey','#808080'];c[c.length]=['Green','#008000'];c[c.length]=['GreenYellow','#ADFF2F'];c[c.length]=['HoneyDew','#F0FFF0'];c[c.length]=['HotPink','#FF69B4'];c[c.length]=['IndianRed ','#CD5C5C'];c[c.length]=['Indigo  ','#4B0082'];c[c.length]=['Ivory','#FFFFF0'];c[c.length]=['Khaki','#F0E68C'];c[c.length]=['Lavender','#E6E6FA'];c[c.length]=['LavenderBlush','#FFF0F5'];c[c.length]=['LawnGreen','#7CFC00'];c[c.length]=['LemonChiffon','#FFFACD'];c[c.length]=['LightBlue','#ADD8E6'];c[c.length]=['LightCoral','#F08080'];c[c.length]=['LightCyan','#E0FFFF'];c[c.length]=['LightGoldenRodYellow','#FAFAD2'];c[c.length]=['LightGray','#D3D3D3'];c[c.length]=['LightGrey','#D3D3D3'];c[c.length]=['LightGreen','#90EE90'];c[c.length]=['LightPink','#FFB6C1'];c[c.length]=['LightSalmon','#FFA07A'];c[c.length]=['LightSeaGreen','#20B2AA'];c[c.length]=['LightSkyBlue','#87CEFA'];c[c.length]=['LightSlateGray','#778899'];c[c.length]=['LightSlateGrey','#778899'];c[c.length]=['LightSteelBlue','#B0C4DE'];c[c.length]=['LightYellow','#FFFFE0'];c[c.length]=['Lime','#00FF00'];c[c.length]=['LimeGreen','#32CD32'];c[c.length]=['Linen','#FAF0E6'];c[c.length]=['Magenta','#FF00FF'];c[c.length]=['Maroon','#800000'];c[c.length]=['MediumAquaMarine','#66CDAA'];c[c.length]=['MediumBlue','#0000CD'];c[c.length]=['MediumOrchid','#BA55D3'];c[c.length]=['MediumPurple','#9370D8'];c[c.length]=['MediumSeaGreen','#3CB371'];c[c.length]=['MediumSlateBlue','#7B68EE'];c[c.length]=['MediumSpringGreen','#00FA9A'];c[c.length]=['MediumTurquoise','#48D1CC'];c[c.length]=['MediumVioletRed','#C71585'];c[c.length]=['MidnightBlue','#191970'];c[c.length]=['MintCream','#F5FFFA'];c[c.length]=['MistyRose','#FFE4E1'];c[c.length]=['Moccasin','#FFE4B5'];c[c.length]=['NavajoWhite','#FFDEAD'];c[c.length]=['Navy','#000080'];c[c.length]=['OldLace','#FDF5E6'];c[c.length]=['Olive','#808000'];c[c.length]=['OliveDrab','#6B8E23'];c[c.length]=['Orange','#FFA500'];c[c.length]=['OrangeRed','#FF4500'];c[c.length]=['Orchid','#DA70D6'];c[c.length]=['PaleGoldenRod','#EEE8AA'];c[c.length]=['PaleGreen','#98FB98'];c[c.length]=['PaleTurquoise','#AFEEEE'];c[c.length]=['PaleVioletRed','#D87093'];c[c.length]=['PapayaWhip','#FFEFD5'];c[c.length]=['PeachPuff','#FFDAB9'];c[c.length]=['Peru','#CD853F'];c[c.length]=['Pink','#FFC0CB'];c[c.length]=['Plum','#DDA0DD'];c[c.length]=['PowderBlue','#B0E0E6'];c[c.length]=['Purple','#800080'];c[c.length]=['Red','#FF0000'];c[c.length]=['RosyBrown','#BC8F8F'];c[c.length]=['RoyalBlue','#4169E1'];c[c.length]=['SaddleBrown','#8B4513'];c[c.length]=['Salmon','#FA8072'];c[c.length]=['SandyBrown','#F4A460'];c[c.length]=['SeaGreen','#2E8B57'];c[c.length]=['SeaShell','#FFF5EE'];c[c.length]=['Sienna','#A0522D'];c[c.length]=['Silver','#C0C0C0'];c[c.length]=['SkyBlue','#87CEEB'];c[c.length]=['SlateBlue','#6A5ACD'];c[c.length]=['SlateGray','#708090'];c[c.length]=['SlateGrey','#708090'];c[c.length]=['Snow','#FFFAFA'];c[c.length]=['SpringGreen','#00FF7F'];c[c.length]=['SteelBlue','#4682B4'];c[c.length]=['Tan','#D2B48C'];c[c.length]=['Teal','#008080'];c[c.length]=['Thistle','#D8BFD8'];c[c.length]=['Tomato','#FF6347'];c[c.length]=['Turquoise','#40E0D0'];c[c.length]=['Violet','#EE82EE'];c[c.length]=['Wheat','#F5DEB3'];c[c.length]=['White','#FFFFFF'];c[c.length]=['WhiteSmoke','#F5F5F5'];c[c.length]=['Yellow','#FFFF00'];c[c.length]=['YellowGreen','#9ACD32'];
return c;
}
    </script>

</head>
<body ms_positioning="GridLayout">
    <form id="Form1" method="post" runat="server">
        <table class="MainTable" height="100%" cellspacing="0" cellpadding="0" width="100%"
            align="center" border="0">
            <!-- MAIN HEADER -->
            <tr>
                <td class="MainHead">
                    <asp:Literal ID="MainTitleLtrl" runat="server"></asp:Literal>
                </td>
            </tr>
            <tr>
                <td>
                    <table width="100%" cellspacing="1" cellpadding="0" align="center" class="SubTable">
                        <tr class="HideRow">
                            <td class="MainTd">
                                <asp:TextBox ID="SelectedColTxt" runat="server"></asp:TextBox>
                            </td>
                            <td class="MainTd">
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" style="font-weight: bold">
                                Color Type
                            </td>
                            <td class="MainTd">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal"
                                    CssClass="RBList">
                                    <asp:ListItem Value="1" Text="Named Colors" Selected="true"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Web Colors"></asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td class="MainTd" colspan="2">
                                <div style="overflow: auto; height: 290px; background-color: gray">
                                    <asp:Table ID="Table1" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="SubTable">
                                    </asp:Table>
                                    <asp:Table ID="Table2" runat="server" Width="100%" BorderWidth="0" CellSpacing="1"
                                        CellPadding="0" CssClass="HideRow">
                                    </asp:Table>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="MainTD">
                                <label id="SelCorLab" class="SelColCss">
                                </label>
                                <label id="FocusedCorLab" class="SelColCss">
                                </label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <!-- MAIN FOOTER -->
            <tr>
                <td class="MainFoot">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 50px"
                        onclick="fnSpCloseWin()" onmouseout="this.className='ButCls'" type="button" value="Ok">
                    <input class="ButCls" onmouseover="this.className='ButOCls'" style="width: 60px"
                        onclick="fnCrCancel()" onmouseout="this.className='ButCls'" type="button" value="Cancel">
                </td>
            </tr>
        </table>
    </form>

    <script language="javascript">
 
 function SelCol(Col)
 {
    document.getElementById("SelCorLab").style .backgroundColor = Col
    document.getElementById("SelectedColTxt").value = Col;
 }
  	function fnCrGetCode(RowCnt)
	{ 	
      var KfLableVal=RowCnt	    	   
	  opener.SetColSelValues(KfLableVal)
	}

 	function fnCrCancel(){
		opener.SetColSelValues('')
		window.self.close()
	}
	
	//document.oncontextmenu=new Function("return false")
	function fnSpCloseWin(){
	    var SubVal = document.getElementById("SelectedColTxt").value
		if( SubVal=="")
		{
		    alert("Select Color")
		    return false;
		}
	    opener.SetColSelValues(SubVal)
		window.self.close()
	}
	LoadCol()
    </script>

</body>
</html>
