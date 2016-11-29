<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE></TITLE>
<style>
	td{
		border: 2px solid black;
	}
	b{
		font-family: cursive;
	}
</style>
</HEAD>
<BODY>
<BR><BR>
<TABLE>
<b>Números da Loteria</b>
<tr>
<%
List<String> numeros = new ArrayList<String>();
String gerador1 = null;




for(int x = 0; x < 6; x++){
	int gerador = (int) (Math.random() * 60);
	
	if(gerador < 10){
		gerador1 = "0"+gerador;
		
	}else{
		gerador1 = "" + gerador;
	}
	
	if (numeros.contains(gerador1)){
        x--;
     }
     else{ 
    	 
    	 numeros.add(gerador1);
    	 out.println("<td>"+gerador1+"</td>");
     }
	
	
	
	
	
}
%>
</tr>
</TABLE>

</BODY>
</HTML>