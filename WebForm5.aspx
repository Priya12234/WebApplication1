<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            name : <asp:TextBox ID="nametext" runat ="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="name can not be empty" ForeColor="#CC0000" ControlToValidate="nametext"></asp:RequiredFieldValidator>
            <br/>
            sem : <asp:TextBox ID="semtext" runat ="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="range is from 1 to 6" ControlToValidate="semtext" ForeColor="#CC0000"></asp:RangeValidator>
            <br/>
            branch : <asp:TextBox ID="branchtext" runat ="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="branch is required " ControlToValidate="branchtext" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br/>
            password : <asp:TextBox ID="passwordtext" runat ="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="password is required " ControlToValidate="passwordtext" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            <br/>
            confirm password : <asp:TextBox ID="confirmpasswordtext" runat ="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password does not match" ControlToCompare="passwordtext" ControlToValidate="confirmpasswordtext" ForeColor="#CC0000"></asp:CompareValidator>
            <br/>
            email : <asp:TextBox ID="emailtext" runat ="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="invalid Email" ControlToValidate="emailtext" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            <br/><br/>
            <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
