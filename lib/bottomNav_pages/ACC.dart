import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bn_acc extends StatefulWidget {
  @override
  State<bn_acc> createState() => _bn_accState();
}

class _bn_accState extends State<bn_acc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        automaticallyImplyLeading: false,
        toolbarHeight: 140,
        title: Center(child: Text(' PROFILE')),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
          ),
        ),
      ),
      backgroundColor: Colors.orange.shade50,
      body: SafeArea(
        child: Column(
          children: [
            profile_options( Icons.logout,'Log-out',),
            profile_options( Icons.star,'Rate-Us',),
            profile_options( Icons.share,'App-Share',),
            profile_options( Icons.email,'ContactUs',),


            ],
        ),
      ),
    );
  }
}

class profile_options extends StatelessWidget {
  profile_options( this.icon,this.opt_name);
  String opt_name;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: (){}, child:Container(
          width: double.infinity,
          height: 40,
          child: Row(
            children: [

              Text(opt_name, style: TextStyle(
                fontSize: 25,
                color: Colors.black
              ),),
              SizedBox(
                width: 15,
              ),
              Icon(icon, color: Colors.orange,),
            ],
          ),
        )),
      ],
    );
  }
}
