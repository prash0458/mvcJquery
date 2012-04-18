<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Mvc.Entity.Product>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table id="ProductIndexTable">
    <thead>
    <tr>        
            <th>ProductName</th>                
            <th>SupplierID</th>               
            <th>CategoryID</th>                
            <th>QuantityPerUnit</th>                
            <th>UnitPrice</th>                
            <th>UnitsInStock</th>                
            <th>UnitsOnOrder</th>                
            <th>ReorderLevel</th>               
            <th></th>          
    </tr>
    </thead>
    <tfoot></tfoot>

<% foreach (var item in Model) { %>
    <tr>       
            <td><%: Html.DisplayFor(modelItem => item.ProductName) %></td>               
            <td><%: Html.DisplayFor(modelItem => item.SupplierID) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.CategoryID) %></td>               
            <td><%: Html.DisplayFor(modelItem => item.QuantityPerUnit) %></td>               
            <td><%: Html.DisplayFor(modelItem => item.UnitPrice) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.UnitsInStock) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.UnitsOnOrder) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.ReorderLevel) %></td>      
            <td><% = Html.ActionLink("Details", "Details", "Product")%></td>
    </tr>
<% } %>
</table>
<script type="text/javascript">   
    $(document).ready(function () {
        //$('table#CustomerIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'] });
        $('table#ProductIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'], excludeColumns: [2, 3, 4, 5, 6, 7, 8, 9] });
        //$('table#ProductIndexTable').columnFilters({ caseSensitive: true });
        //$('table#CustomerIndexTable').columnFilters({ minSearchCharacters: 3 });
        //$('table#CustomerIndexTable').columnFilters({ wildCard: '#', notCharacter: '?' });
    });
    
</script>
</asp:Content>
