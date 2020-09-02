<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ include file="Header.jsp"%>
<%@ page import="java.io.*"%>

<%@ page import="java.sql.*,java.util.*"%>


    

  <main id="main">


    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
      <div class="container" data-aos="fade-up">
<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/technicalblogs" user="root" password=""/>
	<sql:query var="rs" dataSource="${db}">select * from feedback
where id='${num}';</sql:query> 
        <div class="row">
          <div class="col-lg-8">
          <c:forEach items="${rs.rows}" var="post">
          <h1>${post.name}</h1><br>
		<h3>${post.subject}</h3><br>
		<p>${post.message}</p>          
              </c:forEach>
                 
                  
                
              
              
        
              

              
              
              
              <div class="count">
                <label id="count"></label>
              </div>
          </div>
         
             

      </div>
      
    </section><!-- End Cource Details Section -->

   
    
  </main><!-- End #main -->

  <%@ include file="Footer.jsp"%>