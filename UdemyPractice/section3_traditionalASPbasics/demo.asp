<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    Server Time is <% Response.Write(Now) %>
    <br />
    Server Time is <%= Now %>
    <br />
    <table>
        <% for i = 1 to 10 %>
        <tr>
            <td>10</td>
            <td>*</td>
            <td><%=i%></td>
            <td>=</td>
            <td><%=10*i%></td>
        </tr>
        <% next %>
    </table>
    <select>
        <%
        for i = 1 to 100
            Response.Write("<option value=""" & i & """>" & i & "</option>")
        Next
        %>
    </select>
    <select>
    <% For i = 1 To 31%>
        <% If (i = Day(Now)) Then %>
            <option value="<%=i%>" selected="selected"><%=i %></option>
        <% Else %>
            <option value="<%=i%>"><%=i %></option>
        <% End If%>
    <% Next %>
    </select>
    <hr />
    <%
    For each sv in Request.ServerVariables
        Response.Write("<b>" & sv & "</b>" & ": ")
        Response.Write(Request.ServerVariables(sv) & "<br />")
    Next
    %>
</body>
</html>