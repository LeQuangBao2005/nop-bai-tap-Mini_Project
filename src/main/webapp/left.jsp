<%-- 
    Document   : left
    Created on : Oct 17, 2024, 4:42:24 PM
    Author     : ADMIN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Loai"%>
<%@page import="dao.LoaiDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LoaiDAO loaiDAO = new LoaiDAO();
    ArrayList<Loai> dsLoai = loaiDAO.getAll();
%>

<<div class="card mb-3">
    <h3 class="card-header"> Danh muc loai</h3><!-- comment -->
    <ul class="list-group List-group-flush">
        <%
            for (Loai x : dsLoai) {
        %>
        <li class="list-group-item"><a href="product.jsp?maloai=<%=x.getMaloai()%>"><%=x.getTenloai()%> </a> </li>
            <%
                }
            %>


    </ul>


</div>
