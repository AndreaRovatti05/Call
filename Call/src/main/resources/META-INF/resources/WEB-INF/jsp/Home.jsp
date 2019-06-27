<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>

<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<link rel="stylesheet" href="/pqgrid/pqgrid.min.css" />
<script type="text/javascript" src="/pqgrid/pqgrid.min.js" ></script>
<meta charset="ISO-8859-1">

<title>HOME</title>
</head>
<body>
<script type="text/javascript">
$(function () {
	  
	  var obj = {
	          width: "80%",
	          height: 400,
	          resizable: true,
	          title: "Libri"
	          , showBottom: false
	          , editModel: {clicksToEdit: 2}
	          , scrollModel: { autoFit: true }
	      };

	  obj.columnTemplate = { minWidth: '10%', maxWidth: '80%' };
	  obj.colModel = [
	      { title: "id", dataType: "integer", dataIndx: "id"},
	      { title: "autore", dataType: "string", dataIndx: "author"},
	      { title: "genere", dataType: "string", dataIndx: "genre"},
	      { title: "nome", dataType: "string", dataIndx: "name"},
	      { title: "prezzo", dataType: "float", dataIndx: "price"},
	      { title: "anno", dataType: "integer", dataIndx: "year"},
	  ];
	  
	  obj.dataModel = {
		  location: "remote",
	      dataType: "JSON",
		  method: "GET",
		  url: "http://localhost:8090/Call/Home/1",
		  getData: function (dataJSON) {
	          return { data: dataJSON };
	      }
	  };   
	        
	  $("#grid").pqGrid(obj);

	});
</script>
</body>
</html>