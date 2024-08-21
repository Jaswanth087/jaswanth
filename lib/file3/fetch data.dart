import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

Future<List<Todo>> fetchtodo() async{
  final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
  if (response.statusCode==200){
    List <dynamic>data=json.decode(response.body);
    return data.map((json)=>Todo.fromJson(json)).toList();
  }
  else{
    throw Exception("load error");
  }
}