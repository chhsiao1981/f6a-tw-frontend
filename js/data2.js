
<script type="text/javascript">
var request;
var query;
var limit;


  request = new XMLHttpRequest();

  request.open("GET", "http://106.187.101.193:9006/api/query?str=" + query + "&limit=" + limit, true);

  request.onreadystatechange = function() {
    if (request.readyState == 4 && request.status == 200) {
      console.log(request.responseText);
      var data = request.responseText;
 
      var json = JSON.parse(data);

      for (i = 0; i < json.data.length; i++) {
        console.log(json.data[i].id);
        console.log((json.data[i].name);
        console.log((json.data[i].en_name);
        console.log((json.data[i].indication);
        console.log((json.data[i].formulation);
        console.log((json.data[i].type);
        console.log((json.data[i].date);
    }
   }
  };

  request.send();

</script>

<script type="text/javascript">
  window.onload = function() {

    var textarea = 
