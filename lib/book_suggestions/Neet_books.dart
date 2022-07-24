import 'package:flutter/material.dart';


class Neet_books extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'SUGGESTED BOOKS',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),


            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                book_cont(),
                SizedBox(width: 10,),
                book_cont(),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                book_cont(),
                SizedBox(width: 10,),
                book_cont(),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                book_cont(),
                SizedBox(width: 10,),
                book_cont(),

              ],
            ),

          ],
        ),
      ),
    );
  }
  }



    class book_cont extends StatelessWidget {
    const book_cont({
    Key key,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
    return Expanded(child: Container(
    padding: EdgeInsets.all(50),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),

    border: Border.all( color: Colors.black)
    ),
    child: Text('plat plan'),
    ));
    }
    }

