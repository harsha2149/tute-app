import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/bottomNav_pages/ACC.dart';

import '../tuteBody.dart';
import 'chat.dart';

class bn_notification extends StatefulWidget {
  @override
  State<bn_notification> createState() => _bn_notificationState();
}

class _bn_notificationState extends State<bn_notification> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {

    if(index == 0)
    {
      print('i have been called');

      Navigator.push(context, MaterialPageRoute(builder: (context){
        return tuteBody();
      }));
    }
    if(index == 1)
    {
      print('i have been called 2');
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return bn_chat();
      }));
    }
    if(index == 2)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return bn_notification();
      }));
    }
    if( index == 3)
    {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return bn_acc();
      }));
    }
    setState(() {
      _selectedIndex = index;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [

        ],
      ),
        bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),





          child:BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent.shade700,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor:  Colors.amberAccent.shade700,
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                backgroundColor:  Colors.amberAccent.shade700,
                icon: Icon(Icons.notification_important),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                backgroundColor:  Colors.amberAccent.shade700,
                icon: Icon(FontAwesomeIcons.user),
                label: 'Account',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ),
      ),

      );
  }
}
