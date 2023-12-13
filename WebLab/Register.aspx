<%@ Page Title="Регистрация" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebLab.Register" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
        <table>
        <tr>
            <td>
                Логин:
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
            <td>
                Пароль:
            </td>
            <td>
                <div>
                    <asp:TextBox ID="TPassword" style="width:500px" placeholder="Подтвердить пароль" TextMode="Password" runat="server"></asp:TextBox>
                </div>
            </td>
        <tr>
            <td>
                Подтвердить пароль:
            </td>
            <td>
                <div>
                    <asp:TextBox ID="TPasswordCheck" style="width:500px" placeholder="Подтвердить пароль" TextMode="Password" runat="server"></asp:TextBox>
                </div>
            </td>
            <asp:CompareValidator  
                ID="PasswordValidtor" 
                ControlToValidate="TPassword" 
                ControlToCompare="TPasswordCheck"
                EnableClientScript="False" 
                operator = "Equal"
                Type="String" 
                runat="server" 
                ErrorMessage="Пароли не совпадают">
            </asp:CompareValidator>

        </tr>
        <tr>
            <td colspan="1" style="text-align:left;">
                <asp:HyperLink ID="HyperLink1" runat="server"><a runat="server" href="~/Authorize">У меня уже есть аккаунт</a></asp:HyperLink>
            </td>
            <td colspan="2" style="text-align:right;">
                <asp:Button ID="BtnSave" Text="Сохранить" runat="server" OnClientClick="BtnSave_Click" />
            </td>
        </tr>    
    </table>
    </main>
</asp:Content>
