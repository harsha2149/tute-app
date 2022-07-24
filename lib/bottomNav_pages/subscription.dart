import 'package:flutter/material.dart';


class bn_subs extends StatefulWidget {

  @override
  State<bn_subs> createState() => _bn_subsState();
}

class _bn_subsState extends State<bn_subs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/subs_image2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 80,
              ),
              Text('GET SUBSCRIPTION', style: TextStyle(
                fontSize: 30
              ),),
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(child: Container(
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                          border: Border.all( color: Colors.black)
                      ),
                      child: Text('plat plan'),
                    )),
                    SizedBox( width: 10,),
                    Expanded(child: Container(
                      padding: EdgeInsets.all(50),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),

                          border: Border.all( color: Colors.black)
                      ),
                      child: Text('silver plan'),
                    )),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all( color: Colors.black)
                    ),
                    child: Text('Gold plan'),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
