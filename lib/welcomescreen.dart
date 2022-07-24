import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tute_app/loginandsignup/registration_screen.dart';

class welcomescreen extends StatefulWidget {

  @override
  _welcomescreenState createState() => _welcomescreenState();
}

class _welcomescreenState extends State<welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Sparkling Star.gif"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('WELCOME to TUTE', style: TextStyle(color: Colors.white, fontSize: 30),),
        TextButton(
        onPressed: () {
    print('i have been pressed');
    Navigator.push(context, MaterialPageRoute(builder: (context){
    return register();
    }));

    },
    child: Container(
    decoration: BoxDecoration(
    color: Colors.brown.shade300,
    borderRadius: BorderRadius.all(Radius.circular(30)),
    ),
    margin: EdgeInsets.all(45),
    height: 50,

    child: Center(
    child: Text(
    'Get started',
    style: TextStyle(color: Colors.white,fontSize: 20),

    ),
    )),
    )
        ],
        ),
      ),
    );


  }
}