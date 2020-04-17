<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExibirUsuarios.aspx.cs" Inherits="ExibirUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" DeleteCommand="DELETE FROM [DoBemUsuario] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DoBemUsuario] ([Nome], [Email], [Senha]) VALUES (@Nome, @Email, @Senha)" SelectCommand="SELECT * FROM [DoBemUsuario]" UpdateCommand="UPDATE [DoBemUsuario] SET [Nome] = @Nome, [Email] = @Email, [Senha] = @Senha WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Senha" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Nome" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Senha" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
