<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication2.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Customer</legend>

    <div class="display-label">FirstName</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.FirstName) %>
    </div>

    <div class="display-label">LastName</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.LastName) %>
    </div>

    <div class="display-label">Age</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Age) %>
    </div>

    <div class="display-label">DateOfBirth</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.DateOfBirth) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
