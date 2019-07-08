// JScript File

function CreateHtmlFiles(DataArr,ReturnFunction)
{
    var Values ='<XmlDS>';

    for(var k=0;k<DataArr.length;k++)
    {
        Values+= "<DataTable>";
        Values+= "<ColumnName>" + "SubTpltData" + k +"</ColumnName>";
        Values+= "<ColumnValue><![CDATA[" + DataArr[k] + "]]></ColumnValue>";
        Values+= "</DataTable>";
    }

    Values+= "</XmlDS>";

    var url="../eNoteBookEditor/GenTempHtmlFiles.aspx?RecordLog=1";

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
        reqXML.open("GET", url, true);
        reqXML.setRequestHeader("Content-Type", "text/xml");
        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
        reqXML.onreadystatechange = function()
        {
            if(reqXML.readyState==4)
            {
                var s=reqXML.responseText
                if(s !="")
                {
                    setTimeout(ReturnFunction + "('" + s + "')", 0);
                }
                reqXML =null
            }
        }
    }
    else
    {
     alert("Your browser does not support Ajax");
    }
}

//-----Creates Server sid Documents Based on the Data provided 

function CreateDocument(BodyData,HeaderData,FooterData,Type,Orientation)
{
    if(!Orientation)
        Orientation =1

    if (Type != "Print")
    {
        Type ="Preview"
    }
    var Values ='<XmlDS>';

    //Body Data
    Values+= "<DataTable>";
    Values+= "<ColumnName>" + "BodyData" +"</ColumnName>";
    Values+= "<ColumnValue><![CDATA[" + BodyData + "]]></ColumnValue>";
    Values+= "</DataTable>";

    //Header Data
    Values+= "<DataTable>";
    Values+= "<ColumnName>" + "HeaderData" +"</ColumnName>";
    Values+= "<ColumnValue><![CDATA[" + HeaderData + "]]></ColumnValue>";
    Values+= "</DataTable>";

    //Footer Data
    Values+= "<DataTable>";
    Values+= "<ColumnName>" + "FooterData" +"</ColumnName>";
    Values+= "<ColumnValue><![CDATA[" + FooterData + "]]></ColumnValue>";
    Values+= "</DataTable>";
              
    Values+= "</XmlDS>";
    
    var url="../eNoteBookEditor/GenTempHtmlFiles.aspx";

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
        reqXML.open("GET", url, true);
        reqXML.setRequestHeader("Content-Type", "text/xml");
        reqXML.send("<?xml version='1.0' encoding='UTF-8'?>" + Values);
        reqXML.onreadystatechange = function()
        {
            if(reqXML.readyState==4)
            {
                var s=reqXML.responseText
                if(s !="")
                {
                    var RetValArr = new Array()
                    RetValArr = s.split('#*#')
 
                    var body,header,footer;
                    body = RetValArr[0];
                    if (RetValArr[1]) 
                        header =RetValArr[1];
                    if (RetValArr[2])
                        footer =RetValArr[2];

                    var Httppath = footer.substring(0,footer.lastIndexOf('/'));
                    Httppath = Httppath.substring(0,Httppath.lastIndexOf('/'));
                    var TemplatePath = Httppath + "/CiprofloxacinTempalte.dot"

                     DocumentAccess(TemplatePath,body,header,footer,"Caliber",Type,Orientation)
                        //DeleteFiles(body,header,footer);
               }
                reqXML =null
            }
        }
    }
    else
    {
     alert("Your browser does not support Ajax");
    }
}


//-----Deletes files For "HtmlFiels" folder Based on the FileNames Provided

    var bodyPath,headerPath,footerPath
	function DeleteFiles(body,header,footer)
	{
	    bodyPath=ConvertUrl(body);
	    headerPath=ConvertUrl(header);
	    footerPath=ConvertUrl(footer);
	   // window.setTimeout("AjaxFnDeleteFiles()",5000)
	}
	function AjaxFnDeleteFiles()
	{
	    var FileNameList =""
        var BodyArr = new Array();BodyArr =bodyPath.split("/");
        var headerArr = new Array();headerArr =headerPath.split("/");
        var footerArr = new Array();footerArr =footerPath.split("/");
	    FileNameList = BodyArr[BodyArr.length -1]
	    FileNameList += "," + headerArr[headerArr.length -1]
	    FileNameList += "," + footerArr[footerArr.length -1]

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
                xmlhttp =null;
            }
        }
         var url="../eNoteBookEditor/DelTempHtmlFiles.aspx?FileNameList="+ FileNameList;
        xmlhttp.open("GET",url,true);
        xmlhttp.send(null);
	}
	
	
	