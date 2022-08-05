import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              Text(
                'Contact your required tutor',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              contact_container('Varchas'),
              SizedBox(height: 20),
              contact_container('Harsha'),
              SizedBox(height: 20),
              contact_container('Saikiran'),
              SizedBox(height: 20),
              contact_container('Chaitanya'),
              SizedBox(height: 20),
              contact_container('Nithin'),
              SizedBox(height: 20),
              contact_container('Krishna'),
              SizedBox(height: 20),
              contact_container('Prasad'),
              SizedBox(height: 20),
              contact_container('Gowtham'),
              SizedBox(height: 20),
              contact_container('Mahesh'),
              SizedBox(height: 20),
              contact_container('Jithendra'),
              SizedBox(height: 20),
              contact_container('Sunil'),
              SizedBox(height: 20),
              contact_container('Darsh'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class contact_container extends StatelessWidget {
  contact_container(this.prof_name);
  String prof_name;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 25,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(
                        height: 150,
                        image: AssetImage('images/profile_image.png'),
                      ),
                    ),
                  ),
                  Text(prof_name, style: TextStyle(
                    fontSize: 20
                  ),),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('GRADUATION:- IIT DELHI'),
                  SizedBox(height: 8,),
                  Text('Works at :- RESONANCE'),
                  SizedBox(height: 8,),

                  Text('Expeience:- 15 years'),
                  SizedBox(height: 8,),

                  TextButton(
                    onPressed: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      padding: EdgeInsets.all(15),
                      child: Text(
                        "Email ",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
