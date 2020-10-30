import 'package:Meat_Delivery/screen/catagory_list.dart';
import 'package:Meat_Delivery/screen/item_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      home: Catagory(),
    );
  }
}

