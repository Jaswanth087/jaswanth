import 'dart:convert';
import 'package:flutter/material.dart';
import 'options.dart';
import 'complete.dart';
import 'package:http/http.dart' as http;
class Homepage extends StatefulWidget{
  const Homepage({Key? key}):super(key: key);
  State createState()=>_HomeState();
}
class _HomeState extends State{
  List responseData=[];
  int number=0;
  Future api() async{
    final response=await http.get(Uri.parse("https://opentdb.com/api.php?amount=10"));
    if(response.statusCode==200){
      var data=jsonDecode(response.body)["results"];
      setState(() {
        responseData=data;
      });
    }
  }
  void initState(){
    super.initState();
    api();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(8),
        child: Column(
          children: [Container(height: 350,width: 430,
            child: Stack(
              children: [
                Container(
                  height: 240,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                Positioned(
                  bottom: 60,
                    left: 22,
                    child: Container(
                      height: 170,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [BoxShadow(
                        offset:(Offset(0,1)),
                          blurRadius: 5,
                          spreadRadius: 3,
                        )]
                      ),
                        child: Padding(padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Column(
                          children: [
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("05"),
                                Text("07"),
                              ],
                            ),
                            Center(
                              child: Text(
                                "Question 3/10"
                              ),
                            ),
                            SizedBox(height: 25,),
                            Text(responseData.isNotEmpty? responseData[number]["question"]:"")
                          ],
                        ),),
                    )),
                Positioned(
                    bottom:210,
                    left:160,
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: Colors.white,
                      child: Text("15",style: TextStyle(fontSize: 25),),
                    )),
              ],
            ),
            ),
            SizedBox(height: 10,),
            Options(option: responseData.isNotEmpty? responseData[number]['correct_answer']:"",),
            Options(option: responseData.isNotEmpty? responseData[number]['incorrect_answers'][0]:"",),
            Options(option: responseData.isNotEmpty? responseData[number]['incorrect_answers'][1]:"",),
            Options(option: responseData.isNotEmpty? responseData[number]['incorrect_answers'][2]:"",),
            SizedBox(height: 10,),
            ElevatedButton(style:ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              )
            ),onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (Context)=>completed()));
            },
                child: Container(width:300,height:50,alignment:Alignment.center,
                    child:Text("Next",
              style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold ),)))
          ],
        ),
      ),
    );
  }
}
