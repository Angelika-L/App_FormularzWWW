<%@ Page Title="" Language="C#" MasterPageFile="~/Moja.master" AutoEventWireup="true" CodeFile="edycja.aspx.cs" Inherits="edycja" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Edycja linkow</h1>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" DeleteCommand="DELETE FROM [Link_ksiazka] WHERE [Id_linku] = @Id_linku" InsertCommand="INSERT INTO [Link_ksiazka] ([link], [tytul], [autor], [okladka], [opis], [Id_dodajacego], [data_dodania], [czy_zatwierdzony], [czy_ksiazka]) VALUES (@link, @tytul, @autor, @okladka, @opis, @Id_dodajacego, @data_dodania, @czy_zatwierdzony, @czy_ksiazka)" SelectCommand="SELECT [Id_linku], [link], [tytul], [autor], [okladka], [opis], [Id_dodajacego], [data_dodania], [czy_zatwierdzony], [czy_ksiazka] FROM [Link_ksiazka]" UpdateCommand="UPDATE [Link_ksiazka] SET [link] = @link, [tytul] = @tytul, [autor] = @autor, [okladka] = @okladka, [opis] = @opis, [Id_dodajacego] = @Id_dodajacego, [data_dodania] = @data_dodania, [czy_zatwierdzony] = @czy_zatwierdzony, [czy_ksiazka] = @czy_ksiazka WHERE [Id_linku] = @Id_linku">
            <DeleteParameters>
                <asp:Parameter Name="Id_linku" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="okladka" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="Id_dodajacego" Type="Int32" />
                <asp:Parameter Name="data_dodania" Type="DateTime" />
                <asp:Parameter Name="czy_zatwierdzony" Type="String" />
                <asp:Parameter Name="czy_ksiazka" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="okladka" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="Id_dodajacego" Type="Int32" />
                <asp:Parameter Name="data_dodania" Type="DateTime" />
                <asp:Parameter Name="czy_zatwierdzony" Type="String" />
                <asp:Parameter Name="czy_ksiazka" Type="String" />
                <asp:Parameter Name="Id_linku" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource1" EnableViewState="False" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:BoundField DataField="link" HeaderText="link" SortExpression="link" />
                <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                <asp:BoundField DataField="okladka" HeaderText="okladka" SortExpression="okladka" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                <asp:BoundField DataField="Id_dodajacego" HeaderText="Id_dodajacego" SortExpression="Id_dodajacego" />
                <asp:BoundField DataField="data_dodania" HeaderText="data_dodania" SortExpression="data_dodania" />
                <asp:BoundField DataField="czy_zatwierdzony" HeaderText="czy_zatwierdzony" SortExpression="czy_zatwierdzony" />
                <asp:BoundField DataField="czy_ksiazka" HeaderText="czy_ksiazka" SortExpression="czy_ksiazka" />
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" DeleteCommand="DELETE FROM [Link_ksiazka] WHERE [Id_linku] = @Id_linku" InsertCommand="INSERT INTO [Link_ksiazka] ([czy_ksiazka], [czy_zatwierdzony], [data_dodania], [link], [tytul], [autor], [okladka], [opis], [Id_kategorii], [Id_dodajacego]) VALUES (@czy_ksiazka, @czy_zatwierdzony, @data_dodania, @link, @tytul, @autor, @okladka, @opis, @Id_kategorii, @Id_dodajacego)" SelectCommand="SELECT [czy_ksiazka], [czy_zatwierdzony], [data_dodania], [Id_linku], [link], [tytul], [autor], [okladka], [opis], [Id_kategorii], [Id_dodajacego] FROM [Link_ksiazka] WHERE ([Id_linku] = @Id_linku)" UpdateCommand="UPDATE [Link_ksiazka] SET [czy_ksiazka] = @czy_ksiazka, [czy_zatwierdzony] = @czy_zatwierdzony, [data_dodania] = @data_dodania, [link] = @link, [tytul] = @tytul, [autor] = @autor, [okladka] = @okladka, [opis] = @opis, [Id_kategorii] = @Id_kategorii, [Id_dodajacego] = @Id_dodajacego WHERE [Id_linku] = @Id_linku">
            <DeleteParameters>
                <asp:Parameter Name="Id_linku" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="czy_ksiazka" Type="String" />
                <asp:Parameter Name="czy_zatwierdzony" Type="String" />
                <asp:Parameter Name="data_dodania" Type="DateTime" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="okladka" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="Id_kategorii" Type="Int32" />
                <asp:Parameter Name="Id_dodajacego" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id_linku" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="czy_ksiazka" Type="String" />
                <asp:Parameter Name="czy_zatwierdzony" Type="String" />
                <asp:Parameter Name="data_dodania" Type="DateTime" />
                <asp:Parameter Name="link" Type="String" />
                <asp:Parameter Name="tytul" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="okladka" Type="String" />
                <asp:Parameter Name="opis" Type="String" />
                <asp:Parameter Name="Id_kategorii" Type="Int32" />
                <asp:Parameter Name="Id_dodajacego" Type="Int32" />
                <asp:Parameter Name="Id_linku" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="Id_linku" DataSourceID="SqlDataSource2" GridLines="Horizontal" Height="50px" Width="475px">
            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                Zaznacz link do wyswietlenia
            </EmptyDataTemplate>
            <Fields>
                <asp:BoundField DataField="czy_ksiazka" HeaderText="czy_ksiazka" SortExpression="czy_ksiazka" />
                <asp:BoundField DataField="czy_zatwierdzony" HeaderText="czy_zatwierdzony" SortExpression="czy_zatwierdzony" />
                <asp:TemplateField HeaderText="data_dodania" SortExpression="data_dodania">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("data_dodania") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("data_dodania") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("data_dodania") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id_linku" HeaderText="Id_linku" InsertVisible="False" ReadOnly="True" SortExpression="Id_linku" />
                <asp:TemplateField HeaderText="link" SortExpression="link">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("link") %>'></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="  Link nie moze byc pusty"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("link") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("link") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="tytul" SortExpression="tytul">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tytul") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" BorderColor="#FF0066" ControlToValidate="TextBox3" ErrorMessage="pole wymagane"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("tytul") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" BorderColor="#3399FF" ControlToValidate="TextBox3" ErrorMessage="wymagane"></asp:RequiredFieldValidator>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("tytul") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                <asp:BoundField DataField="okladka" HeaderText="okladka" SortExpression="okladka" />
                <asp:BoundField DataField="opis" HeaderText="opis" SortExpression="opis" />
                <asp:TemplateField HeaderText="Id_kategorii" SortExpression="Id_kategorii">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id_kategorii") %>'></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="kategoria1" DataValueField="Id_kategorii">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_kategorii], [kategoria1] FROM [kategoria1]"></asp:SqlDataSource>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id_kategorii") %>'></asp:TextBox>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource4" DataTextField="kategoria1" DataValueField="Id_kategorii">
                        </asp:CheckBoxList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_kategorii], [kategoria1] FROM [kategoria1]"></asp:SqlDataSource>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id_kategorii") %>'></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:pd2375ConnectionString %>" SelectCommand="SELECT [Id_kategorii], [kategoria1] FROM [kategoria1] WHERE ([Id_kategorii] = @Id_kategorii)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="Label1" Name="Id_kategorii" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource5">
                        <ItemTemplate> ---<%#Eval("kategoria1") %>--- </ItemTemplate>
                        </asp:Repeater>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id_dodajacego" HeaderText="Id_dodajacego" SortExpression="Id_dodajacego" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
        </asp:DetailsView>
    </p>
</asp:Content>

