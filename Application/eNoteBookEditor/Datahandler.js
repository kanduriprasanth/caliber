
//-----------------------------------------------------------------------
//-----------------------------------------------------------------------

function addEvent(obj, evType, fn){
//var obj = document.getElementById (obj1)
 if (obj.addEventListener){
    obj.addEventListener(evType, fn, false);
    return true;
 } else if (obj.attachEvent){
    var r = obj.attachEvent("on"+evType, fn);
    return r;
 } else {
    return false;
 }
}

var AlradyCalled =0
function eBook_Handleunload()
{
    if(AlradyCalled ==0)
    {
        AlradyCalled =1
        if(document.getElementById ("xBodyArea"))
        {
            var Instance = document.body.all("emaNyM")
            var InstanceName =""
            var BodyData ,headerData ,FooterData 
            if(Instance.length)
            {
                for(var k=0;k<Instance.length;k++)
                {
                    InstanceName = Instance[k].value;
                    if(document.body.all("xBodyArea")(k) !=null)
                    {
                        BodyData = document.body.all("xBodyArea")(k).innerHTML;
                        document.body.all(InstanceName).value= BodyData;
                        if(document.body.all("xHeaderArea")(k) !=null)
                        {
                            headerData =document.body.all("xHeaderArea")(k).innerHTML;
                            document.body.all(InstanceName + "Header").value = headerData
                        }
                        if(document.body.all("xFooterArea")(k) !=null)
                        {
                            FooterData = document.body.all("xFooterArea")(k).innerHTML;
                            document.body.all(InstanceName + "Footer").value = FooterData
                        }
                    }
                }
            }
            else
            {
                InstanceName =Instance.value
                if(document.getElementById ("xBodyArea") !=null)
                {
                    BodyData = document.getElementById ("xBodyArea").innerHTML;
                    document.getElementById (InstanceName).value= BodyData;
                    if(document.getElementById ("xHeaderArea") !=null)
                    {
                        headerData =document.getElementById ("xHeaderArea").innerHTML;
                        document.getElementById (InstanceName + "Header").value = headerData
                    }
                    if(document.getElementById("xFooterArea") !=null)
                    {
                        FooterData = document.getElementById ("xFooterArea").innerHTML;
                        document.getElementById (InstanceName + "Footer").value = FooterData
                    }
                }
            }
        }
    }
}

addEvent(window.document.forms(0),"submit",eBook_Handleunload)

