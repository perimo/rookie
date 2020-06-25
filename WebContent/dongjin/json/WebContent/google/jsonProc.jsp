<%@page import="test.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ page import="java.util.*, com.google.gson.Gson"  %>    
<%-- 스크립틀릿 - 자바코드를 쓸수 있는 땅 --%>        
<%
	DBConnect dbc = new DBConnect();
	List<Map<String,Object>> mrList = dbc.select();
	Gson g = new Gson();
	String imsi = g.toJson(mrList);
	out.print(imsi);
	//out.print(mrList);
%>