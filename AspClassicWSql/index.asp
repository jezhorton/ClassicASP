<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h1>This is the asp index</h1>
    <p>This is todays date <% =Date() %></p>
    <%
        Set con = Server.CreateObject("ADODB.Connection")
            con.ConnectionString = "Provider=SQLNCLI11;Server=(localdb)\MSSQLLocalDB;Trusted_Connection=yes;timeout=30;AttachDbFileName=C:\Users\Jez Horton\testDB.mdf"
            con.Open
        If con.State = 1 Then 
        Response.Write("A connection is made and is open")
        ElseIf con.State = 0 Then
        Response.Write("Connection failed")
        End if
    %>
</body>
</html>