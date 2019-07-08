// JScript File

var Preview = function (name)
{
  this.Name = name;
}
var Text=""

Preview.prototype.Execute = function(itemText, itemLabel) 
{
        if(MSWordInstalled() ==true)
        {
            //alert("MS Word Installed")
        }
        else
        {
            alert("MS Word Not Installed")
            return false;
        }

    ShowMask()
    var InstanceName  = FCK.Name;//window.parent.document.getElementById ("emaNyM").value
    var Body=CNB_GetEditorText(InstanceName)
    var Header = CNB_GetEditorText(InstanceName +"Header1")
    var Footer=CNB_GetEditorText(InstanceName +"Footer1")
   
    if (Header =="")
    {
        if(document.getElementById("xHeaderArea"))
        {
            Header = document.getElementById("xHeaderArea").innerHTML 
        }
    }
    if (Footer =="")
    {
        if(document.getElementById("xFooterArea"))
        {
            Footer = document.getElementById("xFooterArea").innerHTML 
        }
    }
    CNB_PrintPreviewDoc(Body,Header,Footer,"Preview")
}

// Manage the plugin behavior
Preview.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'Preview' ,  new  Preview('Preview') ) ;

// Create the toolbar button.
var PreviewToolbar = function(tooltip,  style)
{
    this.CommandName   = 'Preview';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      = 5 //FCKPlugins.Items['Preview'].Path + 'Preview.gif'
}

// Set the toolbar prototype.
PreviewToolbar.prototype = new  FCKToolbarButton( 'Preview', 'Preview', 'Preview', null, false, true );

// Label to appear in the FCK toolbar
PreviewToolbar.prototype.GetLabel  = function()
{
    return "Preview";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('Preview' , new PreviewToolbar( 'Preview', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
