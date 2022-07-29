import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Contacts_details extends StatefulWidget {

  @override
  State<Contacts_details> createState() => _Contacts_detailsState();
}

class _Contacts_detailsState extends State<Contacts_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [

              Text('Contact your required tutor',style: TextStyle(
                fontSize: 30,

              ),),
                contact_info('varchas'),
              contact_info('harsha'),
              contact_info('saikiran'),
              contact_info('chaitanya'),
              contact_info('nithin'),
              contact_info('krishna'),
              contact_info('prasad'),
              contact_info('gowtham'),
              contact_info('mahesh'),
              contact_info('jithendra'),
              contact_info('sunil'),
              contact_info('darsh'),


            ],
          ),
        ),
      ),
    );
  }
}


class contact_info extends StatelessWidget {

  contact_info(this.prof_name);
  String prof_name;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.all(Radius.circular(20)),
        border: Border.all(
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/profile_image.png'),
              ),
              SizedBox(
                width: 30,
              ),
              Text(
                prof_name,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
       SizedBox(
          height: 30,
       ),
       Column(
         children: [
           Row(
             children: [
               Icon(FontAwesomeIcons.phone),
               Text('7990539849')
             ],
           )

         ],
       )
        ],
      ),
    );
  }
}