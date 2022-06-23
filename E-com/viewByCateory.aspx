<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewByCateory.aspx.cs" Inherits="E_com.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 172px;
        }
        .auto-style3 {
            width: 438px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="hlHome" runat="server" NavigateUrl="~/home.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ViewCart.aspx">ViewCart</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="viewByCategoryhyperlinj" runat="server" NavigateUrl="~/viewByCateory.aspx">List By Category</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="hlHome0" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Furniture</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlcategories" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Electronics</td>
                <td class="auto-style3">
                    <asp:CheckBoxList ID="catcheckBox" runat="server" OnSelectedIndexChanged="catcheckBox_SelectedIndexChanged">
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Camera</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Home Needs</td>
                <td class="auto-style3">
                    <asp:Button ID="orderBtn" runat="server" Text="Order" OnClick="orderBtn_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="messageLabel" runat="server" Text="lblMsg"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="iblproductcount" runat="server" Text="counter"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
