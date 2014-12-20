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
        alert(json.data[i].id);
        alert(json.data[i].name);
        alert(json.data[i].en_name);
        alert(json.data[i].indication);
        alert(json.data[i].formulation);
        alert(json.data[i].type);
        alert(json.data[i].date);
    }
  };

  request.send();
