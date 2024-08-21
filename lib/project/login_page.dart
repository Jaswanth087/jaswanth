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
class Fuddo extends State<MyApp>{
  final formKey=GlobalKey<FormState>();
  final _emailControler=TextEditingController();
  final _passwordControler=TextEditingController();
   String? _Validemail(String? value) {
     if (value == null || value.isEmpty) {
       return "Enter a valid email";
     }
     final pattern ='2022';
     final RegExp regExp = RegExp(pattern);
     if (!regExp.hasMatch(pattern)) {
       return "Enter a valid email";
     }
   }
     String? validpassword(String? value) {
       if (value == null || value.isEmpty) {
         return "Enter a valid password";
       }
       final pattern = "hotel";
       final RegExp regExp = RegExp(pattern);
       if (!regExp.hasMatch(pattern)) {
         return "Enter a valid password";
       }return null;
   }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(child:Padding(
        padding: EdgeInsets.fromLTRB(20,55,20,5),
        child: Form (key:formKey,
    child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child:Column(
                children: [
                  Image.asset("assets/images/fuddo.jpg",scale: 3,),
                  SizedBox(height: 20,),
              Divider(
                color: Colors.red.shade900,  // Color of the line
                thickness: 2,       // Thickness of the line
                indent: 10,         // Left indent
                endIndent: 10,      // Right indent
              ),SizedBox(height: 20,),
                  TextFormField(
                    controller: _emailControler,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_2_outlined,),
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red.shade900,width: 2.0),),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when error
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused and error
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ), validator: _Validemail,
                  ),
                  SizedBox(height: 20,),

                  TextFormField(
                    obscureText: true,
                      controller: _passwordControler,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock,),
                        labelText: "Password",
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.red.shade900,width: 2)),
                        suffixIcon: Icon(Icons.visibility_off),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when error
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red.shade900, width: 2.0), // Border color when focused
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red, width: 2.0), // Border color when focused and error
                            borderRadius: BorderRadius.circular(10.0),
                          )
                      ),
                    validator: validpassword,
                  ),
                  Align(alignment: Alignment.centerRight,
                    child:
                  TextButton(onPressed: (){

                  }, child: Text("Forgot Password?",style: TextStyle(color: Colors.red.shade900,fontSize: 15),))
                  ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: () {
                  if (formKey.currentState!.validate()) {
                    // Handle login logic
                    print('Email: ${_emailControler.text}');
                    print('Password: ${_passwordControler.text}');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => _MyApp()),
                    );
                  }
                },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade900,
                    minimumSize: Size(150, 50),
                    padding: EdgeInsets.symmetric(
                      horizontal: 90,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),)
                ],
              ),
            )
            ],
        ),
      ),
      )
      )
    );
  }
}
class _MyApp extends StatelessWidget{
  String? _selectedValue;

  // The list of items in the dropdown
  final List<String> _dropdownItems = [
    'Choose a restarent',
    'Hotel Mayukha Multi Cuisine Restaurant KPHB',
    '',
    '',
  ];
  Widget build(BuildContext context){
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(backgroundColor: Colors.redAccent  ,
              title: Text("Statistics",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20,),),
            ),
            body: SingleChildScrollView(child:Center(child: Column(children: [
              SizedBox(height: 20,),
              DropdownButton<String>(
                value: _selectedValue,
                hint: Text('Hotel Mayukha Multi Cuisine Restaurent',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),), // Hint text shown when no item is selected
                icon: Icon(Icons.arrow_drop_down), // The dropdown icon
                // The elevation of the dropdown menu
                style: TextStyle(color: Colors.black, fontSize: 16), // Text style inside dropdown
                onChanged: (value){},
                items: _dropdownItems.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20,),
              Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.shopping_bag_outlined,size: 50,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total Sales",style: TextStyle(fontSize: 20),),),
                    Text("473.87",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
              ),Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.people,size: 50,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total Customers",style: TextStyle(fontSize: 20),),),
                    Text("2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],
                ),
              ),
              Container(margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                width: 380,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.receipt_long,size: 50,),
                    SizedBox(width: 16,),Expanded(child:
                    Text("Total orders",style: TextStyle(fontSize: 20),),),
                    Text("6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ],),
              ),SizedBox(height: 165,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 25,
                ),
                label: Text(
                  "BACK TO DASHBOARD",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.all(15),
                  textStyle: TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),

                ),
              ),
              )]
            ),
            )

        )
        ));
  }
}