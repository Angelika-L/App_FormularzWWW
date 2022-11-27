<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rejestracja.aspx.cs" Inherits="rejestracja" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 68px;
        }
        .auto-style2 {
            height: 31px;
        }
        .auto-style3 {
            width: 68px;
            height: 31px;
        }
        .auto-style4 {
            height: 28px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="View1" runat="server">
                <table align="center">
                    <tr>
                        <td>imie: </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>nick:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>Wybierz cos</asp:ListItem>
                                <asp:ListItem Value="Student">Student PJATK</asp:ListItem>
                                <asp:ListItem Value="Gosc">Gosc</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table align="center" cellpadding="3" cellspacing="3">
                    <tr>
                        <td>Imie: </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="* Podaj imie" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Nick:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="* Podaj nick" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Nazwisko :</td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="* podaj nazwisko" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>E-Mail::</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="* podaj e-mail" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="bledny adres e-mail" ForeColor="#33CCFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">@!!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Login</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="* podaj Login" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>haslo:</td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox8" ErrorMessage="* podaj haslo" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Powtorz haslo:</td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox9" ErrorMessage="* powtorz haslo" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox8" ControlToValidate="TextBox9" ErrorMessage="Bledne haslo - popraw" ForeColor="#009933">!!</asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="OK" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Przejscie" />
                            <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Wyczysc" ValidationGroup="inna2" />
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Bledy:" ShowMessageBox="True" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table align="center" cellpadding="3" cellspacing="3">
                    <tr>
                        <td class="auto-style2">Imie:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="podaj imie">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Nick:</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="podaj nick">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" colspan="3">Dane statystyczne:</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Rok urodzenia:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3">
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox12" ErrorMessage="musi byc liczba" ForeColor="Red" Operator="DataTypeCheck" Type="Integer">!!!</asp:CompareValidator>
                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox12" ErrorMessage="niepoprany rok urodzenia!" ForeColor="#6699FF" MaximumValue="2017" MinimumValue="1910" Type="Integer">!!!</asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>Czy rejestracja:</td>
                        <td>
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="tak / nie" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Nazwisko:</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td>E-Mail:</td>
                        <td>
                            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        </td>
                        <td class="auto-style1">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox14" ErrorMessage="Bledny e-mail!!" ForeColor="#FF3399" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">!!!</asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="Ok" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Wyczysc" ValidationGroup="inna" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;&nbsp;
                            <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Przejscie" />
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" HeaderText="bledy :" ShowMessageBox="True" ShowSummary="False" />
                        </td>
                        <td class="auto-style1">&nbsp;</td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    
    </div>
    </form>
</body>
</html>
