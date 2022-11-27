<%@ Page Title="" Language="C#" MasterPageFile="~/Moja.master" AutoEventWireup="true" CodeFile="Przegladanie.aspx.cs" Inherits="Przegladanie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Przegladanie linkow</h1>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT Link_ksiazka.Id_linku, Link_ksiazka.link, Link_ksiazka.tytul, Link_ksiazka.opis, kategoria1.kategoria1, osoba1.nazwisko + ' ' + osoba1.imie AS osoba FROM Link_ksiazka INNER JOIN osoba1 ON Link_ksiazka.Id_dodajacego = osoba1.Id_osoby INNER JOIN kategoria1 ON Link_ksiazka.Id_kategorii = kategoria1.Id_kategorii WHERE (Link_ksiazka.czy_zatwierdzony = @czy_zatwierdzony) AND (Link_ksiazka.czy_ksiazka = @czy_ksiazka)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="czy_zatwierdzony" />
                <asp:Parameter DefaultValue="0" Name="czy_ksiazka" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="5">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:HyperLinkField DataNavigateUrlFields="link" DataNavigateUrlFormatString="(0)" DataTextField="tytul" HeaderText="tytul" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                <asp:BoundField DataField="kategoria1" HeaderText="kategoria1" SortExpression="kategoria1" />
                <asp:BoundField DataField="osoba" HeaderText="osoba" ReadOnly="True" SortExpression="osoba" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_dodajacego], [Id_kategorii], [opis], [okladka], [autor], [tytul], [link], [Id_linku], [data_dodania], [czy_zatwierdzony], [czy_ksiazka] FROM [Link_ksiazka] WHERE ([Id_linku] = @Id_linku)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id_linku" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id_linku" DataSourceID="SqlDataSource2" ForeColor="Black" Height="50px" Width="125px">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Id_dodajacego" HeaderText="Id_dodajacego" SortExpression="Id_dodajacego" />
                <asp:BoundField DataField="Id_kategorii" HeaderText="Id_kategorii" SortExpression="Id_kategorii" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                <asp:BoundField DataField="okladka" HeaderText="okladka" SortExpression="okladka" />
                <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:BoundField DataField="data_dodania" HeaderText="data_dodania" SortExpression="data_dodania" />
                <asp:BoundField DataField="czy_zatwierdzony" HeaderText="czy_zatwierdzony" SortExpression="czy_zatwierdzony" />
                <asp:BoundField DataField="czy_ksiazka" HeaderText="czy_ksiazka" SortExpression="czy_ksiazka" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>

