import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MyApp1());
}
class MyApp1 extends StatefulWidget {
  State createState() => _MYAPP();
}
class _MYAPP extends State{
  int Currentindex=1;
  void change(){
    setState(() {
      Currentindex=Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('DICE_APP'),
        ),
        body: Center(
          child: Column(
            children: [
              Image.asset("assets/images/image-$Currentindex.png",height: 500,width: 200,),
              ElevatedButton(
                  onPressed: change,
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent,
                    shadowColor: Colors.grey,
                  ),
                  child: Text("Roll",style: TextStyle(fontSize: 20,color: Colors.white),))
            ],
          )
        ),
      ),
    );
  }
}