import 'package:http/http.dart' as http;
import 'dart:convert';

const url = "http://yerkee.com/api/fortune";

Future<String> getWisdom() async{
  http.Response response = await http.get(url);

  if(response.statusCode != 200)
    return "Oops, something went wrong!";
  else{
    String data = response.body;
    var json = jsonDecode(data);
    String message = json["fortune"];
    
    return message;
  }
}