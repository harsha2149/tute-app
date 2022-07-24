import 'package:flutter/material.dart';
import 'registration_screen.dart';

class signup extends StatefulWidget {

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Create a new account', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Confirm your password',
              ),
            ),
          ),
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
                    'Create Account',
                    style: TextStyle(color: Colors.white,fontSize: 20),

                  ),
                )),

          ),

        ],
      ),
    );
  }
}
