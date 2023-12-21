<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebLab._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Новостные новости</h1>
            <p class="lead">Читайте новости, которые сами пишите</p>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
        </div>
        <div>
            <table style="border: 1px solid blue;">
        <asp:DataList ID="DataList1" runat="server">
            <HeaderTemplate>
                <thead style="border:1px solid blue;">
                    <td style="border:1px dashed blue;">
                        <a href="?fld=id">Id</a>
                    </td>
                    <td style="border:1px dashed blue;">
                        <a href="?fld=login">Login</a>
                    </td>
                    <td style="border:1px dashed blue;">
                        <a href="?fld=name">Имя</a>
                    </td>
                    <td style="border:1px dashed blue;">
                        <a href="?fld=age">Возраст</a>
                    </td>
                </thead>
            </HeaderTemplate>
            <ItemTemplate>
                <tr style="border:1px solid blue;">
                    <td style="border:1px dashed blue;">
                        <asp:Label ID="LblId" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td style="border:1px dashed blue;">
                        <asp:Label ID="LblLogin" runat="server" Text='<%# Eval("Login") %>' />
                    </td>
                    <td style="border:1px dashed blue;">
                        <asp:Label ID="LblName" runat="server" Text='<%# Eval("Name") %>' />
                    </td>
                    <td style="border:1px dashed blue;">
                        <asp:Label ID="LblAge" runat="server" Text='<%# Eval("Age") %>' />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:DataList>
                <div>
                    <asp:Button ID="AddBut" runat="server" Text="Button" Visible="false" />
                    <asp:Button ID="DelBut" runat="server" Text="Button" Visible="False" />
                </div>
    </table>
        </div>
    </main>

</asp:Content>
