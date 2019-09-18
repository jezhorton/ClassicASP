<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h1>This is the asp index</h1>
    <p>This is todays date <% =Date() %></p>
    <p>This is the time: <% =Time()  %></p>
    <%
        Set con = Server.CreateObject("ADODB.Connection")
            con.ConnectionString = "Provider=SQLNCLI11;Server=(localdb)\MSSQLLocalDB;Trusted_Connection=yes;timeout=30;AttachDbFileName=C:\Users\Jez Horton\testDB.mdf"
            con.Open
        If con.State = 1 Then 
        Response.Write("A connection is made and is open")
        ElseIf con.State = 0 Then
        Response.Write("Connection failed")
        End if
        Response.Write("<p>")
        Set table = con.Execute("SELECT * FROM pls")
            Do Until table.EOF
                for each i in table.fields
                    response.write(i)
                    response.write(" - ")
                next
            table.MoveNext
            Loop
        Response.Write("</p>")
    %>


    <%Set fname = Request.QueryString("fname")%>
    <%Set lname = Request.QueryString("lname")%>
    <%Set Age = Request.QueryString("age")%>

    <p>Your name is <%=fname %><%=lname %></p>
    <p>Your age is <%=Age %></p>
</body>
</html>