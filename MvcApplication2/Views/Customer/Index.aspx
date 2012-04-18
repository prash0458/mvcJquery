<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" 
                                Inherits="System.Web.Mvc.ViewPage<IEnumerable<Mvc.Entity.Customer>>" %>

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
        <td><%:Html.DisplayFor(modelItem => item.Country)%></td>   
         <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CustomerID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CustomerID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CustomerID }) %>
        </td>
    </tr>
<% } %>

</table>
<script type="text/javascript"> 
    var asInitVals = new Array();

    /* Define two custom functions (asc and desc) for string sorting */
    jQuery.fn.dataTableExt.oSort['string-case-asc'] = function (x, y) {
        return ((x < y) ? -1 : ((x > y) ? 1 : 0));
    };

    jQuery.fn.dataTableExt.oSort['string-case-desc'] = function (x, y) {
        return ((x < y) ? 1 : ((x > y) ? -1 : 0));
    };

    $(document).ready(function () {
        var oTable = $('#CustomerIndexTable').dataTable({
            "sPaginationType": "full_numbers",
            "oLanguage": {
                "sSearch": "Search all columns:",
                "aaSorting": [[0, 'asc'], [1, 'asc']],
                "aoColumns": [null, null, { "sType": 'string-case' }, null, null],
                "sDom": '<lf<t>ip>'
            }
        });
    });
   



    //    $(document).ready(function () {
    //        //$('table#CustomerIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'] });
    //         //$('table#CustomerIndexTable').columnFilters({ alternateRowClassNames: ['rowa', 'rowb'], excludeColumns: [2, 3,4] });
    //        $('table#CustomerIndexTable').columnFilters({ caseSensitive: false });
    //        //$('table#CustomerIndexTable').columnFilters({ minSearchCharacters: 3 });
    //         //$('table#CustomerIndexTable').columnFilters({ wildCard: '#', notCharacter: '?' });
    //    });

</script>
</asp:Content>
