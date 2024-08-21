import 'package:flutter/material.dart';
import 'fetch3.dart';
import 'model3.dart';
void main()=>runApp(App());
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
          title: Text("Json"),
        ),
        body: FutureBuilder<List<page>>(
            future: fetchdata3(),
            builder: (context, snapshot){
              if(snapshot.hasData) {
                List? store = snapshot.data;
                return ListView.builder(
                    itemCount: store!.length,
                    itemBuilder: (context,index){
                      final user=snapshot.data![index];
                      return ListTile(
                        leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar),),
                        title: Text(store[index].email),
                        subtitle: Text("${store[index].first_name} ${store[index].last_name}"),
                      );
                    }
                );
              }else if(!snapshot.hasData){
                return Center(child: Text("Data error"),);
              }
              return (
                  Center(child: CircularProgressIndicator()));
            }
            ),
        );
    }
}