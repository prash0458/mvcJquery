<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Mvc.Entity.Customer>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table id="CustomerIndexTable"  cellspacing="0" cellpadding="0">
<thead>
    <tr>
        <th>CompanyName</th><th>ContactName</th><th>ContactTitle</th><th>Country</th><th></th>     
    </tr>
 </thead>
 <tfoot></tfoot>

<% foreach (var item in Model) { %>
    <tr>
        <td><%:Html.DisplayFor(modelItem => item.CompanyName)%></td>
        <td><%:Html.DisplayFor(modelItem => item.ContactName) %></td>
        <td><%:Html.DisplayFor(modelItem => item.ContactTitle)%></td>
        <td><%: Html.DisplayFor(modelItem => item.Country)%></td>   
    </tr>
<% } %>

</table>
<script type="text/javascript">
    $(document).ready(function () {
        //$('table#CustomerIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'] });
         //$('table#CustomerIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'], excludeColumns: [2, 3,4] });
        $('table#CustomerIndexTable').columnFilters({ caseSensitive: true });
        //$('table#CustomerIndexTable').columnFilters({ minSearchCharacters: 3 });
         //$('table#CustomerIndexTable').columnFilters({ wildCard: '#', notCharacter: '?' });
    });
</script>
</asp:Content>
