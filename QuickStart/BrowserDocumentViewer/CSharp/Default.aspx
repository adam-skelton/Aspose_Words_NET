<%@ OutputCache VaryByParam="none" Duration="300" Location="None" %>

<%@ Page Language="c#" CodeBehind="Default.aspx.cs" AutoEventWireup="false" Inherits="Aspose.Words.DocumentViewer._Default"
    EnableViewState="True" %>

<html dir="ltr" xmlns:mshelp="http://msdn.microsoft.com/mshelp">
<head>
    <title>Flash Document Viewer - Aspose.Words Examples</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema" />
    <link href="aspose.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="../swfobject.js"></script>

    <script type="text/javascript">
        function setFocusOnFlash() {
            var fl = document.getElementById("docViewer");
            if (fl) { fl.focus(); }
        }
        
        function isObject(targetID) {
            var isFound = false;
            var el = document.getElementById(targetID);
            if (el && (el.nodeName === "OBJECT" || el.nodeName === "EMBED")) {
                isFound = true;
            }
            return isFound;
        }

        function replaceSwfWithEmptyDiv(targetID) {
            var el = document.getElementById(targetID);
            if (el) {
                var div = document.createElement("div");
                el.parentNode.insertBefore(div, el);

                swfobject.removeSWF(targetID);
                div.setAttribute("id", targetID);
            }
        }

        function removeExistingViewer() {
            if (isObject("docViewer")) {
                replaceSwfWithEmptyDiv(targetID);
                var div = document.getElementById("loadingMessagePanel");
                div.style.visibility = "visible";
            }
        }

        function loadSWF(name) {
            swfobject.embedSWF("./Data/" + name, "docViewer", "100%", "100%", "10");
            swfobject.addDomLoadEvent(setFocusOnFlash); 
        }

        window.onload = function() {
            var meetsMinimumFlashRequirement = swfobject.hasFlashPlayerVersion("10");
            if (!meetsMinimumFlashRequirement) {
                var div = document.getElementById("flashVersionMessage");
                if (div) {
                    div.style.visibility = "visible";
                }
            }
        }
    </script>

</head>
<body>
    <form id="Default" method="post" runat="server">
    <div>
    </div>
    <p class="i1">
        This example demonstrates the <strong>Aspose.Words Flash Viewer</strong>!</p>
    <p class="i1">
        When a document is selected it is rendered in memory and the pages exported along with a built-in flash viewer to SWF format. The output viewer is embedded is embedded in this page.</p>
    <p class="i1">
        As with all Aspose examples, no OLE automation is used, all work is performed by
        Aspose.Words without Microsoft Word installed on the web server.</p>
    <br />
    <table border="0" cellspacing="0" cellpadding="2">
        <tbody>
            <tr>
                <td>
                    <p class="i1">
                        <strong>Select a pre-made template to view: </strong>
                        <br />
                        <asp:RadioButtonList ID="TemplateRadio" runat="server" Height="40px" Width="584px"
                            Font-Size="8pt" Font-Names="Verdana" BorderStyle="None" BorderWidth="0px" OnSelectedIndexChanged="TemplateRadio_SelectedIndexChanged"
                            AutoPostBack="true">
                            <asp:ListItem Value="Sample1.doc">Sample1.doc</asp:ListItem>
                            <asp:ListItem Value="Sample2.odt">Sample2.odt</asp:ListItem>
                            <asp:ListItem Value="Sample3.html">Sample3.html</asp:ListItem>
                        </asp:RadioButtonList>
                    </p>
                </td>
                <td>
                    <p class="i1">
                        <strong>Upload your own document:</strong></p>
                    <table style="border-style: none; border: none; border-color: white" cellspacing="0"
                        cellpadding="2">
                        <tr>
                            <td>
                                <asp:Label ID="lblFile" runat="server" Font-Bold="True">Word document:</asp:Label>
                                <input id="filMyFile" type="file" runat="server" name="filMyFile" />&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="SubmitBtn" runat="server" Text="Submit"></asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </tbody>
    </table>
    <br />
    <div id="docViewer">
    </div>
    <div id="flashVersionMessage" style="visibility: hidden">
        <p>
            <span style="color: red">This viewer requires Adobe Flash Player 10 or higher and Javascript
                enabled.</span><br />
            <span style="color: red">Try downloading the latest version of <a href="http://www.adobe.com/support/flashplayer/downloads.html">
                Adobe Flash Player</a> and trying again.</span></p>
    </div>
    </form>
</body>
</html>
