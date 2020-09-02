<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="Header.jsp"%>
<header id="header" class="fixed-top">
  <div class="container d-flex align-items-center">

    <h1 class="logo mr-auto"><a href="index.html">Technical Blogs</a></h1>
    <!-- Uncomment below if you prefer to use an image logo -->
    <!-- <a href="index.html" class="logo mr-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

    <nav class="nav-menu d-none d-lg-block">
      <ul>
        <li class="active"><a href="/">Home</a></li>
        <li><a href="/about">About</a></li>

        <li><a href="/contact">Contact</a></li>


      </ul>
    </nav><!-- .nav-menu -->



  </div>
</header><!-- End Header -->
   


<section style="padding-top: 100px;">

  <div class="col-md-10 mt-5 mx-auto">
    <div class="container mx-auto">
      
      <form action="newpost" method="post" >

      
     
     	<h1>Title</h1>
        <div class="form-group">
          <textarea class="form-control" name="title" rows="5" data-rule="required"
            data-msg="Please write something for us" ></textarea>
          <div class="validate"></div>
        </div>

		<h1>Slug</h1>
        <div class="form-group">
          <input type="text" class="form-control" name="slug" id="subject" value="${post.slug }" data-rule="minlen:4"
            data-msg="Please enter at least 8 chars of subject" />
          <div class="validate"></div>
        </div>

        <!-- 0 -->
        <div class="form-group">

          

		<h1>Content 1</h1>
        <div class="form-group">
          <textarea class="form-control" name="content1" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content1}</textarea>
          <div class="validate"></div>
        </div>
        
        <h1>Content 2</h1>
        <div class="form-group">
          <textarea class="form-control" name="content2" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content2}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 3</h1>
        <div class="form-group">
          <textarea class="form-control" name="content3" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content3}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 4</h1>
        <div class="form-group">
          <textarea class="form-control" name="content4" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content4}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 5</h1>
        <div class="form-group">
          <textarea class="form-control" name="content5" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content5}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 6</h1>
        <div class="form-group">
          <textarea class="form-control" name="content6" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content6}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 7</h1>
        <div class="form-group">
          <textarea class="form-control" name="content7" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content7}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 8</h1>
        <div class="form-group">
          <textarea class="form-control" name="content8" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content8}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 9</h1>
        <div class="form-group">
          <textarea class="form-control" name="content9" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content9}</textarea>
          <div class="validate"></div>
        </div>
        <h1>Content 10</h1>
        <div class="form-group">
          <textarea class="form-control" name="content10" rows="5" colums="200" data-rule="required"
            data-msg="Please write something for us">${post.content10}</textarea>
          <div class="validate"></div>
        </div>
                            <button onclick="myfunc2()" class="btn btn-submit btn-block"
                              style="background-color: #5f86cf;" type="submit">Post edited post</button>
      </form>
    </div>
  </div>
</section>

<hr>
 <%@ include file="Footer.jsp"%>