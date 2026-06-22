```{=html}
<table class="table">
<tbody>
<% for (const item of items) { %>
<tr <%= metadataAttrs(item) %>>
<td class="listing-title"><a href="<%- item.path %>"><%= item.title %></a></td>
<td class="listing-pdf">
<% if (item.pdf) { %><a href="<%- item.pdf %>" download>Descargar PDF</a><% } %>
</td>
</tr>
<% } %>
</tbody>
</table>
```
