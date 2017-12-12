<%@ Page Language="C#"%>
<% @Import Namespace="System.IO" %>
<%
    var filename = "content/products.csv";
    var appDir = AppDomain.CurrentDomain.GetData("DataDirectory").ToString();
    appDir = appDir.Substring(0,appDir.LastIndexOf('\\'));
    var path = Path.Combine(appDir, filename);
    var tmp = File.ReadAllText(path);
    OutputL.Text = tmp;


%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Webshop</title>
</head>
<body>
    <asp:Label runat="server" id="OutputL"></asp:Label>
</body>
</html>