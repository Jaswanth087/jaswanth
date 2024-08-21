import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model3.dart';

Future <List<page>>fetchdata3() async{
  final response= await http.get(Uri.parse("https://reqres.in/api/users"));
  if(response.statusCode==200){
    final data=json.decode(response.body);
    final List<dynamic> usersJson = data['data'];
    return usersJson.map((json)=>page.fromJson(json)).toList();
  }
  else{
    throw Exception("Load error");
  }
}