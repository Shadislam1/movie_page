
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text('1st page')),
        //know about deep knowlaged in Drawer()
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[300],
          child: Column(
            children:<Widget> [
              //common to place a drawer place a drawer here
              DrawerHeader(child: Icon(
                Icons.favorite,
                size: 44,
              ),
              ),

              //home page list title 
              ListTile(
                leading: Icon(Icons.home),
                title: Text('H O M E'),
                onTap: () {
                  //go to home page
                  Navigator.pushNamed(context, '/homepage');
                },
              ),

              //setting page list title
                ListTile(
                leading: Icon(Icons.settings),
                title: Text('S E T T I N G'),
                 onTap: () {
                  //go to home page
                  Navigator.pushNamed(context, '/settingpage');
                },
              ),
            ],
          ),

        ),
     
    );
  }
}