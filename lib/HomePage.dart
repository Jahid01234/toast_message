import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget{
  State<HomePage> createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Toast Message'),
       centerTitle: true,
       backgroundColor:  Colors.teal,
     ),
     body: Center(
       child: TextButton(
         child: Text("Click Me"),
         onPressed: (){

           Fluttertoast.showToast
             (
               msg: "This is Toast",
               toastLength: Toast.LENGTH_LONG,
               gravity: ToastGravity.BOTTOM_RIGHT,
               backgroundColor: Colors.deepOrange,
               timeInSecForIosWeb: 3,
               textColor: Colors.white,
               fontSize: 15

             );
         },
       ),
     ),

   );
  }

}