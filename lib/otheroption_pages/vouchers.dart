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
        backgroundColor: Colors.lightGreen.shade400,
        automaticallyImplyLeading: false,
        toolbarHeight: 140,
        title: Center(
            child: Text(
          ' MY REWARDS',
          style: TextStyle(
            fontSize: 35,
          ),
        )),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(100),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            voucher_container(),
            voucher_container(),
            voucher_container(),
            voucher_container(),
            voucher_container(),



          ],
        )),
      ),
    );
  }
}

class voucher_container extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.green,
        elevation: 16,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Wrap(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(10))),
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset('images/offer-wallpaper.png', height: 110,)),
                  Center(
                    child: Text(
                      "Reward received",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text("validity: 14-06-2021 to 14-08-2021 ",
                              style: TextStyle(fontSize: 24))),
                      Expanded(
                          child: TextButton(
                              onPressed: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius:
                                          BorderRadius.circular(5)),
                                  padding: EdgeInsets.all(15),
                                  child: Text("Claim ",
                                      style: TextStyle(fontSize: 24, color: Colors.white)))))
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
