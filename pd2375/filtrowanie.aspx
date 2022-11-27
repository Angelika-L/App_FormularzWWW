<%@ Page Title="" Language="C#" MasterPageFile="~/Moja.master" AutoEventWireup="true" CodeFile="filtrowanie.aspx.cs" Inherits="filtrowanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Filtrowanie </h1>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="kategoria1" DataValueField="Id_kategorii">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_kategorii], [kategoria1] FROM [kategoria1]
union
select -1, 'wszystko'"></asp:SqlDataSource>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_linku], [tytul], [link], [opis] FROM [Link_ksiazka] WHERE ([Id_kategorii] = @Id_kategorii)
or @Id_kategorii = '-1'">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Id_kategorii" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </p>
</asp:Content>

