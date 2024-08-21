import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Open Trivia API'),
        ),
        body: TriviaQuestions(),
      ),
    );
  }
}

class TriviaQuestions extends StatefulWidget {
  @override
  _TriviaQuestionsState createState() => _TriviaQuestionsState();
}

class _TriviaQuestionsState extends State<TriviaQuestions> {
  List<dynamic> questions = [];

  @override
  void initState() {
    super.initState();
    fetchTriviaQuestions();
  }

  Future<void> fetchTriviaQuestions() async {
    final url = Uri.parse('https://opentdb.com/api.php?amount=10');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          questions = data['results'];
        });
      } else {
        throw Exception('Failed to load trivia questions');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: questions.length,
      itemBuilder: (context, index) {
        final question = questions[index];
        return ListTile(
          title: Text(question['question']),
          subtitle: Text('Category: ${question['category']}'),
        );
      },
    );
  }
}
