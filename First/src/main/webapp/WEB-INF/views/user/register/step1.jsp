<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
    
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>   
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<div class="panel-body">
    <div class="row">
        <div class="col-lg-12">
            <h4>이용약관</h4>
            <div class="panel-body" style="border: 1px solid #ccc">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
        </br>
        <h4>개인정보</h4>
        <div class="panel-body" style="border: 1px solid #ccc">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </div>
        <br/>
        <form role="form" action="/register/step2">
            <div class="form-group">
                <label class="checkbox-inline">
                    <input type="checkbox" name="agree" value="true">동의합니다.
                </label>
            </div>
            <button type="submit" class="btn btn-default">다음 단계</button>
        </form>
    </div>
</div>

