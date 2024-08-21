import 'package:flutter/material.dart';
import 'model2.dart';
import 'fetchdata2.dart';
void main()=> runApp(App());
class App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget{
  State createState()=>_MyApp();
}
class _MyApp extends State{
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Json_Example"),
        ),
        body: FutureBuilder<List<Model>>(
            future: fetchAlbums(),
            builder: (context,snapshot){
              if(snapshot.hasData){
                List? data1=snapshot.data;
                return ListView.builder(
                    itemCount: data1?.length,
                    itemBuilder: (context,index){
                      return ListTile(
                        title: Text(data1![index].title,style: TextStyle(color: Colors.deepPurpleAccent),),
                        subtitle: Text(data1![index].body,style: TextStyle(color: Colors.pinkAccent),),
                      );
                    }
                );
              }else if(!snapshot.hasData){
                return Center(child: Text("Snapchat error"),);
              }return
                Center(child: CircularProgressIndicator(),
                );
            },
            ),
        );
    }
}