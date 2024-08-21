import 'package:flutter/material.dart';
import 'model1.dart';
import 'fetch_data.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp());
  }
}
class MyApp extends StatefulWidget{
  State createState()=>_MyApp();
}
class _MyApp extends State{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Json_File"),
      ),
      body: FutureBuilder<List<sai>>(
        future: fectdata(),
        builder: (context, snapshot){
          if(snapshot.hasData){
            List<sai>? data=snapshot.data;
            return Card(color:Colors.white,
                child:ListView.builder(
              itemCount: data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].title,style:TextStyle(color: Colors.black,)),
                    subtitle: Text(data[index].body,style: TextStyle(color: Colors.blue),),
                  );
                }
                ));
          };
          return Center(child: CircularProgressIndicator());
    }
      )
    );
  }
}
