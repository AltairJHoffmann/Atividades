<HTML>
<HEAD>
<TITLE>
</TITLE>
</HEAD>
<BODY>
<BR><BR>

<UL>
<%
String elemento = "";
for(int cont = 0; cont <= 100; cont++){
elemento = elemento + "<LI>" + cont + "</LI>";
}
out.println(elemento);
%>

</UL>
</BODY>
</HTML>