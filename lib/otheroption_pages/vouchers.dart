import 'package:flutter/material.dart';

class vouchers extends StatefulWidget {
  @override
  State<vouchers> createState() => _vouchersState();
}

class _vouchersState extends State<vouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:  AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        automaticallyImplyLeading: false,
        toolbarHeight: 140,
        title: Center(child: Text(' MY REWARDS', style: TextStyle(
          fontSize: 35,
        ),)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
          ),
        ),
      ),
      body:SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(''),
                    )
                  ],
                ),
              )
        ],
      )),
    );
  }
}
