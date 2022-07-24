import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/otheroption_pages/Books.dart';
import 'package:tute_app/otheroption_pages/Examdates.dart';
import 'package:tute_app/otheroption_pages/vouchers.dart';

class other_options extends StatelessWidget {
  double width, height = 55.0;
  double customFontSize = 13;
  String defaultFontFamily = 'Roboto-Light.ttf';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color:   Colors.lightGreen.shade400),
                child: TextButton(
                  child: Icon(FontAwesomeIcons.calendar, color: Colors.white,),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Examdates();
                    }));
                  },
      
                )
              ),
              Text(
                "exam dates",
                style: TextStyle(
                    color:Colors.black,
                    fontFamily: 'Roboto-Light.ttf',
                    fontSize: customFontSize),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color:   Colors.lightGreen.shade400),
                child: TextButton(
                  child: Icon(FontAwesomeIcons.book, color: Colors.white,),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Books();
                    }));
                  },

                )
              ),
              Text(
                "Books",
                style: TextStyle(
                    color:Colors.black,
                    fontFamily: defaultFontFamily,
                    fontSize: customFontSize),
              )
            ],
          ),

          Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color:   Colors.lightGreen.shade400),
                child: TextButton(
                  child: Icon(FontAwesomeIcons.gifts, color: Colors.white,),
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return vouchers();
                    }));
                  },

                )
              ),
              Text(
                "Voucher",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: defaultFontFamily,
                    fontSize: customFontSize),
              )
            ],
          )
        ],
      ),
    );
  }
}
