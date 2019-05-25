<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.models.Items" %>
 <%
 Items item = new Items();
 String itemsGrid = item.getItems();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1{
font-family: "Times New Roman", Times, serif;
text-shadow: 1px 1px gray;
}
table {
    border: 0px solid #CCC;
    border-collapse: collapse;
    table-layout: auto;
  	width: 100%; 
}

td {
    border: none;
}

th, td {
  padding: 15px;
}
tr:nth-child(even) {background-color: #f2f2f2;}
tr:hover {background-color: #f5f5f5;}

a{
	font-family: Verdana;
	font-size: 14px;
}

/* unvisited link */
a:link {
  color: purple;
}

/* visited link */
a:visited {
  color: darkblue;
}

/* mouse over link */
a:hover {
  color: gray;
}

/* selected link */
a:active {
  color: blue;
}
input[type=submit] {
  background-color: white;
  color: black;
  border: 1px solid #555555;
  padding: 10px 15px;
  border-radius: 2px;
  text-align: center;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #555555;
  color: white;
}
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New/Edit Item</title>
</head>
<body>
    <div align="center">
        <h1>New/Edit Item</h1>
        <form id="formItems" action="saveItem" method="post" modelAttribute="item">
        <table>
            <input type="hidden" id="hidItemID" name="hidItemID" value="0">
            <tr>
                <td>Name:</td>
                <td><input id="name" name="name" placeholder="Item Name.."/></td>
            </tr>
            <tr>
                <td>Brand:</td>
                <td><input id="brand" name="brand" placeholder="Brand.."/></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><input id="qty" name="qty" placeholder="Quantity.."/></td>
            </tr>
            <tr>
                <td>Color:</td>
                <td><input id="color" name="color" placeholder="Color.."/></td>
            </tr>
            
            <tr>
                <td colspan="2" align="center"><input type="button" id="btnSave" name="btnSave" value="Save"></td>
            </tr>
        </table>
        <div id="divStsMsgItem"></div>
		<div id="divItemsTable"><% out.println(itemsGrid); %></div> 
        </form>
    </div>
</body>
</html>