import 'package:flutter/material.dart';
void main(){
  runApp(MyApp1());
}
class MyApp1 extends StatefulWidget {
  State createState() => _MYAPP();
}
class _MYAPP extends State{
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('DICE_APP'),
        ),
        body: Container(height: 50,width: 200,
    child:ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),elevation:
                5
            ),
              onPressed:(){}, child: Text("ABC")),
        )
      ),
      );
  }
}