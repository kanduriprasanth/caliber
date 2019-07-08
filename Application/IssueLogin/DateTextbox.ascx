<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="DateTextbox.ascx.vb" Inherits="IssueLogin.DateTextbox" %>

    <asp:TextBox ID="DateTxt" runat="server"  CssClass="watermarkOn" Text="mm/dd/yyyy" AutoCompleteType="None" width="130px" Height="16px"></asp:TextBox>

<style type="text/css">
        .watermarkOn
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding:3px;
    border: 0px none;
    width: 130px;    
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat; 
    color: #C0C0C0;
	font-style: italic;
	
	}
	
	.RoundedTxt
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 11px;
    margin: 0px;
    padding: 3px;
    border: 0px none;
    width: 130px;    
    background-image:url('../IMAGES/textbg.png');   
    background-repeat:no-repeat;    
    
}
    
    </style>
