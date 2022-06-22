<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="E_com.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="134px" ImageUrl="~/images/logo.png" Width="324px" />
        </div>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="lbl1" runat="server" Text="Enter First Name :"></asp:Label>
                    <asp:TextBox ID="txtfirstname" runat="server" Height="16px" OnTextChanged="TextBox1_TextChanged" Width="340px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="First Name is REquired" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lbl2" runat="server" Text="Enter Last Name :"></asp:Label>
                    <asp:TextBox ID="txtlastname" runat="server" Height="16px" Width="340px"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="lastnamevalidator" runat="server" ControlToValidate="txtlastname" ErrorMessage="Required Last name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Email :
                    <asp:TextBox ID="txtemail" runat="server" Height="16px" TextMode="Email" Width="340px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="emailvalidator" runat="server" ControlToValidate="txtemail" ErrorMessage="EmaIL is not proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbl3" runat="server" Text="Enter Address :"></asp:Label>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="addressvalidator" runat="server" ControlToValidate="txtaddress" ErrorMessage="Required Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Enter Password :<asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="passwordvalidator" runat="server" BorderColor="Red" ControlToValidate="txtpassword" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Confirm Passwoed : <asp:TextBox ID="txtconirompassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="conformpasswordCompareValidator" runat="server" ControlToCompare="txtpassword" ControlToValidate="txtconirompassword" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="registerbtn" runat="server" Text="Register" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
