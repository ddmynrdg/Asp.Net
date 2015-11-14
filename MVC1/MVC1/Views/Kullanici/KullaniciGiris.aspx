<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MVC1.Models.KullaniciGirisModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    KullaniciGiris
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>KullaniciGiris</h2>
    <% using (Html.BeginForm())
       { %> 
            <%: Html.AntiForgeryToken () %>
            <%: Html.ValidationSummary(true) %>
            <fieldset>
                <legend>
                    Kullanıcı Giris Formu
                </legend>

                <ol>
                    <li>
                        <%: Html.LabelFor(m=> m.KullaniciAdi) %>
                        <%: Html.TextBoxFor(m=> m.KullaniciAdi) %>
                        <%: Html.ValidationMessageFor(m=> m.KullaniciAdi) %>
                    </li>
                    <li>
                        <%: Html.LabelFor(m=> m.Sifre) %>
                        <%: Html.TextBoxFor(m=> m.Sifre) %>
                        <%: Html.ValidationMessageFor(m=> m.Sifre) %>
                    </li>
                </ol>
                <input type="submit" value="Giriş Yap"/>
            </fieldset>
    <% } %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
