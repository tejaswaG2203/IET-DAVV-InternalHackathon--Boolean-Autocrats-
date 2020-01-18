<%@include file="block/HistorySellerHeader.jsp" %>
<%@page import=" com.sih.model.dao.SellerDao"%>
<%@page import="com.sih.model.dto.Seller"%>
<%@page import="java.util.List"%>
<%
    HttpSession Session = request.getSession();
    String phone = Session.getAttribute("no").toString();
    
    
    List<Seller> list = new SellerDao().list(phone);    
%>
<br><br><br>
<h1>  <div class="section-title text-center">
               <h3><u>History</u></h3>
         </div>
         </h1>
<hr>
<table id="dtbl" class="display table table-hover">
     <thead>
    <tr class="active">
        <th>Commodity</th>
        <th>Quantity(kg's)</th>
        <th>Rate(kg's)</th>
        <th>Date Modified</th>
    </tr>
     </thead>
    
     <tbody>
    <% for(Seller ob : list) { %>
    <tr>
        <th><%=ob.getCommodity()%></th>
        <th><%=ob.getQuantity()%></th>
        <th><%=ob.getRate()%></th>
        <th><%=ob.getDate()%></th>
    </tr>
    <%}%>
     </tbody>
</table>
    <br><br><br><br><br><br><br>
    <br><br><br><br><br><br>
    <script>
        $(document).ready( function () 
        {
                $('#dtbl').DataTable();
                
              
        } );
    </script>
<%@include file="block/footer.jsp" %>



