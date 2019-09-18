<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>
    <h1>
        <%
            set conn=Server.CreateObject("ADODB.Connection")
            conn.ConnectionString = "Provider=SQLNCLI11;Server=(localdb)\MSSQLLocalDB;Trusted_Connection=yes;timeout=30;AttachDbFileName=C:\Users\Cosmin Balosache\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\master.mdf"
            conn.Open
            set rs.Open = "Select * from Game"
            If conn.errors.count = 0 Then
                Response.Write("Connected OK")
            End If

            do until rs.EOF
                for each x in rs.Fields
                    Response.Write(x.name)
                    Response.Write(" = ")
                    Response.Write(x.value & "<br>")
                next
                Response.Write("<br>")
                rs.MoveNext
            loop
            rs.close
            conn.close
        %>
    </h1>
</body>
</html>
