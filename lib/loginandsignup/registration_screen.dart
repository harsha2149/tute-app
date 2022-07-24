import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/bottomNav_pages/subscription.dart';
import 'package:tute_app/loginandsignup/signup.dart';
import '../forgotpassword.dart';
import '../tuteBody.dart';


class register extends StatefulWidget {

  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            Text('LOGIN', style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
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
              child: Center(
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('i have been pressed');
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return tuteBody();
                }));

              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightGreen.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  margin: EdgeInsets.all(45),
                  height: 50,

                  child: Center(
                    child: Text(
                      'Log-In',
                      style: TextStyle(color: Colors.white,fontSize: 20),

                    ),
                  )),
            ),           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed:()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return signup();
                      }));

                    }, child:Text('Signup')),

                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return forgotpassword();
                  }));
                }, child: Text('Forgot password'))

              ],
            ),

        ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return bn_subs();
          }));
        },
        label: const Text('BUY SUBSCRIPTION'),
        icon: const Icon(CupertinoIcons.money_dollar),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
