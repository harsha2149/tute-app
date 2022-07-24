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
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title:  Center(child: Text('VOUCHERS', style: TextStyle(
            fontSize: 25
        ),)),
      ),
      body:SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text('vouchers')),
          )
        ],
      )),
    );
  }
}
