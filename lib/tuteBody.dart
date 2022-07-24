import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/bottomNav_pages/ACC.dart';
import 'widgets/SearchBox.dart';
import 'widgets/AddSlider.dart';
import 'widgets/other_options.dart';
import 'widgets/BestDeals.dart';
import 'bottomNav_pages/chat.dart';
import 'bottomNav_pages/notifcation.dart';
import 'bottomNav_pages/subscription.dart';




class tuteBody extends StatefulWidget {

  @override
  _tuteBodyState createState() => _tuteBodyState();
}

class _tuteBodyState extends State<tuteBody> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {

    if(index == 0)
    {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return tuteBody();
        }));
      }
    if(index == 1)
      {
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
      backgroundColor: Colors.white,
      body:SafeArea(
        child: Column(
          children: [
            SearchBox(),
            Container(
              padding: EdgeInsets.all(10),
                child: Text('Courses Available', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold ),)),
            Divider( color: Colors.lightGreen,
              thickness: 3,
              height:10,
              indent: 120,
              endIndent: 50,
              ),
            Divider( color: Colors.amber,
              thickness: 3,
              height: 5,
              indent: 50,
              endIndent: 120,
            ),
            AddSlider(),
            other_options(),
            Text('Todays deals' ,style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold ),),
            Divider( color: Colors.lightGreen,
              thickness: 3,
              height:10,
              indent: 120,
              endIndent: 50,
            ),
            Divider( color: Colors.amber,
              thickness: 3,
              height: 5,
              indent: 50,
              endIndent: 120,
            ),
            Expanded(child: BestDeals()),  

          ],
        ),
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

