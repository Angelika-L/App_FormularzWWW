<%@ Page Title="" Language="C#" MasterPageFile="~/Moja.master" AutoEventWireup="true" CodeFile="WynikiWyszukiwania.aspx.cs" Inherits="WynikiWyszukiwania" %>

<%@ Register src="wyszukiwanieTytulu.ascx" tagname="wyszukiwanieTytulu" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Wyszukiwanie tytulu</h1>
    <h4>wyniki wyszukiwania:</h4>
    <uc1:wyszukiwanieTytulu ID="wyszukiwanieTytulu1" runat="server" />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_linku], [link], [tytul] FROM [Link_ksiazka] WHERE ([tytul] LIKE '%' + @tytul + '%')">
            <SelectParameters>
                <asp:SessionParameter Name="tytul" SessionField="WT" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
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
    <p>
        &nbsp;</p>
</asp:Content>

