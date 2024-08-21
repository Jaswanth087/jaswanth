import 'dart:convert';
import 'model2.dart';  // Ensure that the Model class is correctly imported
import 'package:http/http.dart' as http;


Future<List<Model>>fetchAlbums() async{
  final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if(response.statusCode==200){
    final List <dynamic>data=json.decode(response.body);
  return data.map((json)=>Model.fromJson(json)).toList();
  }
  else{
    throw Exception("Error occurd");
  }
}
