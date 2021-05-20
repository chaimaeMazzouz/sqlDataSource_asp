<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="practice_sqlSource.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CompagnieVoyageConnectionString %>" DeleteCommand="DELETE FROM [Membre] WHERE [pseudo] = @pseudo" InsertCommand="INSERT INTO [Membre] ([pseudo], [pass], [matricule], [nom], [prenom], [service_], [mail], [categorie]) VALUES (@pseudo, @pass, @matricule, @nom, @prenom, @service_, @mail, @categorie)" SelectCommand="SELECT * FROM [Membre]" UpdateCommand="UPDATE [Membre] SET [pass] = @pass, [matricule] = @matricule, [nom] = @nom, [prenom] = @prenom, [service_] = @service_, [mail] = @mail, [categorie] = @categorie WHERE [pseudo] = @pseudo">
                <DeleteParameters>
                    <asp:Parameter Name="pseudo" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="pseudo" Type="String" />
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="matricule" Type="String" />
                    <asp:Parameter Name="nom" Type="String" />
                    <asp:Parameter Name="prenom" Type="String" />
                    <asp:Parameter Name="service_" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="categorie" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pass" Type="String" />
                    <asp:Parameter Name="matricule" Type="String" />
                    <asp:Parameter Name="nom" Type="String" />
                    <asp:Parameter Name="prenom" Type="String" />
                    <asp:Parameter Name="service_" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="categorie" Type="String" />
                    <asp:Parameter Name="pseudo" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="pseudo" DataSourceID="SqlDataSource1" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="pseudo" HeaderText="pseudo" ReadOnly="True" SortExpression="pseudo" />
                    <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                    <asp:BoundField DataField="matricule" HeaderText="matricule" SortExpression="matricule" />
                    <asp:BoundField DataField="nom" HeaderText="nom" SortExpression="nom" />
                    <asp:BoundField DataField="prenom" HeaderText="prenom" SortExpression="prenom" />
                    <asp:BoundField DataField="service_" HeaderText="service_" SortExpression="service_" />
                    <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                    <asp:BoundField DataField="categorie" HeaderText="categorie" SortExpression="categorie" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="pseudo" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="143px">
                <EditItemTemplate>
                    pseudo:
                    <asp:Label ID="pseudoLabel1" runat="server" Text='<%# Eval("pseudo") %>' />
                    <br />
                    pass:
                    <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                    <br />
                    matricule:
                    <asp:TextBox ID="matriculeTextBox" runat="server" Text='<%# Bind("matricule") %>' />
                    <br />
                    nom:
                    <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
                    <br />
                    prenom:
                    <asp:TextBox ID="prenomTextBox" runat="server" Text='<%# Bind("prenom") %>' />
                    <br />
                    service_:
                    <asp:TextBox ID="service_TextBox" runat="server" Text='<%# Bind("service_") %>' />
                    <br />
                    mail:
                    <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                    <br />
                    categorie:
                    <asp:TextBox ID="categorieTextBox" runat="server" Text='<%# Bind("categorie") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    pseudo:
                    <asp:TextBox ID="pseudoTextBox" runat="server" Text='<%# Bind("pseudo") %>' />
                    <br />
                    pass:
                    <asp:TextBox ID="passTextBox" runat="server" Text='<%# Bind("pass") %>' />
                    <br />
                    matricule:
                    <asp:TextBox ID="matriculeTextBox" runat="server" Text='<%# Bind("matricule") %>' />
                    <br />
                    nom:
                    <asp:TextBox ID="nomTextBox" runat="server" Text='<%# Bind("nom") %>' />
                    <br />
                    prenom:
                    <asp:TextBox ID="prenomTextBox" runat="server" Text='<%# Bind("prenom") %>' />
                    <br />
                    service_:
                    <asp:TextBox ID="service_TextBox" runat="server" Text='<%# Bind("service_") %>' />
                    <br />
                    mail:
                    <asp:TextBox ID="mailTextBox" runat="server" Text='<%# Bind("mail") %>' />
                    <br />
                    categorie:
                    <asp:TextBox ID="categorieTextBox" runat="server" Text='<%# Bind("categorie") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    pseudo:
                    <asp:Label ID="pseudoLabel" runat="server" Text='<%# Eval("pseudo") %>' />
                    <br />
                    pass:
                    <asp:Label ID="passLabel" runat="server" Text='<%# Bind("pass") %>' />
                    <br />
                    matricule:
                    <asp:Label ID="matriculeLabel" runat="server" Text='<%# Bind("matricule") %>' />
                    <br />
                    nom:
                    <asp:Label ID="nomLabel" runat="server" Text='<%# Bind("nom") %>' />
                    <br />
                    prenom:
                    <asp:Label ID="prenomLabel" runat="server" Text='<%# Bind("prenom") %>' />
                    <br />
                    service_:
                    <asp:Label ID="service_Label" runat="server" Text='<%# Bind("service_") %>' />
                    <br />
                    mail:
                    <asp:Label ID="mailLabel" runat="server" Text='<%# Bind("mail") %>' />
                    <br />
                    categorie:
                    <asp:Label ID="categorieLabel" runat="server" Text='<%# Bind("categorie") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:FormView>
            <br />
        </div>
    </form>
</body>
</html>
