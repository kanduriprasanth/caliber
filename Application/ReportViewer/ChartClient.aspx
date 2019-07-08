<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ChartClient.aspx.vb" Inherits="ReportViewer.ChartClient" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="Scripts/jquery-1.6.3.min.js" type="text/javascript"></script>
 <script language="javascript"  >

     function AjaxLoadPage() {
     
     var paramString= MakeParameterList(["userControlName", "/CaliberChart.ascx", "DisplayFlag", "1"])
        
         $.ajax({
             type: "POST",
             url: "ChartRender.aspx/ChartHTML",
             data: paramString,
             contentType: "application/json; charset=utf-8",
             dataType: "json",
             success: function (response) {
                 $('#RSSContent').removeClass('loading');
                 $('#RSSContent').html(response.d);
                 },
             failure: function (msg) {
                 $('#RSSContent').html(msg);
             }
         });
     }


     


         function MakeParameterList(paramArray) {

         //-------------------------------------------------------------------------+

         // Create list of parameters in the form:                                  |

         // {"paramName1":"paramValue1","paramName2":"paramValue2"}                 |

         //-------------------------------------------------------------------------+

         var paramList = '';

         if (paramArray.length > 0) {

             for (var i = 0; i < paramArray.length; i += 2) {

                 if (paramList.length > 0) paramList += ',';

                 paramList += '"' + paramArray[i] + '":"' + paramArray[i + 1] + '"';

             }

         }

         paramList = "{" + paramList + "}";

         return paramList;

     }







     function AjaxLoadPage3() {
      
         var ParameString = ""

         var ChartHeight = 400
         ParameString += MakeParameterList2(["ChartHeight", ChartHeight])

         var ChartWidht = 700
         ParameString += ',';
         ParameString += MakeParameterList2(["ChartWidht", ChartWidht])

         var ChartTitle = "DEMO"
         ChartTitle = ChartTitle.replace(",", " ").replace(":", " ")
         ParameString += ',';
         ParameString += MakeParameterList2(["ChartTitle", ChartTitle])

         var SeriesNames = "A#*#B"
         SeriesNames = SeriesNames.replace(",", " ").replace(":", " ")
         ParameString += ',';
         ParameString += MakeParameterList2(["SeriesNames", SeriesNames])

         var ChartTypeNames = "Column"
         ParameString += ',';
         ParameString += MakeParameterList2(["ChartTypeNames", ChartTypeNames])


         var X_AxisTitle = "X Axis"
         X_AxisTitle = X_AxisTitle.replace(",", " ").replace(":'", " ")
         ParameString += ',';
         ParameString += MakeParameterList2(["X_AxisTitle", X_AxisTitle])

         var Y_AxisTitle = "Y Axis"
         Y_AxisTitle = Y_AxisTitle.replace(",", " ").replace(":'", " ")
         ParameString += ',';
         ParameString += MakeParameterList2(["Y_AxisTitle", Y_AxisTitle])


         var IsChart3D = 1
         ParameString += ',';
         ParameString += MakeParameterList2(["IsChart3D", IsChart3D])

         var ChartInclination = 20
         ParameString += ',';
         ParameString += MakeParameterList2(["ChartInclination", ChartInclination])

         var DrillDownCnt = 1
         ParameString += ',';
         ParameString += MakeParameterList2(["DrillDownCnt", DrillDownCnt])

         var ThisGroupCnt = 2
         ParameString += ',';
         ParameString += MakeParameterList2(["ThisGroupCnt", ThisGroupCnt])


         var TrendCount = 1
         ParameString += ',';
         ParameString += MakeParameterList2(["TrendCount", TrendCount])

         var IsPereto = 0
         ParameString += ',';
         ParameString += MakeParameterList2(["IsPereto", IsPereto])

         var Pereto_Y = 1
         ParameString += ',';
         ParameString += MakeParameterList2(["Pereto_Y", Pereto_Y])

         var UnitType = 2
         ParameString += ',';
         ParameString += MakeParameterList2(["UnitType", UnitType])

         var XY_XMLString

         XY_XMLString = ""
         XY_XMLString += "<Ds>"
         XY_XMLString += "<TB>"
         XY_XMLString += "<XI1>1.1</XI1>"
         XY_XMLString += "<XV1>D1.1</XV1>"
         XY_XMLString += "<XI2>1.2</XI2>"
         XY_XMLString += "<XV2>D1.2</XV2>"
         XY_XMLString += "<Y1>5</Y1>"
         XY_XMLString += "<Y2>10</Y2>"
         XY_XMLString += "</TB>"

         for (i = 2; i < 20; i++) { 
         XY_XMLString += "<TB>"
         XY_XMLString += "<XI1>" +  i + "</XI1>"
         XY_XMLString += "<XV1>D" +  i + "</XV1>"
         XY_XMLString += "<XI2>" +  i + ".2</XI2>"
         XY_XMLString += "<XV2>D" +  i + ".2</XV2>"
         XY_XMLString += "<Y1>" + Math.random(100) + "</Y1>"
         XY_XMLString += "<Y2>" + Math.random(78) + "</Y2>"
         XY_XMLString += "</TB>"
         }

         XY_XMLString += "</Ds>"

         XY_XMLString = XY_XMLString.replace(",", " ").replace(":'", " ")

         ParameString += ',';
         ParameString += MakeParameterList2(["XY_XMLString", XY_XMLString])

        
         ParameString = "{" + ParameString + "}";

         //http://localhost/CaliberReportService/ReportViewer/
         // alert(ParameString)
         debugger
        // http: //localhost:55744/Reportviewer
        var url2=  "http:" + "//" + "localhost:55744/Reportviewer/" + "ChartRender.aspx" + "/ChartHTML2"
   //var url2 = "http:" + "//" + "localhost/CaliberReportService/ReportViewer/" + "ChartRender.aspx" + "/ChartHTML2"
       //  var url2 =  "ChartRender.aspx" + "/ChartHTML2"
          
         $.ajax({
             type: "POST",
             url: url2 ,
             data: ParameString,
             contentType: "application/json; charset=utf-8",
             crossDomain: true,
             dataType: "jsonp",
             success: function (response) {
                 $('#RSSContent').removeClass('loading');
                 $('#RSSContent').html(response.d);
             },
             failure: function (msg) {
                 $('#RSSContent').html(msg);
             }
         });
     }

     function fnMouseOver(indexval) {
          document.body.style.cursor = 'pointer'
        
 }
 function fnMouseOut(indexval) {
     document.body.style.cursor = 'default'
 }


     function MakeParameterList2(paramArray) {

         //-------------------------------------------------------------------------+

         // Create list of parameters in the form:                                  |

         // {"paramName1":"paramValue1","paramName2":"paramValue2"}                 |

         //-------------------------------------------------------------------------+

         var paramList = '';

         if (paramArray.length > 0) {

             for (var i = 0; i < paramArray.length; i += 2) {

                 if (paramList.length > 0) paramList += ',';

                 paramList += '"' + paramArray[i] + '":"' + paramArray[i + 1] + '"';

             }

         }

       

         return paramList;

     }


     function fnDrillDown(a, b, c, d, e) {
    alert(a)

    }
 </script>

 
</head>
<body >
    <form id="form1" runat="server">
     
   <div id="RSSBlock">
<div class="loading" id="RSSContent"></div>
<div class="loading" id="RSSContentTxt"></div>

</div> 
      
    </form>
    <input id="Button1" type="button" value="button" onclick=AjaxLoadPage() />
        <input id="Button2" type="button" value="button-2" onclick=AjaxLoadPage3() />


</body>
</html>

