<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication1.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Details Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <!-- View 1: Student Personal Info -->
            <asp:View ID="View1" runat="server">
                <h1>Student Personal Info</h1>
                <label>Name:</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Please Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
                <label>Gender:</label>
                <asp:RadioButton ID="rbMale" GroupName="Gender" runat="server" Text="Male" />
                <asp:RadioButton ID="rbFemale" GroupName="Gender" runat="server" Text="Female" />
                <br /><br />
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <br /><br />
                <label>Degree:</label>
                <asp:TextBox ID="txtDegree" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnNext1" runat="server" Text="Next" OnClick="btnNext1_Click" />
            </asp:View>

            <!-- View 2: Student Contact Info -->
            <asp:View ID="View2" runat="server">
                <h1>Student Contact Info</h1>
                <label>Email:</label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <label>
                Contact No:</label>
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
                <br /><br />
                <asp:Button ID="btnPrevious1" runat="server" Text="Previous" OnClick="btnPrevious1_Click" />
                <asp:Button ID="btnNext2" runat="server" Text="Next" OnClick="btnNext2_Click" />
            </asp:View>

            <!-- View 3: Summary -->
            <asp:View ID="View3" runat="server">
                <h1>Summary</h1>
                <p><b>Name:</b> <asp:Label ID="lblName" runat="server"></asp:Label></p>
                <p><b>Gender:</b> <asp:Label ID="lblGender" runat="server"></asp:Label></p>
                <p><b>Address:</b> <asp:Label ID="lblAddress" runat="server"></asp:Label></p>
                <p><b>Degree:</b> <asp:Label ID="lblDegree" runat="server"></asp:Label></p>
                <p><b>Email:</b> <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
                <p><b>Contact No:</b> <asp:Label ID="lblContact" runat="server"></asp:Label></p>
                <asp:Button ID="btnPrevious2" runat="server" Text="Previous" OnClick="btnPrevious2_Click" />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>