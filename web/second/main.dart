import 'package:flutter/material.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';
import 'home.dart';
import 'package:flutter/cupertino.dart';
void main() => runApp(MyApp());

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: MyHomePage(),
            );
          }
        }
       
     class MyHomePage extends StatefulWidget {
       @override
       _MyHomePageState createState() => _MyHomePageState();
     }
     
     class _MyHomePageState extends State<MyHomePage> {
       @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
  }
       @override
       Widget build(BuildContext context) {
         return Scaffold(
              body: Center(
                child: SizedBox(
  width: 200.0,
  height: 500.0,
  child: Shimmer.fromColors(
    baseColor: Colors.black,
    highlightColor: Colors.white,
    child: Center(
      child: Container(
       child: Text(
          'Calculator',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight:
            FontWeight.bold,
          ),
        ),
       
      ),
    ),
  ),
),
              ),
         );

            
       }
     }