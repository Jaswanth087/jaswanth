import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget{
  const MyApp2 (this.text,{super.key});
  final String text;
  Widget build(BuildContext context){

    return Text(text,
    style: TextStyle(color: Colors.red),);
  }
}