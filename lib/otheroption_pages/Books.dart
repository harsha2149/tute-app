import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tute_app/book_suggestions/Jee_books.dart';
import 'package:tute_app/book_suggestions/Aims_books.dart';
import 'package:tute_app/book_suggestions/Neet_books.dart';
import 'package:tute_app/book_suggestions/Upsc_books.dart';


class Books extends StatefulWidget {
  @override
  State<Books> createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen.shade400,
        title: Center(
            child: Text(
          'BOOKS',
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/book_3.jpg'), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Jee_books();
                  }));
                },
                child: book_containers('JEE MAINS', 'images/jee wallpaper.png'),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Neet_books();
                    }));
                  },
                  child: book_containers('NEET', 'images/neet_wallpaper.jpg')),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Upsc_books();
                    }));
                  },
                  child: book_containers('UPSC', 'images/upsc_wallpaper.jpg')),
              TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Aims_books();
                    }));
                  },
                  child: book_containers('AIMS', 'images/aims_wallpaper.jpg')),
            ],
          ),
        ),
      ),
    );
  }
}

class book_containers extends StatelessWidget {
  book_containers(this.name, this.image);
  String name;
  String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
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
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 25, color: Colors.black),
          )
        ],
      ),
    );
  }
}
