// JScript File

var Lock = function (name)
{
  this.Name = name;
}
var cnt=0
Lock.prototype.Execute = function(itemText, itemLabel) 
{

var SelType = FCK.EditorDocument.selection.type

if(SelType.toLowerCase()=="control")
{
    var SelectedBlock = FCK.Selection.GetSelectedElement();
    SelectedBlock.contentEditable =false;
    
   // SelectedBlock.style.color="black"; 
    SelectedBlock.style.backgroundColor="gray" 
}
else
{
 var sText = FCK.EditorDocument.selection.createRange();
 var Text =sText.htmlText;
    if (sText.text != "")
    {
    
    //var sText11 = FCK.EditorDocument.selection.createControlRange()
        //var NODE=FCK.EditorDocument.createElement('div')
        var NODE=FCK.InsertElement( 'div' ) ;
        NODE.id= Math.random()
        NODE.style.backgroundColor="gray" 
        NODE.style.color="black";
        NODE.style.display= "inline";
		NODE.style.width= "auto";
		
        NODE.unselectable ="on" // U Won't be able to select the span if this property is set
        NODE.contentEditable =false;
        NODE.innerHTML = Text;
       // FCK.InsertHtml(NODE.outerHTML);
    }
    else
    {
        alert("Please select some text!");
    }           
}
}
// Manage the plugin behavior
Lock.prototype.GetState = function()
{
    return FCK_TRISTATE_OFF; // FCK_TRISTATE_OFF or  FCK_TRISTATE_ON
}

// Register the command.
FCKCommands.RegisterCommand( 'Lock' ,  new  Lock('Lock') ) ;

// Create the toolbar button.
var LockToolbar = function(tooltip,  style)
{
    this.CommandName   = 'Lock';
    this.Label         = this.GetLabel();
    this.Tooltip       = tooltip?  tooltip : this.Label;
    this.Style         = style;  //FCK_TOOLBARITEM_ICONTEXT OR FCK_TOOLBARITEM_ONLYTEXT
    this.IconPath      =FCKPlugins.Items['Lock'].Path + 'lock.gif'
}
 
// Set the toolbar prototype.
LockToolbar.prototype = new  FCKToolbarButton( 'Lock', 'Lock', null, null, false, true );

//LockToolbar.prototype = new  FCKDialogCommand('Lock', 'Lock'

// Label to appear in the FCK toolbar
LockToolbar.prototype.GetLabel  = function()
{
    return "Lock";
}

//Register the combo with the FCKeditor
FCKToolbarItems.RegisterItem('Lock' , new LockToolbar( 'Lock', FCK_TOOLBARITEM_ONLYICON ) ) ; // FCK_TOOLBARITEM_ONLYICON or FCK_TOOLBARITEM_ONLYTEXT  or  FCK_TOOLBARITEM_ICONTEXT
