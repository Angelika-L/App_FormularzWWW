<%@ Control Language="C#" AutoEventWireup="true" CodeFile="wyszukiwanieTytulu.ascx.cs" Inherits="wyszukiwanieTytulu" %>
<p>
    &nbsp;</p>
<p>
    podaj fragment tytulu:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    &nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="Red" ControlToValidate="TextBox1" ErrorMessage="Pole wymagane" style="color: #FF3300"></asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ok" />
</p>

