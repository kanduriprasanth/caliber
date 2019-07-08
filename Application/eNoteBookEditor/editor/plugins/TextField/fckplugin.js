// JScript File

var TextField = function (name)
{
    this.Name = name;
}
var Text=""

TextField.prototype.Execute = function(itemText, itemLabel) 
{
//    var TimeStamp =""
    
    var NODE=FCK.EditorDocument.createElement("span");
    NODE.className ="TextFieldCss";
    NODE.setAttribute ("calfeld","2")
    NODE.contentEditable =false;
    NODE.setAttribute("AccessKey","C")
    NODE.innerText = " ";
    FCK.InsertElement(NODE)
    FCK.id = Math.random()
    FCK.InsertHtml("&nbsp;")
}

// Manage the plugin behavior
TextField.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

TextField.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}


// Register the command.
FCKCommands.RegisterCommand( 'TextField' ,  new  TextField('TextField') ) ;

// Create the toolbar button.
var BindingFieldsToolbar = function(tooltip,  style)
{
    this.CommandName   = 'TextField';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['TextField'].Path + 'textgield.gif'
}
 
// Set the toolbar prototype.
BindingFieldsToolbar.prototype = new  FCKToolbarButton( 'TextField', 'TextField', 'TextField', null, false, true );


// Label to appear in the FCK toolbar
BindingFieldsToolbar.prototype.GetLabel  = function()
{
    return "Page Number";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('TextField' , new BindingFieldsToolbar( 'Text Field', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
