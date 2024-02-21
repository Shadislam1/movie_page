
import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('1st page'),
      ),
      body: Center(
        child:TextButton(
         
          child: const Text('Go to second pages'),
           onPressed: () {  

            //navigate to second pages
            Navigator.pushNamed(context,'/secondpage' );
           },
          ) ,
      ),
    );
  }
}