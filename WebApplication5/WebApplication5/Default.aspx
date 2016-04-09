<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MFNCheckOut._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>CHECKOUT PAGE</h1>
    </div>

    <div class="row">
       
        <!-- 
            city = "Johnstown",
            country_code = "US",
            line1 = "52 N Main ST",
            postal_code = "43210",
            state = "OH"
        },
            cvv2 = "874",
            expire_month = 11,
            expire_year = 2018,
            first_name = "Joe",
            last_name = "Shopper",
            number = "4877274905927862",
            type = "visa"
        -->

         <div class="col-md-3">
            <h2>Payment Information</h2>
             <p>Please Enter First Name: </p>
             <asp:TextBox ID="first_name" runat="server" Text="Joe"></asp:TextBox>
             <p>Please Enter Last Name: </p>
             <asp:TextBox ID="last_name" runat="server" Text="Shopper"></asp:TextBox>
             <p>Please Enter Country: </p>
             <asp:DropDownList ID="country_code" runat="server">
                 <asp:ListItem Value="US">United States</asp:ListItem>
                 <asp:ListItem Value="CA">Canada</asp:ListItem>
             </asp:DropDownList>
             <p>Please Enter Street Address: </p>
             <asp:TextBox ID="address" runat="server" Text="52 N Main ST"></asp:TextBox>
             <p>Please Enter City: </p>
             <asp:TextBox ID="city" runat="server" Text="Johnstown"></asp:TextBox>
             <p>Please Enter Zip Code: </p>
             <asp:TextBox ID="postal_code" runat="server" Text="43210"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="postal_code" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             <p>Please Enter State: </p>
             <asp:TextBox ID="state" runat="server" Text="OH"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <p>Please Enter Card Type: </p>
            <asp:DropDownList ID="DropDownList2" runat="server">
                 <asp:ListItem Value="visa">visa</asp:ListItem>
                 <asp:ListItem Value="mastercard">Master Card</asp:ListItem>
             </asp:DropDownList>

            <p>Creadit Card Number: </p>
             <asp:TextBox ID="card_number" runat="server" Text="4877274905927862"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="card_number" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             
            <p>cvv: </p>
             <asp:TextBox ID="cvv2" runat="server" Text="874"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="cvv2" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             
            <p>Expiration Month: </p>
             <asp:TextBox ID="ex_month" runat="server" Text="11"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="ex_month" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             
            <p>Expiration Year: </p>
             <asp:TextBox ID="ex_year" runat="server" Text="2018"></asp:TextBox>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="ex_year" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             
        </div>

        <div class="col-md-5">
            <asp:Button ID="Button1" runat="server" Text="Confirm Payment" OnClick="Button1_Click" />
            
        </div>
        
    
    </div>

</asp:Content>
