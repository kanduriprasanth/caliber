<cfsetting enablecfoutputonly="Yes">
<!---
 * This is the "File Uploader" for ColdFusion (all versions).
 *
--->

<cfset REQUEST.CFVersion = Left( SERVER.COLDFUSION.PRODUCTVERSION, Find( ",", SERVER.COLDFUSION.PRODUCTVERSION ) - 1 )>
<cfif REQUEST.CFVersion lte 5>
	<cfinclude template="cf5_upload.cfm">
<cfelse>
	<cfinclude template="cf_upload.cfm">
</cfif>
