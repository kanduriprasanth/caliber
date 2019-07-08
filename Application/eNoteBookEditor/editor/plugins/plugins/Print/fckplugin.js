// JScript File

var Print = function (name)
{
  this.Name = name;
}
var Text=""

Print.prototype.Execute = function(itemText, itemLabel) 
{
    if(IsMSWordInstalled() ==false)
    {
        alert("Ms Word Not Installed!")
        return;
    }

     ShowMask()
    var InstanceName  =FCK.Name; //window.parent.document.getElementById ("emaNyM").value
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
            Header = document.getElementById("xFooterArea").innerHTML 
        }
    }
    CNB_PrintPreviewDoc(Body,Header,Footer,"Print")
 }

// Manage the plugin behavior
Print.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'Print' ,  new  Print('Print') ) ;

// Create the toolbar button.
var PrintToolbar = function(tooltip,  style)
{
    this.CommandName   = 'Print';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      = 12 //FCKPlugins.Items['Print'].Path + 'printer.gif'
}

// Set the toolbar prototype.
PrintToolbar.prototype = new  FCKToolbarButton( 'Print', 'Print', 'Print', null, false, true );

// Label to appear in the FCK toolbar
PrintToolbar.prototype.GetLabel  = function()
{
    return "Print";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('Print' , new PrintToolbar( 'Print', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
