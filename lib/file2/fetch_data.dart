import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model1.dart';

Future<List<sai>>fectdata() async{
  final response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if(response.statusCode==200){
    List<dynamic> data =json.decode(response.body);
    return data.map((json)=>sai.fromJson(json)).toList();
  }
  else{
    throw Exception("Load error");
  }
}
