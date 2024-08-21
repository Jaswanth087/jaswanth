import 'package:http/http.dart' as http;
import 'dart:convert';


Future<http.Response>CreateUser(String firstName,String lastName,String email){
  return http.post(Uri.parse("https://reqres.in/api/users"),
  headers: {
    "Content-Type":"application/json"
  },
    body: jsonEncode({
      "first_name":firstName,
      "last_name":lastName,
      "email":email
    })
  );
}
