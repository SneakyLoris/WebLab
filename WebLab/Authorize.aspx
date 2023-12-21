<%@ Page Title="Авторизация" MasterPageFile="~/Site.Master"  Language="C#" AutoEventWireup="true" CodeBehind="Authorize.aspx.cs" Inherits="WebLab.Authorize" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <main>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TbPassword" Width="150" Text="Введите пароль"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TbLogin" Text="Введите логин" Width="150"></asp:RequiredFieldValidator>

        <table>
        <tr>
            <td>
                Логин:
            </td>
            <td>
                <asp:TextBox ID="TbLogin" Width="500px" placeholder="Введите логин" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Пароль:
            </td>
            <td>
                <div>
                    <asp:TextBox ID="TbPassword" Width="500px" type="password" placeholder="Введите пароль" runat="server" />
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="1" style="text-align:left;">
                <asp:HyperLink ID="HyperLink1" runat="server"><a class="lll" runat ="server" href="../Register">Создать аккаунт </a></asp:HyperLink>
            </td>
            <td colspan="2" style="text-align:right;">
                <asp:Button ID="BtnSave" Text="Сохранить" runat="server" OnClick="PasswordChecked" />
            </td>
        </tr>    
    </table>
                    
    </main>
</asp:Content>

