<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Strona.aspx.cs" Inherits="Strona" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    podajk imie&nbsp;
        <asp:TextBox ID="TextBoxl" runat="server" ForeColor="Red"></asp:TextBox>
            &nbsp;i nazwisko
        <input id="Text1" type="text" />
        <br/>
         <br/>
        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        <br />
        <br />
        <br />
        <br />
        Wybierz date :<br />
&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="400px">
            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
            <DayStyle Width="14%" />
            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
            <TodayDayStyle BackColor="#CCCC99" />
        </asp:Calendar>
        <asp:Label ID="Label2" runat="server" Text="podana data"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="pierwsze zaladowanie strony: "></asp:Label>
        <br />
        <asp:Label ID="Label4" runat="server" Text="przeladowanie strony : "></asp:Label>

        <br />
    </div>
    </form>
</body>
</html>
