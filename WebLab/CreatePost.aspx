<%@ Page Title="Создание поста" Language="C#" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="WebLab.CreatePost" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <main>

        <table>
        <tr>
            <td style="padding-inline-end:10px; position:center">
                Название статьи:
            </td>
            <td>
                <asp:TextBox ID="TbTitle" Width="500px" placeholder="Название" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="position:center;">
                Описание:
            </td>
            <td>
                <div>
                    <asp:TextBox ID="TbDescr" Width="500px" runat="server" Height="200px" TextMode="MultiLine" />
                </div>
            </td>
        </tr>
        <tr>
            <td style="position:center;">
                Темы:
            </td>
            <td>
                <div>
                    <asp:RadioButtonList ID="RadioButtonThemes" runat="server">
                         <asp:ListItem Selected="False">Игры</asp:ListItem>
                         <asp:ListItem>Политика</asp:ListItem>
                         <asp:ListItem Selected="True">Другое</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </td>
        </tr>
        <tr>
            <td style="position:center;padding-inline-end:10px;">
                Сделать анонимным:
            </td>
            <td>
                <div>
                    <asp:CheckBox ID="CheckAnon" runat="server" Text=" Да! "/>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:right;">
                <asp:Button ID="BtnSave" Text="Сохранить" onclick="CreatePostOnclick" runat="server"/>
            </td>
        </tr>    
    </table>
                    
    </main>
</asp:Content>
