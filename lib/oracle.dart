import 'package:http/http.dart' as http;
import 'dart:convert';

const url = "http://yerkee.com/api/fortune";

Future getWisdom() async{
  http.Response response = await http.get(url);

  if(response.statusCode != 200)
    return "Oops, something went wrong!";
  else{
    String data = response.body;
    Map json = jsonDecode(data);
    String message = json["fortune"];

    print("JSON response is as follows:");
    print("Response type is ${message.runtimeType}");
    print("$message");
    
    return message;
  }
}