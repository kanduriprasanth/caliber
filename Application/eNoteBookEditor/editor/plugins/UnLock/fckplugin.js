// JScript File

var UnLock = function (name)
{

  this.Name = name;
}
var Text=""

UnLock.prototype.Execute = function(itemText, itemLabel) 
{
var SelType = FCK.EditorDocument.selection.type

if(SelType.toLowerCase()=="control")
{
    var SelectedBlock = FCK.Selection.GetSelectedElement();
    SelectedBlock.removeAttribute("contentEditable");
    SelectedBlock.style.color="black" 
    SelectedBlock.style.backgroundColor="white" 

}
else
{
    var Type = FCK.EditorDocument.selection.createRangeCollection()
    var sText = FCK.EditorDocument.selection.createRange();
    if (sText.text != "")
    {
      //  var NODE1 = FCK.Selection.tagName();
        var NODE=FCK.EditorDocument.createElement('span')
        NODE.id= Math.random()
        NODE.style.backgroundColor="white" 
        NODE.unselectable ="off" // U Woun't be able to select the span if this property is set
        NODE.contentEditable =true
        var Temp =sText.htmlText;
        var Temp1= Temp.Replace("contentEditable=false", "contentEditable=true")
        var Temp2 = Temp1.Replace("BACKGROUND-COLOR: gray", "BACKGROUND-COLOR:white")
        var Temp3 = Temp2.Replace("unselectable=\"on\"", "unselectable=\"off\"")
        NODE.innerHTML = Temp3;
        FCK.InsertHtml(NODE.outerHTML);
    }
    else
    {
        alert("Please select some text!");
    }         
    }
}

// Manage the plugin behavior
UnLock.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON or FCK_TRISTATE_DISABLED
}

UnLock.prototype.RefreshState = function() 
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}


// Register the command.
FCKCommands.RegisterCommand( 'UnLock' ,  new  UnLock('UnLock') ) ;

// Create the toolbar button.
var LockToolbar = function(tooltip,  style)
{
    this.CommandName   = 'UnLock';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['UnLock'].Path + 'UnLock.gif'
}
 
// Set the toolbar prototype.
LockToolbar.prototype = new  FCKToolbarButton( 'Un Lock', 'UnLock', 'Un Lock', null, false, true );

//LockToolbar.prototype = new  FCKDialogCommand('UnLock', 'UnLock'

// Label to appear in the FCK toolbar
LockToolbar.prototype.GetLabel  = function()
{
    return "Un Lock";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('UnLock' , new LockToolbar( 'Un Lock', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
