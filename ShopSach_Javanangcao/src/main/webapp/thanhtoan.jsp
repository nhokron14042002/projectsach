<%@page import="bean.giohangbean"%>
<%@page import="bo.giohangbo"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@page import="bean.loaibean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bo.loaibo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
      <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body> <h1 class="text-center"> Hóa Đơn </h1>
<table width="1000" align="center">
  <tr>
  <td width="100" valign="top"> 
     

  </tr>
  <td width="800" valign="top">
     <table class="table table-hover">
      
        <td width="80"> STT</td>
        
         <td> Tên Sách</td>
        
         
           <td width="100"> Số Lượng</td>
            <td> Thành Tiền</td>
           
             
       <%giohangbo gh=(giohangbo)session.getAttribute("gio"); 
       String key=request.getParameter("soluong");
       long tongtien = 0;
       
       if(gh!=null){
    	   for(giohangbean h: gh.ds){
    	   
    	   
    		  
    	   tongtien += h.getThanhtien();
    	   
    	   %>
       		<tr>
       		
       		<td>
       		
       		  
       		</td>
       		
       		
       		<td>
       		   <%=h.getTensach() %>
       		</td>
       		
       	
       		<td>
       		
       		
       		
     			 <%=h.getSoluong() %>
     			 
     		 </td>
       		<td>
       		   <%=h.getThanhtien() %>
       		</td>
       		
       		<td> 
       		
  </a>
       			 
      </form>
       		
      
       		
       		
       		
       			 
       	
       		</td>
       		</tr>
  
   
    	   <% }}%>
      
      
   
    	
    	
 
     
    </table>
<table>
	<h3><span class="label label-info">Tổng tiền: <%=tongtien %> VND</span></h3>
	<form action="thanhtoanctl" method="get">
    
    	<input class="btn-primary" name ="" type="submit" value="Mua Liền">
    	
    	</form>
    	<form action="giohangctl" method="get">
    
    	<input class="btn-primary" name ="" type="submit" value="Quay về Giỏ">
    	
    	</form>
	
</table>


    </td>
  </tr>
  
</table>
</body>
</html>