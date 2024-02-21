
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:movie_page/pages/home_page.dart';
import 'package:movie_page/pages/profile_page.dart';
import 'package:movie_page/pages/setting_page.dart';


class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
//this keeps track of the current page to display
 int _selectedIndex = 0;

 //this method updates the new selected index
 void _navigaterBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
 }

 //this pages we have our owon page
  final List _pages =[
    //this keeps track of the current page to display

   
    //homepage
    HomePage(),


    //profilepage
    ProfilePage(),


    //settingpage
    SettingPage(),


  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:  Text('1st page')),
        body: _pages[_selectedIndex],

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigaterBottomBar,
        
        items: [

            //home 
         BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'home',
          ),

        //profile
         BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
          ),



            // settings

          BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
          ),

        ],
        
        ) ,





        //know about deep knowlaged in Drawer()
       /* drawer: Drawer(
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

        ), */
     
    );
  }
}