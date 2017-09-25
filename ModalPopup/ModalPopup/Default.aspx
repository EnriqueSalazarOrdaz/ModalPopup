<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ModalPopup._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .ButtonRightBottom
        {
            position:absolute;
            right:20px;
            bottom:20px;
        }
        .Background
        {
            background-color: Black;
            filter: alpha(opacity=70);
            opacity: 0.7;
        }
        .Popup
        {
            background-color: #FFFFFF;
            padding-top: 10px;
            padding-left: 10px;
            width: 350px;
            height: 300px;
        }
    </style>
</head>
<body  >
    <form id="form1" runat="server" >
    <div>
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>        
        <asp:Button ID="BtnClient" runat="server" Text="Launch Modal Popup" />
        <asp:Panel ID="PnlModal" runat="server" CssClass="Popup">
            Test Menssage in Popup
            <br />
            <asp:Button ID="BtnAccept" runat="server" Text="Accept" CssClass="ButtonRightBottom" />
        </asp:Panel>
        <ajaxToolkit:ModalPopupExtender ID="mpe" TargetControlID="BtnClient" PopupControlID="PnlModal" OkControlID="BtnAccept" runat="server" BackgroundCssClass="Background" />
    </div>
    </form>
</body>
</html>
