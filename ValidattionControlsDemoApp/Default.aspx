<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidattionControlsDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script> // custom validator를 사용하려면, javascript에 function을 만들고 이 function을 validator의 속성에 넣어줘야 함
        function ValidateName(src, args) { // src : reference to the textBox(tag), args : value of textBox(tag)
            if (args.Value.length < 8 || args.Value.length > 15) {
                args.IsValid = false;
            } else args.IsValid = true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div aria-atomic="True" aria-multiline="False">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
            <asp:Label ID="Label1" runat="server" Text="First Name: "></asp:Label>
            <asp:TextBox ID="txtFirstNAme" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstNAme" ErrorMessage="Plz provide first name" SetFocusOnError="True" ToolTip="Plz provide first name">Required</asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Plz provide last name" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Education:
            <asp:DropDownList ID="ddlEducation" runat="server">
                <asp:ListItem Value="-1">(Select One)</asp:ListItem>
                <asp:ListItem Value="0">Under Graduate</asp:ListItem>
                <asp:ListItem Value="1">Graduate</asp:ListItem>
                <asp:ListItem Value="2">Post Graduate</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlEducation" ErrorMessage="Plz select education" InitialValue="-1" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Password:
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPassword" ErrorMessage="Plz provide password" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Confirm Password:
            <asp:TextBox ID="txtConfirmpassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmpassword" Display="Dynamic" ErrorMessage="Plz ensure that the value in password and confirm password are same" SetFocusOnError="True">Invalid</asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtConfirmpassword" ErrorMessage="Plz provide confirm password" SetFocusOnError="True" Display="Dynamic">Required</asp:RequiredFieldValidator>
            <br />
            <br />
            Age:
            <asp:TextBox ID="txtAge" runat="server" Height="19px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtAge" ErrorMessage="Age cannot be less than 18" Operator="GreaterThan" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
            <br />
            <br />
            Range:
            <asp:TextBox ID="txtRange" runat="server" Height="19px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtRange" ErrorMessage="Age cannot be less thaan 18 and more than 50" MaximumValue="50" MinimumValue="18" Type="Integer">Age cannot be less thaan 18 and more than 50</asp:RangeValidator>
            <br />
            <br />
            Annual Earnings:
            <asp:TextBox ID="txtAnnualEarnings" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtAnnualEarnings" ErrorMessage="Plz enter vbalid Annual Earnings" Operator="DataTypeCheck" Type="Currency">Invalid value</asp:CompareValidator>
            <br />
            <br />
            Date of Graduation:
            <asp:TextBox ID="txtGraduationDate" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtAnnualEarnings" ErrorMessage="Invalid value for graduate" Operator="DataTypeCheck" Type="Currency">Invalid value for graduate</asp:CompareValidator>
            <br />
            <br />
            Email ID:
            <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmailId" ErrorMessage="Plz enter valid email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Plz enter valid email Id</asp:RegularExpressionValidator>
            <br />
            <br />
            Username:
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="cvUsername" runat="server" ClientValidationFunction="ValidateName" ControlToValidate="txtUsername" ErrorMessage="Name must b e between 9 and 10 chars">Invalid</asp:CustomValidator>
            <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
        </div>
    </form>
</body>
</html>
