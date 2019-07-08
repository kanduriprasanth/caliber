<%@ Page Language="vb" AutoEventWireup="false" Codebehind="AttachEditableDocs.aspx.vb"
    Inherits="CAPAWORKS.AttachEditableDocs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head runat="server">
    <title></title>
    <meta name="GENERATOR" content="Microsoft Visual Studio .NET 7.1">
    <meta name="CODE_LANGUAGE" content="Visual Basic .NET 7.1">
    <meta name="vs_defaultClientScript" content="JavaScript">
    <link rel="stylesheet" href="../TRIMS.css">

    <script language="javascript" src="../JScript/Common2.js"></script>
    <script language="javascript" src="../JScript/jquery.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label id="Lable1">
                Select Document
            </label>
            <input type="button" id="AEDPopUpBtn" onclick="OpenOfficeEditableDocPopUp()" title="Click Here"
                class='RsnPUP' tabindex="3" />
            <asp:Label runat="server" ID="UniqueCodeLbl"></asp:Label>
            <asp:TextBox ID="IndexIdTxt" runat="server" CssClass="HideRow"></asp:TextBox>
            <asp:TextBox ID="IndexIdRefTxt" runat="server" CssClass="HideRow"></asp:TextBox>
            <br />
            <asp:Table ID="DocTab" runat="server" CssClass="SubTable" Width="60%">

            </asp:Table>
        </div>
    </form>
</body>

<script language=javascript >
    
    function CallOfficeEditableDocPopUp(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam)
    {
        var pageURL = "AttachEditableDocsPopup.aspx?RType=" + RepositoyTypeId + "&FixedType=" + FixedType + "&SourceTypeId=" + SourceTypeId + "&DocSourceId=" + SourceId + "&PlantID=" + PlantID + "&UParam=" + UParam;
        
        var winHeight =450 //(screen.availHeight/100)*80; //80% of the screen height
        var winWidth = (screen.availWidth/100)*60;   //60% of the screen width

        var SpWinObj = window.open(pageURL,'DMSPopUp',"height="+winHeight+",width="+winWidth+",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=50,left=50");
        if(SpWinObj.opener == null) SpWinObj.opener=self;
        SpWinObj.focus();
    }
    
    function OpenOfficeEditableDocPopUp(UParam)
    {
        var UParam = "";
        var RepositoyTypeId =3;   // Repository Type
        var SourceTypeId =4;   // SourceType Id
        var SourceId =0;   // Source Id
        var PlantID ="<%=Session("PlantID")%>";
        var FixedType = 0;// 1: for loading documents of current type. 0: for selection based searching

        CallOfficeEditableDocPopUp(RepositoyTypeId,SourceTypeId,SourceId,PlantID,FixedType,UParam);

    }

    function Ret_OfficeEditableDocPopUp(DocId,DocCode,DocDesc,UParam)
    {
        document.getElementById("DocumentIdTxt").value= DocId;
        document.getElementById("DocumentNameLbl").innerHTML = document.getElementById("DocumentNameTxt").value = DocCode;
    }

    function OkRet_OfficeEditableDocPopUp(UParam)
    {
        
    }
    
    var UniqueCodeLbl=""
    var IndexId=""
    var IndexIdRef=""
    function GetValues(UniqueCode, IndexId, IndexIdRef, DocTitle) {
        UniqueCodeLbl=UniqueCodeLbl + "," + UniqueCode
        IndexId=IndexId + "," + IndexId
        IndexIdRef=IndexIdRef + "," +IndexIdRef
        
        $('#IndexIdTxt').val(IndexId)
        $('#UniqueCodeLbl').html(UniqueCodeLbl)
        $('#IndexIdRefTxt').val(IndexIdRef)
    }

    </script>


<script type="text/javascript">

   
    function FnOpenAEDPopup(RepoTypeId,SourceTypeId,SourceId) {
    
        var pageURL = "AttachEditableDocsPopup.aspx?RepoTypeId=" + RepoTypeId + "&SourceTypeId=" + SourceTypeId + "&SourceId" + SourceId
        SpWinObj = window.open(pageURL, 'SpecCodes', "height=450,width=600,toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=no,top=50,left=50");
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }
      
   

    function FnopenAEDApp(r) {
        var IndexId=$('#IndexId'+ r).html();
        var EditRest=$('#EditPerticulars'+ r).html();
        var DocTtl=$('#DocTitle'+ r).html();
        var Ucode=$('#UniqueCode'+ r).html();
        var Desc=$('#Desc'+ r).html();
        var UserId =$('#InitBy'+ r).html(); 

        var pageURL = "AttachEditableDocReg.aspx?IndexId=" + IndexId + "&Flag=" + 2 + "&EditRest=" + EditRest + "&DocTtl=" + DocTtl + "&Ucode=" + Ucode + "&UserId=" + UserId + "&Desc=" + Desc
        var yval = screen.availHeight; var xval = screen.availWidth;
        var features = 'height=' + yval + ',width=' + xval + ',toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=0,left=0';
        var SpWinObj = window.open(pageURL, 'DMSPreview', features);
        if (SpWinObj.opener == null)
        SpWinObj.opener = self;
        SpWinObj.focus();
    }
     
       
</script>
<script type="text/javascript">

    function ShowComparisionofDoc(CatalogId, RefCatalogId) {
         var pageURL = "ComparisionOfDocuments.aspx?CatalogId=" + CatalogId + "&RefCatalogId=" + RefCatalogId;
         var yval = screen.availHeight; var xval = screen.availWidth;
         var features = 'height=' + yval + ',width=' + xval + ',toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=0,left=0';
         var SpWinObj = window.open(pageURL, 'DMSPreview', features);
         if (SpWinObj.opener == null)
             SpWinObj.opener = self;
         SpWinObj.focus();
    }
     
    function DocPreview(CatalogId) {

        var yval = screen.availHeight; var xval = screen.availWidth;

        var pageURL = "../DMSManagement/ViewOficeDocument.aspx?DocId=" + CatalogId
        SpWinObj = window.open(pageURL, 'DMSPopUp', "height=" + yval + ",width=" + xval + ",toolbar=no,resizable=yes,menubar=no,status=no,scrollbars=yes,top=1,left=1");
        if (SpWinObj.opener == null) SpWinObj.opener = self;
        SpWinObj.focus();
    }

     
</script>

</html>
