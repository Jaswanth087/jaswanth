import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

Future<List<User>> fetchUsers() async {
  final response = await http.get(Uri.parse('https://randomuser.me/api/?results=10'));

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(response.body);
    final List<dynamic> usersJson = jsonResponse['results'];

    return usersJson.map((json) => User.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load users');
  }
}
