import 'package:flutter/material.dart';
import 'model.dart'; // Import the model class
import 'fetch data.dart'; // Import the funcSon to fetch data
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: TodoList(),
    );
  }
}
class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: FutureBuilder<List<Todo>>(
        future: fetchtodo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Todo>? todos = snapshot.data;
            return ListView.builder(
              itemCount: todos?.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(todos![index].title),
                  trailing: Icon(
                    todos[index].completed ? Icons.check_circle : Icons.cancel,
                    color: todos[index].completed ? Colors.green : Colors.red,
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }
          // By default, show a loading spinner.
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}