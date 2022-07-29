import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/bottomNav_pages/subscription.dart';
import 'package:tute_app/contacts/details.dart';
import '../tuteBody.dart';
import 'ACC.dart';
import 'notifcation.dart';

class bn_chat extends StatefulWidget {
  @override
  State<bn_chat> createState() => _bn_chatState();
}

class _bn_chatState extends State<bn_chat> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    if (index == 0) {
      print('i have been called');

      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return tuteBody();
      }));
    }
    if (index == 1) {
      print('i have been called 2');
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return bn_chat();
      }));
    }
    if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return bn_notification();
      }));
    }
    if (index == 3) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
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
      backgroundColor: Colors.orange.shade50,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                height: 35,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.amberAccent.shade700,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Center(
                    child: Text(
                  'Select a sub u need assistance in ',
                  style: TextStyle(fontSize: 20, color: Colors.black),
                )),
              ),
            ),
            SizedBox(height: 30,),
            Text('JEE MAINS & ADVANCED', style: TextStyle(fontSize: 20, color: Colors.lightGreen.shade600),),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: chat_subjCont('MATHS'),
                ),
                Expanded(
                  child: chat_subjCont('PHYSICS'),
                ),
                Expanded(
                  child: chat_subjCont('CHEMISTRY'),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            
            Text('NEET', style: TextStyle(fontSize: 20, color: Colors.lightGreen.shade600),),
            SizedBox(height: 30,),
            Row(
            children: [
              Expanded(
                child: chat_subjCont('BIOLOGY'),
              ),  Expanded(
                child: chat_subjCont('PHYSICS'),
              ),  Expanded(
                child: chat_subjCont('CHEMISTRY'),
              ),  Expanded(
                child: chat_subjCont('ZOOLOGY'),
              ),
            ],

            ),
            SizedBox(
              height: 50,
            ),
            Text('AIMS',style: TextStyle(fontSize: 20, color: Colors.lightGreen.shade600),),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(
                  child: chat_subjCont('BIOLOGY'),
                ),Expanded(
                  child: chat_subjCont('PHYSICS'),
                ),Expanded(
                  child: chat_subjCont('CHEMISTRY'),
                ),Expanded(
                  child: chat_subjCont('GENERAL KNOWLEDGE'),
                ),Expanded(
                  child: chat_subjCont('APTITUDE'),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text('UPSC', style: TextStyle(fontSize: 20,color: Colors.lightGreen),),
           SizedBox(height: 30,),
           Row(
             children: [
               Expanded(
                 child: chat_subjCont('GENERAL STUDIES'),
               ),Expanded(
                 child: chat_subjCont('ESSAY'),
               ),Expanded(
                 child: chat_subjCont('ENGLISH'),
               ),Expanded(
                 child: chat_subjCont('INDIAN LANGUAGES'),
               ),
             ],
           ),

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
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent.shade700,
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent.shade700,
                icon: Icon(Icons.chat),
                label: 'Chat',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent.shade700,
                icon: Icon(Icons.notification_important),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.amberAccent.shade700,
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

class chat_subjCont extends StatelessWidget {
  chat_subjCont(this.sub_name);

  String sub_name;


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return Contacts_details();
        }));
      },
      child: Container(
      child: Column(
        children: [
          CircleAvatar(
            radius: 45,
          ),
          Text(sub_name)
        ],
      ),
    ),);
  }
}


