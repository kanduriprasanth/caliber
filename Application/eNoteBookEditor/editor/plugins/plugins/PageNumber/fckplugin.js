// JScript File

var PageNumber = function (name)
{

  this.Name = name;
}
var Text=""

PageNumber.prototype.Execute = function(itemText, itemLabel) 
{
    var TimeStamp =""
    //Open Office based Page No
    TimeStamp += '<div class="DateTimeCss"  contenteditable =false >'
    TimeStamp += '&nbsp;&nbsp;<SDFIELD TYPE=PAGE SUBTYPE=RANDOM FORMAT=PAGE></SDFIELD>'
          TimeStamp +=  '&nbsp;of&nbsp;<SDFIELD TYPE=DOCSTAT SUBTYPE=PAGE FORMAT=PAGE></SDFIELD>&nbsp;&nbsp;'
     TimeStamp += '</div>'
    
    //Ms Office Based Page No
    TimeStamp = "<span style='mso-field-code:  \"  PAGE \" '><span style='mso-no-proof:yes'>1</span></span> / <span style='mso-field-code: \" NUMPAGES \" '><span style='mso-no-proof:yes'>1</span></span>"

    FCK.InsertHtml(TimeStamp);
}

// Manage the plugin behavior
PageNumber.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

PageNumber.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}


// Register the command.
FCKCommands.RegisterCommand( 'PageNumber' ,  new  PageNumber('PageNumber') ) ;

// Create the toolbar button.
var BindingFieldsToolbar = function(tooltip,  style)
{
    this.CommandName   = 'PageNumber';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['PageNumber'].Path + 'pagenumber.gif'
}
 
// Set the toolbar prototype.
BindingFieldsToolbar.prototype = new  FCKToolbarButton( 'PageNumber', 'PageNumber', 'PageNumber', null, false, true );


// Label to appear in the FCK toolbar
BindingFieldsToolbar.prototype.GetLabel  = function()
{
    return "Page Number";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('PageNumber' , new BindingFieldsToolbar( 'Page Number', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
