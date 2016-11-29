<%@page pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<HTML>
<HEAD>
<TITLE></TITLE>
<style>
	td{
		border: 1px solid black;
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
List<Integer> numeros = new ArrayList<Integer>();
String gerador1 = null;
Integer coluna = 0;



for(int x = 0; x < 6; x++){
	int gerador = (int) (Math.random() * 60);
	
	if (numeros.contains(gerador)){
        x--;
     }
     else{ 
    	 
    	 numeros.add(gerador);
    	 
    	 
     }
}
	

	for(int x = 0; x < 60; x++){
		
		if(x < 10){
			gerador1 = "0"+x;
			
		}else{
			gerador1 = "" + x;
		}
		
		if (numeros.contains(x)) {
			out.println("<td bgcolor=\"#90EE90\">"+gerador1+"</td>");
		} else {
			out.println("<td>"+gerador1+"</td>");
		}
		coluna++;
		if (coluna > 9){
			out.println("</tr>");
			coluna = 0;
}
	}

%>

</TABLE>

</BODY>
</HTML>