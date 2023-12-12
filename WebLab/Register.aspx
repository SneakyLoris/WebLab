<%@ Page Title="Регистрация" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebLab.Register" %>

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
                <asp:HyperLink ID="HyperLink1" runat="server"><a></a></asp:HyperLink>
            </td>
            <td colspan="2" style="text-align:center;">
                <asp:Button ID="BtnSave" Text="Сохранить" runat="server" OnClientClick="BtnSave_Click" />
            </td>
        </tr>    
    </table>
    </main>
</asp:Content>
