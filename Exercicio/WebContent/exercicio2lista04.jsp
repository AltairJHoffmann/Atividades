<HTML>
<HEAD>
<TITLE>
</TITLE>
</HEAD>
<BODY>
<BR><BR>
<TABLE>
<TR>
<%
String elemento = "";
int cont = 0;
int cont2 = 1;
while(cont < 100){
	cont++;
	cont2++;
	elemento = elemento + "<td>" + cont + "</td>";
	if(cont2 > 10 && cont < 100){
		cont2 = 1;
		elemento = elemento + "</tr><tr>";
	}
}
out.println(elemento);
%>
</TR>
</TABLE>

</BODY>
</HTML>