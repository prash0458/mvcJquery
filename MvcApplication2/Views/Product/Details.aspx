<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Mvc.Entity.Product>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>Product</legend>

    <div class="display-label">ProductName</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ProductName) %>
    </div>

    <div class="display-label">SupplierID</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SupplierID) %>
    </div>

    <div class="display-label">CategoryID</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CategoryID) %>
    </div>

    <div class="display-label">QuantityPerUnit</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.QuantityPerUnit) %>
    </div>

    <div class="display-label">UnitPrice</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitPrice) %>
    </div>

    <div class="display-label">UnitsInStock</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitsInStock) %>
    </div>

    <div class="display-label">UnitsOnOrder</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UnitsOnOrder) %>
    </div>

    <div class="display-label">ReorderLevel</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReorderLevel) %>
    </div>

    <div class="display-label">Discontinued</div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Discontinued) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.ProductID }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
