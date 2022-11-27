<%@ Page Title="" Language="C#" MasterPageFile="~/Moja.master" AutoEventWireup="true" CodeFile="Ankieta1.aspx.cs" Inherits="Ankieta1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

        <title>Ankieta1</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            height: 30px;
            width: 168px;
        }
        .auto-style3 {
            text-align: center;
            width: 153px;
        }
        .auto-style4 {
            height: 30px;
            width: 153px;
        }
        .auto-style5 {}
        .auto-style6 {
            text-align: left;
            width: 168px;
        }
        .auto-style7 {
            text-align: center;
            width: 168px;
        }
        .auto-style8 {
            width: 168px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h1 class="auto-style1">ANKIETA</h1>
        <p class="auto-style1">imie
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; nazwisko
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <table align="center" cellpadding="3" cellspacing="3">
            <tr>
                <td class="auto-style3"><strong style="text-align: center">Kategoria</strong></td>
                <td class="auto-style7">
                    <asp:Label ID="Label1" runat="server" style="font-weight: 700" Text="Podkategoria" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox1_CheckedChanged" Text="ASP.NET" />
                </td>
                <td class="auto-style2">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" onIndexChanged="CheckBoxList1_SelectedIndexChanged" Visible="False" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                        <asp:ListItem>Podstawy</asp:ListItem>
                        <asp:ListItem>Master page</asp:ListItem>
                        <asp:ListItem>Baza danych</asp:ListItem>
                        <asp:ListItem>Ajas</asp:ListItem>
                        <asp:ListItem>Bezpieczenstwo</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="CheckBox2" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox2_CheckedChanged" Text="MSSQLServer" />
                </td>
                <td class="auto-style6">
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" Visible="False">
                        <asp:ListItem>DDL</asp:ListItem>
                        <asp:ListItem>DML</asp:ListItem>
                        <asp:ListItem>SQL</asp:ListItem>
                        <asp:ListItem>T-SQL</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:CheckBox ID="CheckBox3" runat="server" AutoPostBack="True" OnCheckedChanged="CheckBox3_CheckedChanged" Text="Jezyki Programownia" />
                </td>
                <td class="auto-style6">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" Visible="False">
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>VB</asp:ListItem>
                        <asp:ListItem>Java</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Podsumowanie" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style8">&nbsp;</td>
            </tr>
        </table>

</asp:Content>

