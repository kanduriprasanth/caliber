﻿/*
 * FCKNamedCommand Class: represents an internal browser command.
 */

var FCKNamedCommand = function( commandName )
{
	this.Name = commandName ;
}

FCKNamedCommand.prototype.Execute = function()
{
	FCK.ExecuteNamedCommand( this.Name ) ;
}

FCKNamedCommand.prototype.GetState = function()
{
	if ( FCK.EditMode != FCK_EDITMODE_WYSIWYG )
		return FCK_TRISTATE_DISABLED ;
	return FCK.GetNamedCommandState( this.Name ) ;
}
