import 'package:flutter/material.dart';
import 'package:movie_page/pages/first_page.dart';
import 'package:movie_page/pages/second_page.dart';

void main() {
  runApp(const Movepage());
}

class Movepage extends StatelessWidget {
  const Movepage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes:{
        '/firstpage':(context) => FirstPage(),
        '/secondpage':(context) => SecondPage(),
      } ,
      );
    
  }
}