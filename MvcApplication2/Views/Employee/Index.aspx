<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Mvc.Entity.Employee>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
   
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table id="EmployeeIndexPage">
<thead>
    <tr>        
            <th>LastName</th>                
            <th>FirstName</th>                
            <th>Title</th>                
            <th>TitleOfCourtesy</th>                       
            <th>Country</th>                       
            <th>PhotoPath</th>        
        <th></th>
    </tr>
    </thead>
    <tfoot></tfoot>
<% foreach (var item in Model) { %>
    <tr>        
            <td><%: Html.DisplayFor(modelItem => item.LastName) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.FirstName) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.Title) %></td>                
            <td><%: Html.DisplayFor(modelItem => item.TitleOfCourtesy) %></td>                       
            <td><%: Html.DisplayFor(modelItem => item.Country) %></td>                       
            <td><%: Html.DisplayFor(modelItem => item.PhotoPath) %></td>        
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.EmployeeID }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.EmployeeID }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.EmployeeID }) %>
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
            var oTable = $('#EmployeeIndexPage').dataTable({
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
//        /* Build the DataTable with third column using our custom sort functions */
//        $('#EmployeeIndexPage').dataTable({
//            "aaSorting": [[0, 'asc'], [1, 'asc']],
//            "aoColumns": [
//            null,
//            null,
//            { "sType": 'string-case' },
//            null,
//            null
//        ]
//        });
//    });


</script>

</asp:Content>
