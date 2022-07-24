import 'package:flutter/material.dart';
import 'loginandsignup/registration_screen.dart';

class forgotpassword extends StatefulWidget {

  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('create new password', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,


          ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your registered email id',
              ),
            ),
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              margin: EdgeInsets.all(45),
              height: 50,

              child: Center(
                child: Text(
                  'Send OTP',
                  style: TextStyle(color: Colors.white,fontSize: 20),

                ),
              )),
        ],
      ),
    );
  }
}
