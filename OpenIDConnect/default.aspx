<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="OpenIDConnect._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <br />
        <%
            string link = "https://accounts.google.com/o/oauth2/auth?client_id=" 
                + "830214409982-e1su7c8o90mji3l6jf47rfdbrs4v23jk.apps.googleusercontent.com" 
                + "&state=" 
                + Session["state"] 
                + "&redirect_uri="
                + "http://localhost:49364/default.aspx";


            string link2 = "https://accounts.google.com/o/oauth2/v2/auth?"
                                + "client_id=830214409982-e1su7c8o90mji3l6jf47rfdbrs4v23jk.apps.googleusercontent.com"
                                + "&response_type=code"
                                + "&scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.profile"
                                + "&redirect_uri=http://localhost:49364/default.aspx"
                                + "&state=" + Session["state"]
                                //+ "&login_hint=jsmith@example.com"
                                //+ "&openid.realm=example.com"
                                //+ "&hd=example.com"
                                ;

            
             %>
         <a href="<%=link2%>">Click here to login via Google</a> 
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
