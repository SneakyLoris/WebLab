<%@ Page Title="Регистрация" MasterPageFile="~/Site.Master"  Language="C#" AutoEventWireup="true" CodeBehind="Authorize.aspx.cs" Inherits="WebLab.Authorize" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <table>
        <tr>
            <td>
                Login:
            </td>
            <td>
                <asp:TextBox ID="TbLogin" Width="500px" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Имя:
            </td>
            <td>
                <asp:TextBox ID="TbName" Width="500px" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Возраст:
            </td>
            <td>
                <asp:TextBox ID="TbAge" Width="500px" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <asp:HyperLink ID="HyperLink1" runat="server"><a class="lll" runat ="server" href="../Autorize"> У меня уже есть аккаунт </a></asp:HyperLink>
            </td>
            <td colspan="2" style="text-align:center;">
                <asp:Button ID="BtnSave" Text="Сохранить" runat="server" OnClientClick="BtnSave_Click" />
            </td>
        </tr>    
    </table>
    </main>
</asp:Content>

