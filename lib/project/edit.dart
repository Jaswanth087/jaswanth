import 'package:flutter/material.dart';
void main()=>runApp(App());
class App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
class MyApp extends StatefulWidget{
  State createState()=>Fuddo();
}
class Fuddo extends State {
  String? _selectedValue;

  // The list of items in the dropdown
  final List<String> _dropdownItems = [
    "Pending",
    "Confirmed",
    "Completed",
    "Cancelled",
  ];
  String? _selectedOption = 'Yes';
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(backgroundColor: Colors.red,
        title: Text("Reservation HOT-0000001",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
    ),
    body: SingleChildScrollView(
    child: Column(crossAxisAlignment:CrossAxisAlignment.start,
        children: [
      Container(padding:EdgeInsets.all(10),height: 120,width: 420,color: Colors.orange,
        child:Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
          Text("Comment",style: TextStyle(color: Colors.brown,fontSize: 20,
              fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text("Your order is delievered",style: TextStyle(color: Colors.brown,fontSize: 20,)
            ,)
        ],)
    ),SizedBox(height: 10,),
      Container(padding: EdgeInsets.all(10),
        child:Column(crossAxisAlignment:CrossAxisAlignment.start,
          children: [
          Text("Reservation Status",style: TextStyle(fontSize: 20,),),
          SizedBox(height: 15,),
          Text("Status",style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Container(decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(0),
            ),width: 400,padding: EdgeInsets.fromLTRB(10, 1, 5, 1),
              child: DropdownButton<String>(
                // The currently selected item
                value: _selectedValue,
                // Text to display when nothing is selected
                hint: Text('Confirmed'),
                // List of dropdown items
                items: _dropdownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item,style: TextStyle(fontSize: 20),),
                  );
                }).toList(),
                // What to do when an item is selected
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedValue = newValue;
                  });
                },
              ),
              ),
            Container(padding: EdgeInsets.all(0),
              child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                SizedBox(height: 20,),
                Text("Comment",style: TextStyle(fontSize: 20),),SizedBox(height: 10,),
                Container(height: 80,width: 390,padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(0)
                  ),
                  child: Text(
                    "Your order is delivered"
                  ),
                ),
                  SizedBox(height: 15,),
                  Text("Notify Customer",style: TextStyle(fontSize: 20),),
              ],),
            ),
              ],
            )
            ),

            Container(child:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Radio<String>(
                  value: 'Yes',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                Text('Yes'),
                SizedBox(width: 20), // Add some space between the buttons
                Radio<String>(
                  value: 'No',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedOption = value;
                    });
                  },
                ),
                Text('No'),
              ],
            ),
            ),
          Container(padding: EdgeInsets.all(10),
            child: Text("Reservation",style: TextStyle(fontSize: 25),),
          ),
          Container(padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment:MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [Container(width:190,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Text("Reservation ID#"),
                    Text("HOT-0000001"),
                    SizedBox(height: 20,),
                    Text("Reservation Date"),
                    Text("2024-02-07"),
                    SizedBox(height: 20,),
                    Text("Guest Number"),
                    Text("2 persons(s)"),
                  ],)
              ),
              SizedBox(width: 10,),
              Container(width: 180,
                child: Column(crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text("Reservation ID#"),
                  Text("HOT-0000001"),
                  SizedBox(height: 20,),
                  Text("Reservation Date"),
                  Text("2024-02-07"),
                  SizedBox(height: 20,),
                  Text("Guest Number"),
                  Text("2 persons(s)"),
                ],),
              )
            ],),
          ),
          Divider(
            color: Colors.red.shade100,  // Color of the line
            thickness: 1,       // Thickness of the line
            indent: 10,         // Left indent
            endIndent: 10,      // Right indent
          ),
          Container(padding: EdgeInsets.all(5),
            child: Text("Table Details",style: TextStyle(fontSize: 25),),
          ),
          Container(padding: EdgeInsets.all(10),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
              children: [Container(width:190,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                    Text("Table Name"),
                    Text("Table2"),
                    SizedBox(height: 20,),
                    Text("Table Minimum"),
                    Text("2"),
                  ],)
              ),
                SizedBox(width: 10,),
                Container(width: 180,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.start,children: [
                    Text("Table Capacity"),
                    Text("6"),
                  ],),
                )
              ],),
          ),
          Divider(
            color: Colors.red.shade100,  // Color of the line
            thickness: 1,       // Thickness of the line
            indent: 10,         // Left indent
            endIndent: 10,      // Right indent
          ),
          Container(padding: EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Restaurant Details",style: TextStyle(fontSize: 25),),
                SizedBox(height: 10,),
                Text("Restaurant name"),
                Text("Hotel Mayukha Multi Cusine Restaurant KPHB"),
                SizedBox(height: 10,),
                Text("Restaurant Phone Number"),
                Text("+91-8008222931"),
                SizedBox(height: 10,),
                Text("Restaurant Email"),
                Text("hotelmayukha@gmail.com"),
                SizedBox(height: 10,),
                Text("Restaurant Address"),
                Text("9th Phase Road, Hyderabad -")
              ],
            ),
          ),
          Divider(
            color: Colors.red.shade100,  // Color of the line
            thickness: 1,       // Thickness of the line
            indent: 10,         // Left indent
            endIndent: 10,      // Right indent
          ),
          Container(padding: EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Customer Details",style: TextStyle(fontSize: 25),),
                SizedBox(height: 10,),
                Text("Name"),
                Text("Bhanu Laxman"),
                SizedBox(height: 10,),
                Text("Email"),
                Text("laxman@quadrilite.com"),
                SizedBox(height: 10,),
                Text("Telephone"),
                Text("+91-9392704080"),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border:Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(0)
              ),
              child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:[
                          Text("Status History",style: TextStyle(fontSize: 25),),
                          SizedBox(width: 160,),
                          ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                          ),child: Text("View",style: TextStyle(color: Colors.white,fontSize: 20),))
                        ]),),
                ],)),
        ],)
      )
    );
    }
}